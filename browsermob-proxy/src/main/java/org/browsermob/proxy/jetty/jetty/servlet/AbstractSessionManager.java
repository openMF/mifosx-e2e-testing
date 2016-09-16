// ========================================================================
// $Id: AbstractSessionManager.java,v 1.53 2006/11/22 20:01:10 gregwilkins Exp $
// Copyright 199-2004 Mort Bay Consulting Pty. Ltd.
// ------------------------------------------------------------------------
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at 
// http://www.apache.org/licenses/LICENSE-2.0
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.
// ========================================================================

package org.browsermob.proxy.jetty.jetty.servlet;

import org.apache.commons.logging.Log;
import org.browsermob.proxy.jetty.http.HttpOnlyCookie;
import org.browsermob.proxy.jetty.log.LogFactory;
import org.browsermob.proxy.jetty.util.LazyList;
import org.browsermob.proxy.jetty.util.LogSupport;
import org.browsermob.proxy.jetty.util.MultiMap;

import javax.servlet.ServletContext;
import javax.servlet.http.*;
import java.security.NoSuchAlgorithmException;
import java.security.SecureRandom;
import java.util.*;

// TODO: Auto-generated Javadoc
/* ------------------------------------------------------------ */
/**
 * An Abstract implementation of SessionManager. The partial implementation of
 * SessionManager interface provides the majority of the handling required to
 * implement a SessionManager. Concrete implementations of SessionManager based
 * on AbstractSessionManager need only implement the newSession method to return
 * a specialized version of the Session inner class that provides an attribute
 * Map.
 * <p>
 * If the property
 * org.mortbay.jetty.servlet.AbstractSessionManager.23Notifications is set to
 * true, the 2.3 servlet spec notification style will be used.
 * <p>
 * 
 * @version $Id: AbstractSessionManager.java,v 1.53 2006/11/22 20:01:10
 *          gregwilkins Exp $
 * @author Greg Wilkins (gregw)
 */
public abstract class AbstractSessionManager implements SessionManager {

	/** The log. */
	private static Log log = LogFactory.getLog(AbstractSessionManager.class);

	/* ------------------------------------------------------------ */
	/** The Constant __distantFuture. */
	public final static int __distantFuture = 60 * 60 * 24 * 7 * 52 * 20;

	/** The Constant __NEW_SESSION_ID. */
	private final static String __NEW_SESSION_ID = "org.browsermob.proxy.jetty.jetty.newSessionId";

	/* ------------------------------------------------------------ */
	/* global Map of ID to session */
	/** The __all sessions. */
	protected static MultiMap __allSessions = new MultiMap();

	/* ------------------------------------------------------------ */
	// Setting of max inactive interval for new sessions
	// -1 means no timeout
	/** The _dft max idle secs. */
	private int _dftMaxIdleSecs = -1;

	/** The _scavenge period ms. */
	private int _scavengePeriodMs = 30000;

	/** The _worker name. */
	private String _workerName;

	/** The _session listeners. */
	protected transient ArrayList _sessionListeners = new ArrayList();

	/** The _session attribute listeners. */
	protected transient ArrayList _sessionAttributeListeners = new ArrayList();

	/** The _sessions. */
	protected transient Map _sessions;

	/** The _random. */
	protected transient Random _random;

	/** The _weak random. */
	protected transient boolean _weakRandom;

	/** The _handler. */
	protected transient ServletHandler _handler;

	/** The _min sessions. */
	protected int _minSessions = 0;

	/** The _max sessions. */
	protected int _maxSessions = 0;

	/** The _cross context session i ds. */
	protected boolean _crossContextSessionIDs = false;

	/** The _secure cookies. */
	protected boolean _secureCookies = false;

	/** The _http only. */
	protected boolean _httpOnly = false;

	/** The _invalidate global. */
	protected boolean _invalidateGlobal = true;

	/** The _scavenger. */
	private transient SessionScavenger _scavenger = null;

	/* ------------------------------------------------------------ */
	/**
	 * Instantiates a new abstract session manager.
	 */
	public AbstractSessionManager() {
		this(null);
	}

	/* ------------------------------------------------------------ */
	/**
	 * Instantiates a new abstract session manager.
	 * 
	 * @param random
	 *            the random
	 */
	public AbstractSessionManager(Random random) {
		_random = random;
		_weakRandom = false;
	}

