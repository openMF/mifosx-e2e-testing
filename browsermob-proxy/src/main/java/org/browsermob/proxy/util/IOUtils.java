/*
 * 
 */
package org.browsermob.proxy.util;

import java.io.*;
import java.util.Date;

// TODO: Auto-generated Javadoc
/**
 * The Class IOUtils.
 */
public class IOUtils {

	/** The Constant BUFFER. */
	private static final int BUFFER = 4096;

	/**
	 * Copy.
	 * 
	 * @param in
	 *            the in
	 * @param out
	 *            the out
	 * @throws IOException
	 *             Signals that an I/O exception has occurred.
	 */
	public static void copy(InputStream in, OutputStream out)
			throws IOException {
		byte[] buffer = new byte[BUFFER];
		int length;
		while ((length = in.read(buffer)) != -1) {
			out.write(buffer, 0, length);
		}

		out.close();
		in.close();
	}

	/**
	 * Copy with stats.
	 * 
	 * @param is
	 *            the is
	 * @param os
	 *            the os
	 * @param simulator
	 *            the simulator
	 * @param copyOutputForReadingLater
	 *            the copy output for reading later
	 * @return the stats
	 * @throws IOException
	 *             Signals that an I/O exception has occurred.
	 */
	public static Stats copyWithStats(InputStream is, OutputStream os,
			BandwidthSimulator simulator, boolean copyOutputForReadingLater)
			throws IOException {
		Date timeToFirstByte = null;

		byte[] buffer = new byte[BUFFER];
		int length;
		int bytes = 0;

		ByteArrayInputStream bais = null;

		try {
			ByteArrayOutputStream baos = null;
			if (copyOutputForReadingLater) {
				baos = new ByteArrayOutputStream();
			}

			// read the first byte
			int maxBytes = Math.min(simulator.maximumBytes(bytes),
					buffer.length);
			int firstByte = is.read();
			os.write(firstByte);
			if (copyOutputForReadingLater) {
				baos.write(firstByte);
			}
			bytes++;
			timeToFirstByte = new Date();

			do {
				length = is.read(buffer, 0, maxBytes);
				if (length != -1) {
					bytes += length;
					os.write(buffer, 0, length);
					if (copyOutputForReadingLater) {
						baos.write(buffer, 0, length);
					}
				}
				maxBytes = Math.min(simulator.maximumBytes(bytes),
						buffer.length);
			} while (length != -1);

			if (copyOutputForReadingLater) {
				bais = new ByteArrayInputStream(baos.toByteArray());
			}
		} finally {
			try {
				is.close();
			} catch (IOException e) {
				// ok to ignore
			}

			try {
				os.close();
			} catch (IOException e) {
				// ok to ignore
			}
		}

		return new Stats(bytes, timeToFirstByte, bais);
	}

	/**
	 * Read fully.
	 * 
	 * @param in
	 *            the in
	 * @return the string
	 * @throws IOException
	 *             Signals that an I/O exception has occurred.
	 */
	public static String readFully(InputStream in) throws IOException {
		StringBuilder sb = new StringBuilder();
		byte[] buffer = new byte[BUFFER];
		int length;
		while ((length = in.read(buffer)) != -1) {
			sb.append(new String(buffer, 0, length, "UTF-8"));
		}

		in.close();

		return sb.toString();
	}

	/**
	 * Read fully.
	 * 
	 * @param in
	 *            the in
	 * @return the string
	 * @throws IOException
	 *             Signals that an I/O exception has occurred.
	 */
	public static String readFully(InputStreamReader in) throws IOException {
		StringBuilder sb = new StringBuilder();
		char[] buffer = new char[BUFFER];
		int length;
		while ((length = in.read(buffer)) != -1) {
			sb.append(new String(buffer, 0, length));
		}

		in.close();

		return sb.toString();
	}

	/**
	 * The Class Stats.
	 */
	public static class Stats {

		/** The bytes copied. */
		private long bytesCopied;

		/** The time to first byte. */
		private Date timeToFirstByte;

		/** The copy. */
		private InputStream copy;

		/**
		 * Instantiates a new stats.
		 * 
		 * @param bytesCopied
		 *            the bytes copied
		 * @param timeToFirstByte
		 *            the time to first byte
		 * @param copy
		 *            the copy
		 */
		public Stats(long bytesCopied, Date timeToFirstByte, InputStream copy) {
			this.bytesCopied = bytesCopied;
			this.timeToFirstByte = timeToFirstByte;
			this.copy = copy;
		}

		/**
		 * Gets the bytes copied.
		 * 
		 * @return the bytes copied
		 */
		public long getBytesCopied() {
			return bytesCopied;
		}

		/**
		 * Gets the time to first byte.
		 * 
		 * @return the time to first byte
		 */
		public Date getTimeToFirstByte() {
			return timeToFirstByte;
		}

		/**
		 * Gets the copy.
		 * 
		 * @return the copy
		 */
		public InputStream getCopy() {
			return copy;
		}
	}
}
