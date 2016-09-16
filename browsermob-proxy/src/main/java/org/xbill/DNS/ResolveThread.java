// Copyright (c) 1999-2004 Brian Wellington (bwelling@xbill.org)

package org.xbill.DNS;

// TODO: Auto-generated Javadoc
/**
 * A special-purpose thread used by Resolvers (both SimpleResolver and
 * ExtendedResolver) to perform asynchronous queries.
 * 
 * @author Brian Wellington
 */

class ResolveThread extends Thread {

	/** The query. */
	private Message query;

	/** The id. */
	private Object id;

	/** The listener. */
	private ResolverListener listener;

	/** The res. */
	private Resolver res;

	/**
	 * Creates a new ResolveThread.
	 * 
	 * @param res
	 *            the res
	 * @param query
	 *            the query
	 * @param id
	 *            the id
	 * @param listener
	 *            the listener
	 */
	public ResolveThread(Resolver res, Message query, Object id,
			ResolverListener listener) {
		this.res = res;
		this.query = query;
		this.id = id;
		this.listener = listener;
	}

	/**
	 * Performs the query, and executes the callback.
	 */
	public void run() {
		try {
			Message response = res.send(query);
			listener.receiveMessage(id, response);
		} catch (Exception e) {
			listener.handleException(id, e);
		}
	}

}
