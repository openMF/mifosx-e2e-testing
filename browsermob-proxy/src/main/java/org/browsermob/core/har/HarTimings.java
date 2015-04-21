/*
 * 
 */
package org.browsermob.core.har;

// TODO: Auto-generated Javadoc
/**
 * The Class HarTimings.
 */
public class HarTimings {

	/** The blocked. */
	private long blocked;

	/** The dns. */
	private long dns;

	/** The connect. */
	private long connect;

	/** The send. */
	private long send;

	/** The wait. */
	private long wait;

	/** The receive. */
	private long receive;

	/**
	 * Instantiates a new har timings.
	 */
	public HarTimings() {
	}

	/**
	 * Instantiates a new har timings.
	 * 
	 * @param blocked
	 *            the blocked
	 * @param dns
	 *            the dns
	 * @param connect
	 *            the connect
	 * @param send
	 *            the send
	 * @param wait
	 *            the wait
	 * @param receive
	 *            the receive
	 */
	public HarTimings(long blocked, long dns, long connect, long send,
			long wait, long receive) {
		this.blocked = blocked;
		this.dns = dns;
		this.connect = connect;
		this.send = send;
		this.wait = wait;
		this.receive = receive;
	}

	/**
	 * Gets the blocked.
	 * 
	 * @return the blocked
	 */
	public Long getBlocked() {
		return blocked;
	}

	/**
	 * Sets the blocked.
	 * 
	 * @param blocked
	 *            the new blocked
	 */
	public void setBlocked(Long blocked) {
		this.blocked = blocked;
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
	 * Sets the dns.
	 * 
	 * @param dns
	 *            the new dns
	 */
	public void setDns(Long dns) {
		this.dns = dns;
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
	 * Sets the connect.
	 * 
	 * @param connect
	 *            the new connect
	 */
	public void setConnect(Long connect) {
		this.connect = connect;
	}

	/**
	 * Gets the send.
	 * 
	 * @return the send
	 */
	public long getSend() {
		return send;
	}

	/**
	 * Sets the send.
	 * 
	 * @param send
	 *            the new send
	 */
	public void setSend(long send) {
		this.send = send;
	}

	/**
	 * Gets the wait.
	 * 
	 * @return the wait
	 */
	public long getWait() {
		return wait;
	}

	/**
	 * Sets the wait.
	 * 
	 * @param wait
	 *            the new wait
	 */
	public void setWait(long wait) {
		this.wait = wait;
	}

	/**
	 * Gets the receive.
	 * 
	 * @return the receive
	 */
	public long getReceive() {
		return receive;
	}

	/**
	 * Sets the receive.
	 * 
	 * @param receive
	 *            the new receive
	 */
	public void setReceive(long receive) {
		this.receive = receive;
	}
}