	/* ------------------------------------------------------------ */
	/**
	 * Gets the use requested id.
	 * 
	 * @return True if requested session ID are first considered for new
	 * @deprecated use getCrossContextSessionIDs session IDs
	 */
	public boolean getUseRequestedId() {
		return _crossContextSessionIDs;
	}

	/* ------------------------------------------------------------ */
	/**
	 * Set Use Requested ID.
	 * 
	 * @param useRequestedId
	 *            True if requested session ID are first considered for new
	 * @deprecated use setCrossContextSessionIDs session IDs
	 */
	public void setUseRequestedId(boolean useRequestedId) {
		_crossContextSessionIDs = useRequestedId;
	}

	/* ------------------------------------------------------------ */
	/**
	 * Gets the cross context session i ds.
	 * 
	 * @return True if cross context session IDs are first considered for new
	 *         session IDs
	 */
	public boolean getCrossContextSessionIDs() {
		return _crossContextSessionIDs;
	}

	/* ------------------------------------------------------------ */
	/**
	 * Set Cross Context sessions IDs This option activates a mode where a
	 * requested session ID can be used to create a new session. This
	 * facilitates the sharing of session cookies when cross context dispatches
	 * use sessions.
	 * 
	 * @param useRequestedId
	 *            True if cross context session ID are first considered for new
	 *            session IDs
	 */
	public void setCrossContextSessionIDs(boolean useRequestedId) {
		_crossContextSessionIDs = useRequestedId;
	}

	/* ------------------------------------------------------------ */
	/*
	 * (non-Javadoc)
	 * 
	 * @see
	 * org.browsermob.proxy.jetty.jetty.servlet.SessionManager#initialize(org
	 * .browsermob.proxy.jetty.jetty.servlet.ServletHandler)
	 */
	public void initialize(ServletHandler handler) {
		_handler = handler;
	}

	/* ------------------------------------------------------------ */
	/**
	 * Gets the session map.
	 * 
	 * @return the session map
	 */
	public Map getSessionMap() {
		return Collections.unmodifiableMap(_sessions);
	}

	/* ------------------------------------------------------------ */
	/**
	 * Gets the sessions.
	 * 
	 * @return the sessions
	 */
	public int getSessions() {
		return _sessions.size();
	}

	/* ------------------------------------------------------------ */
	/**
	 * Gets the min sessions.
	 * 
	 * @return the min sessions
	 */
	public int getMinSessions() {
		return _minSessions;
	}

	/* ------------------------------------------------------------ */
	/**
	 * Gets the max sessions.
	 * 
	 * @return the max sessions
	 */
	public int getMaxSessions() {
		return _maxSessions;
	}

	/* ------------------------------------------------------------ */
	/**
	 * Reset stats.
	 */
	public void resetStats() {
		_minSessions = _sessions.size();
		_maxSessions = _sessions.size();
	}

	/* ------------------------------------------------------------ */
	/*
	 * new Session ID. If the request has a requestedSessionID which is unique,
	 * that is used. The session ID is created as a unique random long base 36.
	 * If the request has a jvmRoute attribute, that is appended as a worker
	 * tag, else any worker tag set on the manager is appended.
	 * 
	 * @param request
	 * 
	 * @param created
	 * 
	 * @return Session ID.
	 */
	/**
	 * New session id.
	 * 
	 * @param request
	 *            the request
	 * @param created
	 *            the created
	 * @return the string
	 */
	private String newSessionId(HttpServletRequest request, long created) {
		synchronized (__allSessions) {
			// A requested session ID can only be used if it is in the global
			// map of
			// ID but not in this contexts map. Ie it is an ID in use by another
			// context
			// in this server and thus we are doing a cross context dispatch.
			if (_crossContextSessionIDs) {
				String requested_id = (String) request
						.getAttribute(__NEW_SESSION_ID);
				if (requested_id == null)
					requested_id = request.getRequestedSessionId();
				if (requested_id != null && requested_id != null
						&& __allSessions.containsKey(requested_id)
						&& !_sessions.containsKey(requested_id))
					return requested_id;
			}

			// pick a new unique ID!
			String id = null;
			while (id == null || id.length() == 0
					|| __allSessions.containsKey(id)) {
				long r = _weakRandom ? (hashCode()
						^ Runtime.getRuntime().freeMemory() ^ _random.nextInt() ^ (((long) request
						.hashCode()) << 32)) : _random.nextLong();
				r ^= created;
				if (request != null && request.getRemoteAddr() != null)
					r ^= request.getRemoteAddr().hashCode();
				if (r < 0)
					r = -r;
				id = Long.toString(r, 36);

				String worker = (String) request
						.getAttribute("org.browsermob.proxy.jetty.http.ajp.JVMRoute");
				if (worker != null)
					id += "." + worker;
				else if (_workerName != null)
					id += "." + _workerName;
			}
			return id;
		}
	}

