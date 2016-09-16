// Copyright (c) 1999-2004 Brian Wellington (bwelling@xbill.org)

package org.xbill.DNS;

import java.io.IOException;
import java.io.InterruptedIOException;
import java.net.SocketException;
import java.net.UnknownHostException;
import java.util.ArrayList;
import java.util.List;

// TODO: Auto-generated Javadoc
/**
 * An implementation of Resolver that can send queries to multiple servers,
 * sending the queries multiple times if necessary.
 * 
 * @see Resolver
 * 
 * @author Brian Wellington
 */

public class ExtendedResolver implements Resolver {

	/**
	 * The Class Resolution.
	 */
	private static class Resolution implements ResolverListener {

		/** The resolvers. */
		Resolver[] resolvers;

		/** The sent. */
		int[] sent;

		/** The inprogress. */
		Object[] inprogress;

		/** The retries. */
		int retries;

		/** The outstanding. */
		int outstanding;

		/** The done. */
		boolean done;

		/** The query. */
		Message query;

		/** The response. */
		Message response;

		/** The thrown. */
		Throwable thrown;

		/** The listener. */
		ResolverListener listener;

		/**
		 * Instantiates a new resolution.
		 * 
		 * @param eres
		 *            the eres
		 * @param query
		 *            the query
		 */
		public Resolution(ExtendedResolver eres, Message query) {
			List l = eres.resolvers;
			resolvers = (Resolver[]) l.toArray(new Resolver[l.size()]);
			if (eres.loadBalance) {
				int nresolvers = resolvers.length;
				/*
				 * Note: this is not synchronized, since the worst thing that
				 * can happen is a random ordering, which is ok.
				 */
				int start = eres.lbStart++ % nresolvers;
				if (eres.lbStart > nresolvers)
					eres.lbStart %= nresolvers;
				if (start > 0) {
					Resolver[] shuffle = new Resolver[nresolvers];
					for (int i = 0; i < nresolvers; i++) {
						int pos = (i + start) % nresolvers;
						shuffle[i] = resolvers[pos];
					}
					resolvers = shuffle;
				}
			}
			sent = new int[resolvers.length];
			inprogress = new Object[resolvers.length];
			retries = eres.retries;
			this.query = query;
		}

		/* Asynchronously sends a message. */
		/**
		 * Send.
		 * 
		 * @param n
		 *            the n
		 */
		public void send(int n) {
			sent[n]++;
			outstanding++;
			try {
				inprogress[n] = resolvers[n].sendAsync(query, this);
			} catch (Throwable t) {
				synchronized (this) {
					thrown = t;
					done = true;
					if (listener == null) {
						notifyAll();
						return;
					}
				}
			}
		}

		/* Start a synchronous resolution */
		/**
		 * Start.
		 * 
		 * @return the message
		 * @throws IOException
		 *             Signals that an I/O exception has occurred.
		 */
		public Message start() throws IOException {
			try {
				/*
				 * First, try sending synchronously. If this works, we're done.
				 * Otherwise, we'll get an exception and continue. It would be
				 * easier to call send(0), but this avoids a thread creation. If
				 * and when SimpleResolver.sendAsync() can be made to not create
				 * a thread, this could be changed.
				 */
				sent[0]++;
				outstanding++;
				inprogress[0] = new Object();
				return resolvers[0].send(query);
			} catch (Exception e) {
				/*
				 * This will either cause more queries to be sent asynchronously
				 * or will set the 'done' flag.
				 */
				handleException(inprogress[0], e);
			}
			/*
			 * Wait for a successful response or for each subresolver to fail.
			 */
			synchronized (this) {
				while (!done) {
					try {
						wait();
					} catch (InterruptedException e) {
					}
				}
			}
			/* Return the response or throw an exception */
			if (response != null)
				return response;
			else if (thrown instanceof IOException)
				throw (IOException) thrown;
			else if (thrown instanceof RuntimeException)
				throw (RuntimeException) thrown;
			else if (thrown instanceof Error)
				throw (Error) thrown;
			else
				throw new IllegalStateException("ExtendedResolver failure");
		}

		/* Start an asynchronous resolution */
		/**
		 * Start async.
		 * 
		 * @param listener
		 *            the listener
		 */
		public void startAsync(ResolverListener listener) {
			this.listener = listener;
			send(0);
		}

