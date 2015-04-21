/*
 * 
 */
package org.browsermob.proxy.util;

import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;

// TODO: Auto-generated Javadoc
/**
 * The Class ClonedInputStream.
 */
public class ClonedInputStream extends InputStream {

	/** The is. */
	private InputStream is;

	/** The os. */
	private ByteArrayOutputStream os = new ByteArrayOutputStream();

	/**
	 * Instantiates a new cloned input stream.
	 * 
	 * @param is
	 *            the is
	 */
	public ClonedInputStream(InputStream is) {
		this.is = is;
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see java.io.InputStream#read()
	 */
	public int read() throws IOException {
		int resp = is.read();
		os.write(resp);

		return resp;
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see java.io.InputStream#read(byte[])
	 */
	public int read(byte[] b) throws IOException {
		int resp = is.read(b);
		os.write(b);

		return resp;
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see java.io.InputStream#read(byte[], int, int)
	 */
	public int read(byte[] b, int off, int len) throws IOException {
		int resp = is.read(b, off, len);
		os.write(b, off, len);

		return resp;
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see java.io.InputStream#skip(long)
	 */
	public long skip(long n) throws IOException {
		return is.skip(n);
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see java.io.InputStream#available()
	 */
	public int available() throws IOException {
		return is.available();
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see java.io.InputStream#close()
	 */
	public void close() throws IOException {
		os.close();
		is.close();
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see java.io.InputStream#mark(int)
	 */
	public void mark(int readlimit) {
		is.mark(readlimit);
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see java.io.InputStream#reset()
	 */
	public void reset() throws IOException {
		os.reset();
		is.reset();
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see java.io.InputStream#markSupported()
	 */
	public boolean markSupported() {
		return is.markSupported();
	}

	/**
	 * Gets the output.
	 * 
	 * @return the output
	 */
	public ByteArrayOutputStream getOutput() {
		return os;
	}
}