	/* ------------------------------------------------------------ */
	/*
	 * (non-Javadoc)
	 * 
	 * @see
	 * org.browsermob.proxy.jetty.jetty.servlet.SessionManager#getHttpSession
	 * (java.lang.String)
	 */
	public HttpSession getHttpSession(String id) {
		synchronized (this) {
			return (HttpSession) _sessions.get(id);
		}
	}

	/* ------------------------------------------------------------ */
	/*
	 * (non-Javadoc)
	 * 
	 * @see
	 * org.browsermob.proxy.jetty.jetty.servlet.SessionManager#newHttpSession
	 * (javax.servlet.http.HttpServletRequest)
	 */
	public HttpSession newHttpSession(HttpServletRequest request) {
		Session session = newSession(request);
		session.setMaxInactiveInterval(_dftMaxIdleSecs);
		synchronized (__allSessions) {
			synchronized (this) {
				_sessions.put(session.getId(), session);
				__allSessions.add(session.getId(), session);
				if (_sessions.size() > this._maxSessions)
					this._maxSessions = _sessions.size();
			}
		}

		HttpSessionEvent event = new HttpSessionEvent(session);

		for (int i = 0; i < _sessionListeners.size(); i++)
			((HttpSessionListener) _sessionListeners.get(i))
					.sessionCreated(event);

		if (getCrossContextSessionIDs())
			request.setAttribute(__NEW_SESSION_ID, session.getId());
		return session;
	}

	/* ------------------------------------------------------------ */
	/*
	 * (non-Javadoc)
	 * 
	 * @see
	 * org.browsermob.proxy.jetty.jetty.servlet.SessionManager#getSessionCookie
	 * (javax.servlet.http.HttpSession, boolean)
	 */
	public Cookie getSessionCookie(HttpSession session, boolean requestIsSecure) {
		if (_handler.isUsingCookies()) {
			Cookie cookie = _handler.getSessionManager().getHttpOnly() ? new HttpOnlyCookie(
					SessionManager.__SessionCookie, session.getId())
					: new Cookie(SessionManager.__SessionCookie,
							session.getId());
			String domain = _handler.getServletContext().getInitParameter(
					SessionManager.__SessionDomain);
			String maxAge = _handler.getServletContext().getInitParameter(
					SessionManager.__MaxAge);
			String path = _handler.getServletContext().getInitParameter(
					SessionManager.__SessionPath);
			if (path == null)
				path = getCrossContextSessionIDs() ? "/" : _handler
						.getHttpContext().getContextPath();
			if (path == null || path.length() == 0)
				path = "/";

			if (domain != null)
				cookie.setDomain(domain);
			if (maxAge != null)
				cookie.setMaxAge(Integer.parseInt(maxAge));
			else
				cookie.setMaxAge(-1);

			cookie.setSecure(requestIsSecure && getSecureCookies());
			cookie.setPath(path);

			return cookie;
		}
		return null;
	}

	/* ------------------------------------------------------------ */
	/**
	 * New session.
	 * 
	 * @param request
	 *            the request
	 * @return the session
	 */
	protected abstract Session newSession(HttpServletRequest request);

	/* ------------------------------------------------------------ */
	/**
	 * Get the workname. If set, the workername is dot appended to the session
	 * ID and can be used to assist session affinity in a load balancer.
	 * 
	 * @return String or null
	 */
	public String getWorkerName() {
		return _workerName;
	}

	/* ------------------------------------------------------------ */
	/**
	 * Set the workname. If set, the workername is dot appended to the session
	 * ID and can be used to assist session affinity in a load balancer.
	 * 
	 * @param workerName
	 *            the new worker name
	 */
	public void setWorkerName(String workerName) {
		_workerName = workerName;
	}

