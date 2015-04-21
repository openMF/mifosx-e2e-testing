/*
 * 
 */
package org.browsermob.proxy.http;

import org.browsermob.core.har.HarEntry;
import org.browsermob.core.har.HarTimings;
import org.browsermob.proxy.util.Log;

import java.util.Date;

// TODO: Auto-generated Javadoc
/**
 * The Class RequestInfo.
 */
public class RequestInfo {

	/** The Constant LOG. */
	private static final Log LOG = new Log();

	/** The instance. */
	private static ThreadLocal<RequestInfo> instance = new ThreadLocal<RequestInfo>() {
		@Override
		protected RequestInfo initialValue() {
			return new RequestInfo();
		}
	};

	/**
	 * Gets the.
	 * 
	 * @return the request info
	 */
	public static RequestInfo get() {
		return instance.get();
	}

	/**
	 * Clear.
	 * 
	 * @param url
	 *            the url
	 * @param entry
	 *            the entry
	 */
	public static void clear(String url, HarEntry entry) {
		clear();
		RequestInfo info = get();
		info.url = url;
		info.entry = entry;
	}

	/**
	 * Clear.
	 */
	private static void clear() {
		RequestInfo info = get();
		info.blocked = null;
		info.dns = null;
		info.connect = null;
		info.ssl = null;
		info.send = null;
		info.wait = null;
		info.receive = null;
		info.resolvedAddress = null;
		info.start = null;
		info.end = null;
	}

	/** The blocked. */
	private Long blocked;

	/** The dns. */
	private Long dns;

	/** The connect. */
	private Long connect;

	/** The ssl. */
	private Long ssl;

	/** The send. */
	private Long send;

	/** The wait. */
	private Long wait;

	/** The receive. */
	private Long receive;

	/** The resolved address. */
	private String resolvedAddress;

	/** The start. */
	private Date start;

	/** The end. */
	private Date end;

	/** The url. */
	private String url;

	/** The entry. */
	private HarEntry entry;

	/**
	 * Ping.
	 * 
	 * @param start
	 *            the start
	 * @param end
	 *            the end
	 * @return the long
	 */
	private Long ping(Date start, Date end) {
		if (this.start == null) {
			this.start = start;
		} else if (this.start.after(start)) {
			LOG.severe(
					"Saw a later start time that was before the first start time for URL %s",
					url);
		}

		return end.getTime() - start.getTime();
	}

	/**
	 * Gets the blocked.
	 * 
	 * @return the blocked
	 */
	public Long getBlocked() {
		// return blocked;
		// purposely not sending back blocked timings for now until we know it's
		// reliable
		return null;
	}

	/**
	 * Gets the dns.
	 * 
	 * @return the dns
	 */
	public Long getDns() {
		return dns;
	}

	/**
	 * Gets the connect.
	 * 
	 * @return the connect
	 */
	public Long getConnect() {
		return connect;
	}

	/**
	 * Gets the ssl.
	 * 
	 * @return the ssl
	 */
	public Long getSsl() {
		return ssl;
	}

	/**
	 * Gets the send.
	 * 
	 * @return the send
	 */
	public Long getSend() {
		return send;
	}

	/**
	 * Gets the wait.
	 * 
	 * @return the wait
	 */
	public Long getWait() {
		return wait;
	}

	/**
	 * Gets the receive.
	 * 
	 * @return the receive
	 */
	public Long getReceive() {
		return receive;
	}

	/**
	 * Gets the resolved address.
	 * 
	 * @return the resolved address
	 */
	public String getResolvedAddress() {
		return resolvedAddress;
	}

	/**
	 * Blocked.
	 * 
	 * @param start
	 *            the start
	 * @param end
	 *            the end
	 */
	public void blocked(Date start, Date end) {
		// blocked is special - we don't record this start time as we don't want
		// it to count towards receive time and
		// total time
		blocked = end.getTime() - start.getTime();
	}