		/*
		 * Receive a response. If the resolution hasn't been completed, either
		 * wake up the blocking thread or call the callback.
		 */
		/*
		 * (non-Javadoc)
		 * 
		 * @see org.xbill.DNS.ResolverListener#receiveMessage(java.lang.Object,
		 * org.xbill.DNS.Message)
		 */
		public void receiveMessage(Object id, Message m) {
			if (Options.check("verbose"))
				System.err.println("ExtendedResolver: " + "received message");
			synchronized (this) {
				if (done)
					return;
				response = m;
				done = true;
				if (listener == null) {
					notifyAll();
					return;
				}
			}
			listener.receiveMessage(this, response);
		}

		/*
		 * Receive an exception. If the resolution has been completed, do
		 * nothing. Otherwise make progress.
		 */
		/*
		 * (non-Javadoc)
		 * 
		 * @see org.xbill.DNS.ResolverListener#handleException(java.lang.Object,
		 * java.lang.Exception)
		 */
		public void handleException(Object id, Exception e) {
			if (Options.check("verbose"))
				System.err.println("ExtendedResolver: got " + e);
			synchronized (this) {
				outstanding--;
				if (done)
					return;
				int n;
				for (n = 0; n < inprogress.length; n++)
					if (inprogress[n] == id)
						break;
				/* If we don't know what this is, do nothing. */
				if (n == inprogress.length)
					return;
				boolean startnext = false;
				/*
				 * If this is the first response from server n, we should start
				 * sending queries to server n + 1.
				 */
				if (sent[n] == 1 && n < resolvers.length - 1)
					startnext = true;
				if (e instanceof InterruptedIOException) {
					/* Got a timeout; resend */
					if (sent[n] < retries)
						send(n);
					if (thrown == null)
						thrown = e;
				} else if (e instanceof SocketException) {
					/*
					 * Problem with the socket; don't resend on it
					 */
					if (thrown == null
							|| thrown instanceof InterruptedIOException)
						thrown = e;
				} else {
					/*
					 * Problem with the response; don't resend on the same
					 * socket.
					 */
					thrown = e;
				}
				if (done)
					return;
				if (startnext)
					send(n + 1);
				if (done)
					return;
				if (outstanding == 0) {
					/*
					 * If we're done and this is synchronous, wake up the
					 * blocking thread.
					 */
					done = true;
					if (listener == null) {
						notifyAll();
						return;
					}
				}
				if (!done)
					return;
			}
			/* If we're done and this is asynchronous, call the callback. */
			if (!(thrown instanceof Exception))
				thrown = new RuntimeException(thrown.getMessage());
			listener.handleException(this, (Exception) thrown);
		}
	}

	/** The Constant quantum. */
	private static final int quantum = 5;

	/** The resolvers. */
	private List resolvers;

	/** The load balance. */
	private boolean loadBalance = false;

	/** The lb start. */
	private int lbStart = 0;

	/** The retries. */
	private int retries = 3;

	/**
	 * Inits the.
	 */
	private void init() {
		resolvers = new ArrayList();
	}

	/**
	 * Creates a new Extended Resolver. The default ResolverConfig is used to
	 * determine the servers for which SimpleResolver contexts should be
	 * initialized.
	 * 
	 * @throws UnknownHostException
	 *             Failure occured initializing SimpleResolvers
	 * @see SimpleResolver
	 * @see ResolverConfig
	 */
	public ExtendedResolver() throws UnknownHostException {
		init();
		String[] servers = ResolverConfig.getCurrentConfig().servers();
		if (servers != null) {
			for (int i = 0; i < servers.length; i++) {
				Resolver r = new SimpleResolver(servers[i]);
				r.setTimeout(quantum);
				resolvers.add(r);
			}
		} else
			resolvers.add(new SimpleResolver());
	}

	/**
	 * Creates a new Extended Resolver.
	 * 
	 * @param servers
	 *            An array of server names for which SimpleResolver contexts
	 *            should be initialized.
	 * @throws UnknownHostException
	 *             Failure occured initializing SimpleResolvers
	 * @see SimpleResolver
	 */
	public ExtendedResolver(String[] servers) throws UnknownHostException {
		init();
		for (int i = 0; i < servers.length; i++) {
			Resolver r = new SimpleResolver(servers[i]);
			r.setTimeout(quantum);
			resolvers.add(r);
		}
	}