	/* ------------------------------------------------------------ */
	/**
	 * Gets the max inactive interval.
	 * 
	 * @return seconds
	 */
	public int getMaxInactiveInterval() {
		return _dftMaxIdleSecs;
	}

	/* ------------------------------------------------------------ */
	/**
	 * Sets the max inactive interval.
	 * 
	 * @param seconds
	 *            the new max inactive interval
	 */
	public void setMaxInactiveInterval(int seconds) {
		_dftMaxIdleSecs = seconds;
		if (_dftMaxIdleSecs > 0 && _scavengePeriodMs > _dftMaxIdleSecs * 100)
			setScavengePeriod((_dftMaxIdleSecs + 9) / 10);
	}

	/* ------------------------------------------------------------ */
	/**
	 * Gets the scavenge period.
	 * 
	 * @return seconds
	 */
	public int getScavengePeriod() {
		return _scavengePeriodMs / 1000;
	}

	/* ------------------------------------------------------------ */
	/**
	 * Sets the scavenge period.
	 * 
	 * @param seconds
	 *            the new scavenge period
	 */
	public void setScavengePeriod(int seconds) {
		if (seconds == 0)
			seconds = 60;

		int old_period = _scavengePeriodMs;
		int period = seconds * 1000;
		if (period > 60000)
			period = 60000;
		if (period < 1000)
			period = 1000;

		if (period != old_period) {
			synchronized (this) {
				_scavengePeriodMs = period;
				if (_scavenger != null)
					_scavenger.interrupt();
			}
		}
	}

	/* ------------------------------------------------------------ */
	/**
	 * Gets the http only.
	 * 
	 * @return Returns the httpOnly.
	 */
	public boolean getHttpOnly() {
		return _httpOnly;
	}

	/* ------------------------------------------------------------ */
	/**
	 * Sets the http only.
	 * 
	 * @param httpOnly
	 *            The httpOnly to set.
	 */
	public void setHttpOnly(boolean httpOnly) {
		_httpOnly = httpOnly;
	}

	/* ------------------------------------------------------------ */
	/**
	 * Gets the secure cookies.
	 * 
	 * @return Returns the secureCookies.
	 */
	public boolean getSecureCookies() {
		return _secureCookies;
	}

	/* ------------------------------------------------------------ */
	/**
	 * Sets the secure cookies.
	 * 
	 * @param secureCookies
	 *            The secureCookies to set.
	 */
	public void setSecureCookies(boolean secureCookies) {
		_secureCookies = secureCookies;
	}

	/* ------------------------------------------------------------ */
	/**
	 * Checks if is invalidate global.
	 * 
	 * @return true, if is invalidate global
	 */
	public boolean isInvalidateGlobal() {
		return _invalidateGlobal;
	}

	/* ------------------------------------------------------------ */
	/**
	 * Sets the invalidate global.
	 * 
	 * @param global
	 *            True if session invalidation should be global. ie Sessions in
	 *            other contexts with the same ID (linked by cross context
	 *            dispatch or shared session cookie) are invalidated as a group.
	 */
	public void setInvalidateGlobal(boolean global) {
		_invalidateGlobal = global;
	}

	/* ------------------------------------------------------------ */
	/*
	 * (non-Javadoc)
	 * 
	 * @see
	 * org.browsermob.proxy.jetty.jetty.servlet.SessionManager#addEventListener
	 * (java.util.EventListener)
	 */
	public void addEventListener(EventListener listener)
			throws IllegalArgumentException {

		if (listener instanceof HttpSessionAttributeListener)
			_sessionAttributeListeners.add(listener);
		if (listener instanceof HttpSessionListener)
			_sessionListeners.add(listener);
	}

	/* ------------------------------------------------------------ */
	/*
	 * (non-Javadoc)
	 * 
	 * @see
	 * org.browsermob.proxy.jetty.jetty.servlet.SessionManager#removeEventListener
	 * (java.util.EventListener)
	 */
	public void removeEventListener(EventListener listener) {
		if (listener instanceof HttpSessionAttributeListener)
			_sessionAttributeListeners.remove(listener);
		if (listener instanceof HttpSessionListener)
			_sessionListeners.remove(listener);
	}

