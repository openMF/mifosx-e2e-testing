// Copyright (c) 2005 Brian Wellington (bwelling@xbill.org)

package org.xbill.DNS;

import java.io.EOFException;
import java.io.IOException;
import java.net.InetSocketAddress;
import java.net.SocketAddress;
import java.net.SocketException;
import java.nio.ByteBuffer;
import java.nio.channels.DatagramChannel;
import java.nio.channels.SelectionKey;
import java.security.SecureRandom;

// TODO: Auto-generated Javadoc
/**
 * The Class UDPClient.
 */
final class UDPClient extends Client {

	/** The Constant EPHEMERAL_START. */
	private static final int EPHEMERAL_START = 1024;

	/** The Constant EPHEMERAL_STOP. */
	private static final int EPHEMERAL_STOP = 65535;

	/** The Constant EPHEMERAL_RANGE. */
	private static final int EPHEMERAL_RANGE = EPHEMERAL_STOP - EPHEMERAL_START;

	/** The prng. */
	private static SecureRandom prng = new SecureRandom();

	/** The bound. */
	private boolean bound = false;

	/**
	 * Instantiates a new uDP client.
	 * 
	 * @param endTime
	 *            the end time
	 * @throws IOException
	 *             Signals that an I/O exception has occurred.
	 */
	public UDPClient(long endTime) throws IOException {
		super(DatagramChannel.open(), endTime);
	}

	/**
	 * Bind_random.
	 * 
	 * @param addr
	 *            the addr
	 * @throws IOException
	 *             Signals that an I/O exception has occurred.
	 */
	private void bind_random(InetSocketAddress addr) throws IOException {
		DatagramChannel channel = (DatagramChannel) key.channel();
		InetSocketAddress temp;

		for (int i = 0; i < 1024; i++) {
			try {
				int port = prng.nextInt(EPHEMERAL_RANGE) + EPHEMERAL_START;
				if (addr != null)
					temp = new InetSocketAddress(addr.getAddress(), port);
				else
					temp = new InetSocketAddress(port);
				channel.socket().bind(temp);
				bound = true;
				return;
			} catch (SocketException e) {
			}
		}
	}

	/**
	 * Bind.
	 * 
	 * @param addr
	 *            the addr
	 * @throws IOException
	 *             Signals that an I/O exception has occurred.
	 */
	void bind(SocketAddress addr) throws IOException {
		if (addr == null
				|| (addr instanceof InetSocketAddress && ((InetSocketAddress) addr)
						.getPort() == 0)) {
			bind_random((InetSocketAddress) addr);
			if (bound)
				return;
		}

		if (addr != null) {
			DatagramChannel channel = (DatagramChannel) key.channel();
			channel.socket().bind(addr);
			bound = true;
		}
	}

	/**
	 * Connect.
	 * 
	 * @param addr
	 *            the addr
	 * @throws IOException
	 *             Signals that an I/O exception has occurred.
	 */
	void connect(SocketAddress addr) throws IOException {
		if (!bound)
			bind(null);
		DatagramChannel channel = (DatagramChannel) key.channel();
		channel.connect(addr);
	}

	/**
	 * Send.
	 * 
	 * @param data
	 *            the data
	 * @throws IOException
	 *             Signals that an I/O exception has occurred.
	 */
	void send(byte[] data) throws IOException {
		DatagramChannel channel = (DatagramChannel) key.channel();
		verboseLog("UDP write", data);
		channel.write(ByteBuffer.wrap(data));
	}

	/**
	 * Recv.
	 * 
	 * @param max
	 *            the max
	 * @return the byte[]
	 * @throws IOException
	 *             Signals that an I/O exception has occurred.
	 */
	byte[] recv(int max) throws IOException {
		DatagramChannel channel = (DatagramChannel) key.channel();
		byte[] temp = new byte[max];
		key.interestOps(SelectionKey.OP_READ);
		try {
			while (!key.isReadable())
				blockUntil(key, endTime);
		} finally {
			if (key.isValid())
				key.interestOps(0);
		}
		long ret = channel.read(ByteBuffer.wrap(temp));
		if (ret <= 0)
			throw new EOFException();
		int len = (int) ret;
		byte[] data = new byte[len];
		System.arraycopy(temp, 0, data, 0, len);
		verboseLog("UDP read", data);
		return data;
	}

	/**
	 * Sendrecv.
	 * 
	 * @param local
	 *            the local
	 * @param remote
	 *            the remote
	 * @param data
	 *            the data
	 * @param max
	 *            the max
	 * @param endTime
	 *            the end time
	 * @return the byte[]
	 * @throws IOException
	 *             Signals that an I/O exception has occurred.
	 */
	static byte[] sendrecv(SocketAddress local, SocketAddress remote,
			byte[] data, int max, long endTime) throws IOException {
		UDPClient client = new UDPClient(endTime);
		try {
			client.bind(local);
			client.connect(remote);
			client.send(data);
			return client.recv(max);
		} finally {
			client.cleanup();
		}
	}

	/**
	 * Sendrecv.
	 * 
	 * @param addr
	 *            the addr
	 * @param data
	 *            the data
	 * @param max
	 *            the max
	 * @param endTime
	 *            the end time
	 * @return the byte[]
	 * @throws IOException
	 *             Signals that an I/O exception has occurred.
	 */
	static byte[] sendrecv(SocketAddress addr, byte[] data, int max,
			long endTime) throws IOException {
		return sendrecv(null, addr, data, max, endTime);
	}

}