	/**
	 * Creates a new Extended Resolver.
	 * 
	 * @param res
	 *            An array of pre-initialized Resolvers is provided.
	 * @throws UnknownHostException
	 *             Failure occured initializing SimpleResolvers
	 * @see SimpleResolver
	 */
	public ExtendedResolver(Resolver[] res) throws UnknownHostException {
		init();
		for (int i = 0; i < res.length; i++)
			resolvers.add(res[i]);
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see org.xbill.DNS.Resolver#setPort(int)
	 */
	public void setPort(int port) {
		for (int i = 0; i < resolvers.size(); i++)
			((Resolver) resolvers.get(i)).setPort(port);
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see org.xbill.DNS.Resolver#setTCP(boolean)
	 */
	public void setTCP(boolean flag) {
		for (int i = 0; i < resolvers.size(); i++)
			((Resolver) resolvers.get(i)).setTCP(flag);
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see org.xbill.DNS.Resolver#setIgnoreTruncation(boolean)
	 */
	public void setIgnoreTruncation(boolean flag) {
		for (int i = 0; i < resolvers.size(); i++)
			((Resolver) resolvers.get(i)).setIgnoreTruncation(flag);
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see org.xbill.DNS.Resolver#setEDNS(int)
	 */
	public void setEDNS(int level) {
		for (int i = 0; i < resolvers.size(); i++)
			((Resolver) resolvers.get(i)).setEDNS(level);
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see org.xbill.DNS.Resolver#setEDNS(int, int, int, java.util.List)
	 */
	public void setEDNS(int level, int payloadSize, int flags, List options) {
		for (int i = 0; i < resolvers.size(); i++)
			((Resolver) resolvers.get(i)).setEDNS(level, payloadSize, flags,
					options);
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see org.xbill.DNS.Resolver#setTSIGKey(org.xbill.DNS.TSIG)
	 */
	public void setTSIGKey(TSIG key) {
		for (int i = 0; i < resolvers.size(); i++)
			((Resolver) resolvers.get(i)).setTSIGKey(key);
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see org.xbill.DNS.Resolver#setTimeout(int, int)
	 */
	public void setTimeout(int secs, int msecs) {
		for (int i = 0; i < resolvers.size(); i++)
			((Resolver) resolvers.get(i)).setTimeout(secs, msecs);
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see org.xbill.DNS.Resolver#setTimeout(int)
	 */
	public void setTimeout(int secs) {
		setTimeout(secs, 0);
	}

	/**
	 * Sends a message and waits for a response. Multiple servers are queried,
	 * and queries are sent multiple times until either a successful response is
	 * received, or it is clear that there is no successful response.
	 * 
	 * @param query
	 *            The query to send.
	 * @return The response.
	 * @throws IOException
	 *             An error occurred while sending or receiving.
	 */
	public Message send(Message query) throws IOException {
		Resolution res = new Resolution(this, query);
		return res.start();
	}

	/**
	 * Asynchronously sends a message to multiple servers, potentially multiple
	 * times, registering a listener to receive a callback on success or
	 * exception. Multiple asynchronous lookups can be performed in parallel.
	 * Since the callback may be invoked before the function returns, external
	 * synchronization is necessary.
	 * 
	 * @param query
	 *            The query to send
	 * @param listener
	 *            The object containing the callbacks.
	 * @return An identifier, which is also a parameter in the callback
	 */
	public Object sendAsync(final Message query, final ResolverListener listener) {
		Resolution res = new Resolution(this, query);
		res.startAsync(listener);
		return res;
	}

	/**
	 * Returns the nth resolver used by this ExtendedResolver.
	 * 
	 * @param n
	 *            the n
	 * @return the resolver
	 */
	public Resolver getResolver(int n) {
		if (n < resolvers.size())
			return (Resolver) resolvers.get(n);
		return null;
	}

	/**
	 * Returns all resolvers used by this ExtendedResolver.
	 * 
	 * @return the resolvers
	 */
	public Resolver[] getResolvers() {
		return (Resolver[]) resolvers.toArray(new Resolver[resolvers.size()]);
	}

	/**
	 * Adds a new resolver to be used by this ExtendedResolver.
	 * 
	 * @param r
	 *            the r
	 */
	public void addResolver(Resolver r) {
		resolvers.add(r);
	}

	/**
	 * Deletes a resolver used by this ExtendedResolver.
	 * 
	 * @param r
	 *            the r
	 */
	public void deleteResolver(Resolver r) {
		resolvers.remove(r);
	}

	/**
	 * Sets whether the servers should be load balanced.
	 * 
	 * @param flag
	 *            If true, servers will be tried in round-robin order. If false,
	 *            servers will always be queried in the same order.
	 */
	public void setLoadBalance(boolean flag) {
		loadBalance = flag;
	}

	/**
	 * Sets the number of retries sent to each server per query.
	 * 
	 * @param retries
	 *            the new retries
	 */
	public void setRetries(int retries) {
		this.retries = retries;
	}

}