	/* ------------------------------------------------------------ */
	/*
	 * (non-Javadoc)
	 * 
	 * @see org.browsermob.proxy.jetty.util.LifeCycle#isStarted()
	 */
	public boolean isStarted() {
		return _scavenger != null;
	}

	/* ------------------------------------------------------------ */
	/*
	 * (non-Javadoc)
	 * 
	 * @see org.browsermob.proxy.jetty.util.LifeCycle#start()
	 */
	public void start() throws Exception {
		if (_random == null) {
			log.debug("New random session seed");
			try {
				_random = SecureRandom.getInstance("SHA1PRNG");
			} catch (NoSuchAlgorithmException e) {
				log.warn(
						"Could not generate SecureRandom for session-id randomness",
						e);
				_random = new Random();
				_weakRandom = true;
			}
			_random.setSeed(_random.nextLong() ^ System.currentTimeMillis()
					^ hashCode() ^ Runtime.getRuntime().freeMemory());
		}

		if (_sessions == null)
			_sessions = new HashMap();

		// Start the session scavenger if we haven't already
		if (_scavenger == null) {
			_scavenger = new SessionScavenger();
			_scavenger.start();
		}
	}

	/* ------------------------------------------------------------ */
	/*
	 * (non-Javadoc)
	 * 
	 * @see org.browsermob.proxy.jetty.util.LifeCycle#stop()
	 */
	public void stop() {
		// Invalidate all sessions to cause unbind events
		ArrayList sessions = new ArrayList(_sessions.values());
		for (Iterator i = sessions.iterator(); i.hasNext();) {
			Session session = (Session) i.next();
			session.invalidate();
		}
		_sessions.clear();

		// stop the scavenger
		SessionScavenger scavenger = _scavenger;
		_scavenger = null;
		if (scavenger != null)
			scavenger.interrupt();
	}

	/* -------------------------------------------------------------- */
	/**
	 * Find sessions that have timed out and invalidate them. This runs in the
	 * SessionScavenger thread.
	 */
	private void scavenge() {
		Thread thread = Thread.currentThread();
		ClassLoader old_loader = thread.getContextClassLoader();
		try {
			if (_handler == null)
				return;

			ClassLoader loader = _handler.getClassLoader();
			if (loader != null)
				thread.setContextClassLoader(loader);

			long now = System.currentTimeMillis();

			// Since Hashtable enumeration is not safe over deletes,
			// we build a list of stale sessions, then go back and invalidate
			// them
			Object stale = null;

			synchronized (AbstractSessionManager.this) {
				// For each session
				for (Iterator i = _sessions.values().iterator(); i.hasNext();) {
					Session session = (Session) i.next();
					long idleTime = session._maxIdleMs;
					if (idleTime > 0 && session._accessed + idleTime < now) {
						// Found a stale session, add it to the list
						stale = LazyList.add(stale, session);
					}
				}
			}

			// Remove the stale sessions
			for (int i = LazyList.size(stale); i-- > 0;) {
				// check it has not been accessed in the meantime
				Session session = (Session) LazyList.get(stale, i);
				long idleTime = session._maxIdleMs;
				if (idleTime > 0
						&& session._accessed + idleTime < System
								.currentTimeMillis()) {
					session.invalidate();
					int nbsess = this._sessions.size();
					if (nbsess < this._minSessions)
						this._minSessions = nbsess;
				}
			}
		} finally {
			thread.setContextClassLoader(old_loader);
		}
	}

	/* ------------------------------------------------------------ */
	/**
	 * Gets the random.
	 * 
	 * @return the random
	 */
	public Random getRandom() {
		return _random;
	}

	/* ------------------------------------------------------------ */
	/**
	 * Sets the random.
	 * 
	 * @param random
	 *            the new random
	 */
	public void setRandom(Random random) {
		_random = random;
	}

	/* ------------------------------------------------------------ */
	/* ------------------------------------------------------------ */
	/* -------------------------------------------------------------- */
	/**
	 * SessionScavenger is a background thread that kills off old sessions.
	 */
	class SessionScavenger extends Thread {

