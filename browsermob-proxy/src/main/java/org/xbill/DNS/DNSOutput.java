// Copyright (c) 1999-2004 Brian Wellington (bwelling@xbill.org)

package org.xbill.DNS;

// TODO: Auto-generated Javadoc
/**
 * A class for rendering DNS messages.
 * 
 * @author Brian Wellington
 */

public class DNSOutput {

	/** The array. */
	private byte[] array;

	/** The pos. */
	private int pos;

	/** The saved_pos. */
	private int saved_pos;

	/**
	 * Create a new DNSOutput with a specified size.
	 * 
	 * @param size
	 *            The initial size
	 */
	public DNSOutput(int size) {
		array = new byte[size];
		pos = 0;
		saved_pos = -1;
	}

	/**
	 * Create a new DNSOutput.
	 */
	public DNSOutput() {
		this(32);
	}

	/**
	 * Returns the current position.
	 * 
	 * @return the int
	 */
	public int current() {
		return pos;
	}

	/**
	 * Check.
	 * 
	 * @param val
	 *            the val
	 * @param bits
	 *            the bits
	 */
	private void check(long val, int bits) {
		long max = 1;
		max <<= bits;
		if (val < 0 || val > max) {
			throw new IllegalArgumentException(val + " out of range for "
					+ bits + " bit value");
		}
	}

	/**
	 * Need.
	 * 
	 * @param n
	 *            the n
	 */
	private void need(int n) {
		if (array.length - pos >= n) {
			return;
		}
		int newsize = array.length * 2;
		if (newsize < pos + n) {
			newsize = pos + n;
		}
		byte[] newarray = new byte[newsize];
		System.arraycopy(array, 0, newarray, 0, pos);
		array = newarray;
	}

	/**
	 * Resets the current position of the output stream to the specified index.
	 * 
	 * @param index
	 *            The new current position.
	 */
	public void jump(int index) {
		if (index > pos) {
			throw new IllegalArgumentException("cannot jump past "
					+ "end of data");
		}
		pos = index;
	}

	/**
	 * Saves the current state of the output stream.
	 * 
	 */
	public void save() {
		saved_pos = pos;
	}

	/**
	 * Restores the input stream to its state before the call to {@link #save}.
	 */
	public void restore() {
		if (saved_pos < 0) {
			throw new IllegalStateException("no previous state");
		}
		pos = saved_pos;
		saved_pos = -1;
	}

	/**
	 * Writes an unsigned 8 bit value to the stream.
	 * 
	 * @param val
	 *            The value to be written
	 */
	public void writeU8(int val) {
		check(val, 8);
		need(1);
		array[pos++] = (byte) (val & 0xFF);
	}

	/**
	 * Writes an unsigned 16 bit value to the stream.
	 * 
	 * @param val
	 *            The value to be written
	 */
	public void writeU16(int val) {
		check(val, 16);
		need(2);
		array[pos++] = (byte) ((val >>> 8) & 0xFF);
		array[pos++] = (byte) (val & 0xFF);
	}

	/**
	 * Writes an unsigned 32 bit value to the stream.
	 * 
	 * @param val
	 *            The value to be written
	 */
	public void writeU32(long val) {
		check(val, 32);
		need(4);
		array[pos++] = (byte) ((val >>> 24) & 0xFF);
		array[pos++] = (byte) ((val >>> 16) & 0xFF);
		array[pos++] = (byte) ((val >>> 8) & 0xFF);
		array[pos++] = (byte) (val & 0xFF);
	}

	/**
	 * Writes a byte array to the stream.
	 * 
	 * @param b
	 *            The array to write.
	 * @param off
	 *            The offset of the array to start copying data from.
	 * @param len
	 *            The number of bytes to write.
	 */
	public void writeByteArray(byte[] b, int off, int len) {
		need(len);
		System.arraycopy(b, off, array, pos, len);
		pos += len;
	}

	/**
	 * Writes a byte array to the stream.
	 * 
	 * @param b
	 *            The array to write.
	 */
	public void writeByteArray(byte[] b) {
		writeByteArray(b, 0, b.length);
	}

	/**
	 * Writes a counted string from the stream. A counted string is a one byte
	 * value indicating string length, followed by bytes of data.
	 * 
	 * @param s
	 *            The string to write.
	 */
	public void writeCountedString(byte[] s) {
		if (s.length > 0xFF) {
			throw new IllegalArgumentException("Invalid counted string");
		}
		need(1 + s.length);
		array[pos++] = (byte) (s.length & 0xFF);
		writeByteArray(s, 0, s.length);
	}

	/**
	 * Returns a byte array containing the current contents of the stream.
	 * 
	 * @return the byte[]
	 */
	public byte[] toByteArray() {
		byte[] out = new byte[pos];
		System.arraycopy(array, 0, out, 0, pos);
		return out;
	}

}
