/*
 * 
 */
package org.browsermob.proxy.util;

import java.io.IOException;
import java.io.Writer;

// TODO: Auto-generated Javadoc
/**
 * The Class ChainableWriter.
 */
public class ChainableWriter extends Writer {

	/** The writer. */
	private Writer writer;

	/**
	 * Instantiates a new chainable writer.
	 * 
	 * @param writer
	 *            the writer
	 */
	public ChainableWriter(Writer writer) {
		this.writer = writer;
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see java.io.Writer#write(int)
	 */
	public void write(int c) throws IOException {
		writer.write(c);
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see java.io.Writer#write(char[])
	 */
	public void write(char[] cbuf) throws IOException {
		writer.write(cbuf);
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see java.io.Writer#write(char[], int, int)
	 */
	public void write(char[] cbuf, int off, int len) throws IOException {
		writer.write(cbuf, off, len);
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see java.io.Writer#write(java.lang.String)
	 */
	public void write(String str) throws IOException {
		writer.write(str);
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see java.io.Writer#write(java.lang.String, int, int)
	 */
	public void write(String str, int off, int len) throws IOException {
		writer.write(str, off, len);
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see java.io.Writer#append(java.lang.CharSequence)
	 */
	public ChainableWriter append(CharSequence csq) throws IOException {
		writer.append(csq);

		return this;
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see java.io.Writer#append(java.lang.CharSequence, int, int)
	 */
	public ChainableWriter append(CharSequence csq, int start, int end)
			throws IOException {
		writer.append(csq, start, end);

		return this;
	}

	/**
	 * Append.
	 * 
	 * @param aLong
	 *            the a long
	 * @return the chainable writer
	 * @throws IOException
	 *             Signals that an I/O exception has occurred.
	 */
	public ChainableWriter append(long aLong) throws IOException {
		return append(String.valueOf(aLong));
	}

	/**
	 * Append.
	 * 
	 * @param anInt
	 *            the an int
	 * @return the chainable writer
	 * @throws IOException
	 *             Signals that an I/O exception has occurred.
	 */
	public ChainableWriter append(int anInt) throws IOException {
		return append(String.valueOf(anInt));
	}

	/**
	 * Append.
	 * 
	 * @param bool
	 *            the bool
	 * @return the chainable writer
	 * @throws IOException
	 *             Signals that an I/O exception has occurred.
	 */
	public ChainableWriter append(boolean bool) throws IOException {
		return append(String.valueOf(bool));
	}

	/**
	 * Append.
	 * 
	 * @param o
	 *            the o
	 * @return the chainable writer
	 * @throws IOException
	 *             Signals that an I/O exception has occurred.
	 */
	public ChainableWriter append(Object o) throws IOException {
		return append(o.toString());
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see java.io.Writer#append(char)
	 */
	public ChainableWriter append(char c) throws IOException {
		writer.append(c);

		return this;
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see java.io.Writer#flush()
	 */
	public void flush() throws IOException {
		writer.flush();
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see java.io.Writer#close()
	 */
	public void close() throws IOException {
		writer.close();
	}
}