		/*
		 * (non-Javadoc)
		 * 
		 * @see java.lang.Thread#run()
		 */
		public void run() {
			int period = -1;
			try {
				while (isStarted()) {
					try {
						if (period != _scavengePeriodMs) {
							if (log.isDebugEnabled())
								log.debug("Session scavenger period = "
										+ _scavengePeriodMs / 1000 + "s");
							period = _scavengePeriodMs;
						}
						sleep(period > 1000 ? period : 1000);
						AbstractSessionManager.this.scavenge();
					} catch (InterruptedException ex) {
						continue;
					} catch (Error e) {
						log.warn(LogSupport.EXCEPTION, e);
					} catch (Exception e) {
						log.warn(LogSupport.EXCEPTION, e);
					}
				}
			} finally {
				AbstractSessionManager.this._scavenger = null;
				log.debug("Session scavenger exited");
			}
		}

		/**
		 * Instantiates a new session scavenger.
		 */
		SessionScavenger() {
			super("SessionScavenger");
			setDaemon(true);
		}

	} // SessionScavenger

	/* ------------------------------------------------------------ */
	/* ------------------------------------------------------------ */
	/* ------------------------------------------------------------ */
	/**
	 * The Class Session.
	 */
	public abstract class Session implements SessionManager.Session {

		/** The _values. */
		Map _values;

		/** The _invalid. */
		boolean _invalid = false;

		/** The _new session. */
		boolean _newSession = true;

		/** The _created. */
		long _created = System.currentTimeMillis();

		/** The _accessed. */
		long _accessed = _created;

		/** The _max idle ms. */
		long _maxIdleMs = _dftMaxIdleSecs * 1000;

		/** The _id. */
		String _id;

		/* ------------------------------------------------------------- */
		/**
		 * Instantiates a new session.
		 * 
		 * @param request
		 *            the request
		 */
		protected Session(HttpServletRequest request) {
			_id = newSessionId(request, _created);
			if (_dftMaxIdleSecs >= 0)
				_maxIdleMs = _dftMaxIdleSecs * 1000;
		}

		/* ------------------------------------------------------------ */
		/**
		 * New attribute map.
		 * 
		 * @return the map
		 */
		protected abstract Map newAttributeMap();

		/* ------------------------------------------------------------ */
		/*
		 * (non-Javadoc)
		 * 
		 * @see
		 * org.browsermob.proxy.jetty.jetty.servlet.SessionManager.Session#access
		 * ()
		 */
		public void access() {
			_newSession = false;
			_accessed = System.currentTimeMillis();
		}

		/* ------------------------------------------------------------ */
		/*
		 * (non-Javadoc)
		 * 
		 * @see
		 * org.browsermob.proxy.jetty.jetty.servlet.SessionManager.Session#isValid
		 * ()
		 */
		public boolean isValid() {
			return !_invalid;
		}

		/* ------------------------------------------------------------ */
		/*
		 * (non-Javadoc)
		 * 
		 * @see javax.servlet.http.HttpSession#getServletContext()
		 */
		public ServletContext getServletContext() {
			return _handler.getServletContext();
		}

		/* ------------------------------------------------------------- */
		/*
		 * (non-Javadoc)
		 * 
		 * @see javax.servlet.http.HttpSession#getId()
		 */
		public String getId() throws IllegalStateException {
			return _id;
		}

		/* ------------------------------------------------------------- */
		/*
		 * (non-Javadoc)
		 * 
		 * @see javax.servlet.http.HttpSession#getCreationTime()
		 */
		public long getCreationTime() throws IllegalStateException {
			if (_invalid)
				throw new IllegalStateException();
			return _created;
		}

		/* ------------------------------------------------------------- */
		/*
		 * (non-Javadoc)
		 * 
		 * @see javax.servlet.http.HttpSession#getLastAccessedTime()
		 */
		public long getLastAccessedTime() throws IllegalStateException {
			if (_invalid)
				throw new IllegalStateException();
			return _accessed;
		}

		/* ------------------------------------------------------------- */
		/*
		 * (non-Javadoc)
		 * 
		 * @see javax.servlet.http.HttpSession#getMaxInactiveInterval()
		 */
		public int getMaxInactiveInterval() {
			if (_invalid)
				throw new IllegalStateException();
			return (int) (_maxIdleMs / 1000);
		}

