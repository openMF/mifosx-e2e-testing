/*
 * 
 */
package org.browsermob.proxy.util;

import java.io.ByteArrayOutputStream;

// TODO: Auto-generated Javadoc
/**
 * A special ByteArrayOutputStream that will only write up to X number of bytes,
 * after which it will simply ignore the rest. This is useful for solving a JVM
 * heap starvation issue (see MOB-216).
 */
public class CappedByteArrayOutputStream extends ByteArrayOutputStream {

	/** The max bytes. */
	private int maxBytes;

	/** The writeable. */
	private boolean writeable = true;

	/**
	 * Instantiates a new capped byte array output stream.
	 * 
	 * @param maxBytes
	 *            the max bytes
	 */
	public CappedByteArrayOutputStream(int maxBytes) {
		this.maxBytes = maxBytes;
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see java.io.ByteArrayOutputStream#write(int)
	 */
	@Override
	public void write(int b) {
		if (writeable) {
			super.write(b);
			checkWritable();
		}
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see java.io.ByteArrayOutputStream#write(byte[], int, int)
	 */
	@Override
	public void write(byte[] b, int off, int len) {
		if (writeable) {
			super.write(b, off, len);
			checkWritable();
		}
	}

	/**
	 * Check writable.
	 */
	private void checkWritable() {
		if (count > maxBytes) {
			writeable = false;
		}
	}
}