	/**
	 * Dns.
	 * 
	 * @param start
	 *            the start
	 * @param end
	 *            the end
	 * @param resolvedAddress
	 *            the resolved address
	 */
	public void dns(Date start, Date end, String resolvedAddress) {
		dns = ping(start, end);
		this.resolvedAddress = resolvedAddress;
	}

	/**
	 * Connect.
	 * 
	 * @param start
	 *            the start
	 * @param end
	 *            the end
	 */
	public void connect(Date start, Date end) {
		connect = ping(start, end);
	}

	/**
	 * Ssl.
	 * 
	 * @param start
	 *            the start
	 * @param end
	 *            the end
	 */
	public void ssl(Date start, Date end) {
		ssl = ping(start, end);
	}

	/**
	 * Send.
	 * 
	 * @param start
	 *            the start
	 * @param end
	 *            the end
	 */
	public void send(Date start, Date end) {
		send = ping(start, end);
	}

	/**
	 * Wait.
	 * 
	 * @param start
	 *            the start
	 * @param end
	 *            the end
	 */
	public void wait(Date start, Date end) {
		wait = ping(start, end);
	}

	/**
	 * Finish.
	 */
	public void finish() {
		end = new Date();

		if (start == null) {
			start = new Date();
		}

		long totalTime = end.getTime() - start.getTime();

		receive = totalTime - norm(wait) - norm(send) - norm(ssl)
				- norm(connect) - norm(dns);

		// as per the Har 1.2 spec (to maintain backwards compatibility with
		// 1.1) the connect time should actually
		// include the ssl handshaking time, so doing that here after everything
		// has been calculated
		if (norm(ssl) > 0) {
			connect += ssl;
		}

		if (receive < 0) {
			LOG.severe("Got a negative receiving time (%d) for URL %s",
					receive, url);
			receive = 0L;
		}
	}

	/**
	 * Norm.
	 * 
	 * @param val
	 *            the val
	 * @return the long
	 */
	private long norm(Long val) {
		if (val == null) {
			return 0;
		} else {
			return val;
		}
	}

	/**
	 * Gets the start.
	 * 
	 * @return the start
	 */
	public Date getStart() {
		return start;
	}

	/**
	 * Gets the end.
	 * 
	 * @return the end
	 */
	public Date getEnd() {
		return end;
	}

	/**
	 * Gets the total time.
	 * 
	 * @return the total time
	 */
	public long getTotalTime() {
		if (end == null || start == null) {
			return -1;
		}

		return end.getTime() - start.getTime();
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see java.lang.Object#toString()
	 */
	@Override
	public String toString() {
		long totalTime = end.getTime() - start.getTime();

		return "RequestInfo{" + "blocked=" + blocked + ", dns=" + dns
				+ ", connect=" + connect + ", ssl=" + ssl + ", send=" + send
				+ ", wait=" + wait + ", receive=" + receive + ", total="
				+ totalTime + ", resolvedAddress='" + resolvedAddress + '\''
				+ '}';
	}

	/**
	 * Gets the timings.
	 * 
	 * @return the timings
	 */
	public HarTimings getTimings() {
		long send = 0;
		if (this.send != null) {
			send = this.send;
		}

		long wait = 0;
		if (this.wait != null) {
			wait = this.wait;
		}

		long receive = 0;
		if (this.receive != null) {
			receive = this.receive;
		}

		// We were setting the following to null, however
		// some HAR viewers (e.g. the HTTP Archive Viewer js widget)
		// have a problem when these are not set in the json.
		// Keeping them set to zero for now, until
		long blocked = 0;
		if (this.blocked != null) {
			blocked = this.blocked;
		}

		long dns = 0;
		if (this.dns != null) {
			dns = this.dns;
		}

		long connect = 0;
		if (this.connect != null) {
			connect = this.connect;
		}

		return new HarTimings(blocked, dns, connect, send, wait, receive);
	}

	/**
	 * Gets the entry.
	 * 
	 * @return the entry
	 */
	public HarEntry getEntry() {
		return entry;
	}
}