		/* ------------------------------------------------------------- */
		/**
		 * Gets the session context.
		 * 
		 * @return the session context
		 * @throws IllegalStateException
		 *             the illegal state exception
		 * @deprecated
		 */
		public HttpSessionContext getSessionContext()
				throws IllegalStateException {
			if (_invalid)
				throw new IllegalStateException();
			return SessionContext.NULL_IMPL;
		}

		/* ------------------------------------------------------------- */
		/*
		 * (non-Javadoc)
		 * 
		 * @see javax.servlet.http.HttpSession#setMaxInactiveInterval(int)
		 */
		public void setMaxInactiveInterval(int secs) {
			_maxIdleMs = (long) secs * 1000;
			if (_maxIdleMs > 0 && (_maxIdleMs / 10) < _scavengePeriodMs)
				AbstractSessionManager.this.setScavengePeriod((secs + 9) / 10);
		}

		/* ------------------------------------------------------------- */
		/*
		 * (non-Javadoc)
		 * 
		 * @see javax.servlet.http.HttpSession#invalidate()
		 */
		public void invalidate() throws IllegalStateException {
			if (log.isDebugEnabled())
				log.debug("Invalidate session " + getId() + " in "
						+ _handler.getHttpContext());
			try {
				// Notify listeners and unbind values
				synchronized (this) {
					if (_invalid)
						throw new IllegalStateException();

					if (_sessionListeners != null) {
						HttpSessionEvent event = new HttpSessionEvent(this);
						for (int i = _sessionListeners.size(); i-- > 0;)
							((HttpSessionListener) _sessionListeners.get(i))
									.sessionDestroyed(event);
					}

					if (_values != null) {
						Iterator iter = _values.keySet().iterator();
						while (iter.hasNext()) {
							String key = (String) iter.next();
							Object value = _values.get(key);
							iter.remove();
							unbindValue(key, value);

							if (_sessionAttributeListeners.size() > 0) {
								HttpSessionBindingEvent event = new HttpSessionBindingEvent(
										this, key, value);

								for (int i = 0; i < _sessionAttributeListeners
										.size(); i++) {
									((HttpSessionAttributeListener) _sessionAttributeListeners
											.get(i)).attributeRemoved(event);
								}
							}
						}
					}
				}
			} finally {
				// Remove session from context and global maps
				synchronized (__allSessions) {
					synchronized (_sessions) {
						_invalid = true;
						_sessions.remove(getId());
						__allSessions.removeValue(getId(), this);

						if (isInvalidateGlobal()) {
							// Don't iterate as other sessions may also be
							// globally invalidating
							while (__allSessions.containsKey(getId())) {
								Session session = (Session) __allSessions
										.getValue(getId(), 0);
								session.invalidate();
							}
						}
					}
				}
			}
		}

		/* ------------------------------------------------------------- */
		/*
		 * (non-Javadoc)
		 * 
		 * @see javax.servlet.http.HttpSession#isNew()
		 */
		public boolean isNew() throws IllegalStateException {
			if (_invalid)
				throw new IllegalStateException();
			return _newSession;
		}

		/* ------------------------------------------------------------ */
		/*
		 * (non-Javadoc)
		 * 
		 * @see javax.servlet.http.HttpSession#getAttribute(java.lang.String)
		 */
		public synchronized Object getAttribute(String name) {
			if (_invalid)
				throw new IllegalStateException();
			if (_values == null)
				return null;
			return _values.get(name);
		}

		/* ------------------------------------------------------------ */
		/*
		 * (non-Javadoc)
		 * 
		 * @see javax.servlet.http.HttpSession#getAttributeNames()
		 */
		public synchronized Enumeration getAttributeNames() {
			if (_invalid)
				throw new IllegalStateException();
			List names = _values == null ? Collections.EMPTY_LIST
					: new ArrayList(_values.keySet());
			return Collections.enumeration(names);
		}

