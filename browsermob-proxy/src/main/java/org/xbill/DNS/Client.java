// Copyright (c) 2005 Brian Wellington (bwelling@xbill.org)

package org.xbill.DNS;

import org.xbill.DNS.utils.hexdump;

import java.io.IOException;
import java.net.SocketTimeoutException;
import java.nio.channels.SelectableChannel;
import java.nio.channels.SelectionKey;
import java.nio.channels.Selector;

// TODO: Auto-generated Javadoc
/**
 * The Class Client.
 */
class Client {

	/** The end time. */
	protected long endTime;

	/** The key. */
	protected SelectionKey key;

	/**
	 * Instantiates a new client.
	 * 
	 * @param channel
	 *            the channel
	 * @param endTime
	 *            the end time
	 * @throws IOException
	 *             Signals that an I/O exception has occurred.
	 */
	protected Client(SelectableChannel channel, long endTime)
			throws IOException {
		boolean done = false;
		Selector selector = null;
		this.endTime = endTime;
		try {
			selector = Selector.open();
			channel.configureBlocking(false);
			key = channel.register(selector, SelectionKey.OP_READ);
			done = true;
		} finally {
			if (!done && selector != null)
				selector.close();
			if (!done)
				channel.close();
		}
	}

	/**
	 * Block until.
	 * 
	 * @param key
	 *            the key
	 * @param endTime
	 *            the end time
	 * @throws IOException
	 *             Signals that an I/O exception has occurred.
	 */
	static protected void blockUntil(SelectionKey key, long endTime)
			throws IOException {
		long timeout = endTime - System.currentTimeMillis();
		int nkeys = 0;
		if (timeout > 0)
			nkeys = key.selector().select(timeout);
		else if (timeout == 0)
			nkeys = key.selector().selectNow();
		if (nkeys == 0)
			throw new SocketTimeoutException();
	}

	/**
	 * Verbose log.
	 * 
	 * @param prefix
	 *            the prefix
	 * @param data
	 *            the data
	 */
	static protected void verboseLog(String prefix, byte[] data) {
		if (Options.check("verbosemsg"))
			System.err.println(hexdump.dump(prefix, data));
	}

	/**
	 * Cleanup.
	 * 
	 * @throws IOException
	 *             Signals that an I/O exception has occurred.
	 */
	void cleanup() throws IOException {
		key.selector().close();
		key.channel().close();
	}

}