		/* ------------------------------------------------------------ */
		/*
		 * (non-Javadoc)
		 * 
		 * @see javax.servlet.http.HttpSession#setAttribute(java.lang.String,
		 * java.lang.Object)
		 */
		public synchronized void setAttribute(String name, Object value) {
			if (_invalid)
				throw new IllegalStateException();
			if (_values == null)
				_values = newAttributeMap();
			Object oldValue = _values.put(name, value);

			if (value == null || !value.equals(oldValue)) {
				unbindValue(name, oldValue);
				bindValue(name, value);

				if (_sessionAttributeListeners.size() > 0) {
					HttpSessionBindingEvent event = new HttpSessionBindingEvent(
							this, name, oldValue == null ? value : oldValue);

					for (int i = 0; i < _sessionAttributeListeners.size(); i++) {
						HttpSessionAttributeListener l = (HttpSessionAttributeListener) _sessionAttributeListeners
								.get(i);

						if (oldValue == null)
							l.attributeAdded(event);
						else if (value == null)
							l.attributeRemoved(event);
						else
							l.attributeReplaced(event);
					}
				}
			}
		}

		/* ------------------------------------------------------------ */
		/*
		 * (non-Javadoc)
		 * 
		 * @see javax.servlet.http.HttpSession#removeAttribute(java.lang.String)
		 */
		public synchronized void removeAttribute(String name) {
			if (_invalid)
				throw new IllegalStateException();
			if (_values == null)
				return;

			Object old = _values.remove(name);
			if (old != null) {
				unbindValue(name, old);
				if (_sessionAttributeListeners.size() > 0) {
					HttpSessionBindingEvent event = new HttpSessionBindingEvent(
							this, name, old);

					for (int i = 0; i < _sessionAttributeListeners.size(); i++) {
						HttpSessionAttributeListener l = (HttpSessionAttributeListener) _sessionAttributeListeners
								.get(i);
						l.attributeRemoved(event);
					}
				}
			}
		}

		/* ------------------------------------------------------------- */
		/**
		 * Gets the value.
		 * 
		 * @param name
		 *            the name
		 * @return the value
		 * @throws IllegalStateException
		 *             the illegal state exception
		 * @deprecated As of Version 2.2, this method is replaced by
		 *             {@link #getAttribute}
		 */
		public Object getValue(String name) throws IllegalStateException {
			return getAttribute(name);
		}

		/* ------------------------------------------------------------- */
		/**
		 * Gets the value names.
		 * 
		 * @return the value names
		 * @throws IllegalStateException
		 *             the illegal state exception
		 * @deprecated As of Version 2.2, this method is replaced by
		 *             {@link #getAttributeNames}
		 */
		public synchronized String[] getValueNames()
				throws IllegalStateException {
			if (_invalid)
				throw new IllegalStateException();
			if (_values == null)
				return new String[0];
			String[] a = new String[_values.size()];
			return (String[]) _values.keySet().toArray(a);
		}

		/* ------------------------------------------------------------- */
		/**
		 * Put value.
		 * 
		 * @param name
		 *            the name
		 * @param value
		 *            the value
		 * @throws IllegalStateException
		 *             the illegal state exception
		 * @deprecated As of Version 2.2, this method is replaced by
		 *             {@link #setAttribute}
		 */
		public void putValue(java.lang.String name, java.lang.Object value)
				throws IllegalStateException {
			setAttribute(name, value);
		}

		/* ------------------------------------------------------------- */
		/**
		 * Removes the value.
		 * 
		 * @param name
		 *            the name
		 * @throws IllegalStateException
		 *             the illegal state exception
		 * @deprecated As of Version 2.2, this method is replaced by
		 *             {@link #removeAttribute}
		 */
		public void removeValue(java.lang.String name)
				throws IllegalStateException {
			removeAttribute(name);
		}

		/* ------------------------------------------------------------- */
		/**
		 * If value implements HttpSessionBindingListener, call valueBound().
		 * 
		 * @param name
		 *            the name
		 * @param value
		 *            the value
		 */
		private void bindValue(java.lang.String name, Object value) {
			if (value != null && value instanceof HttpSessionBindingListener)
				((HttpSessionBindingListener) value)
						.valueBound(new HttpSessionBindingEvent(this, name));
		}

		/* ------------------------------------------------------------- */
		/**
		 * If value implements HttpSessionBindingListener, call valueUnbound().
		 * 
		 * @param name
		 *            the name
		 * @param value
		 *            the value
		 */
		private void unbindValue(java.lang.String name, Object value) {
			if (value != null && value instanceof HttpSessionBindingListener)
				((HttpSessionBindingListener) value)
						.valueUnbound(new HttpSessionBindingEvent(this, name));
		}
	}

}
