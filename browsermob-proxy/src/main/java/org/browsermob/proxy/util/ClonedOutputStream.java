/*
 * 
 */
package org.browsermob.proxy.util;

import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;

// TODO: Auto-generated Javadoc
/**
 * The Class ClonedOutputStream.
 */
public class ClonedOutputStream extends OutputStream {

	/** The os. */
	private OutputStream os;

	/** The copy. */
	private ByteArrayOutputStream copy = new ByteArrayOutputStream();

	/**
	 * Instantiates a new cloned output stream.
	 * 
	 * @param os
	 *            the os
	 */
	public ClonedOutputStream(OutputStream os) {
		this.os = os;
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see java.io.OutputStream#write(int)
	 */
	@Override
	public void write(int b) throws IOException {
		os.write(b);
		copy.write(b);
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see java.io.OutputStream#write(byte[])
	 */
	@Override
	public void write(byte[] b) throws IOException {
		os.write(b);
		copy.write(b);
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see java.io.OutputStream#write(byte[], int, int)
	 */
	@Override
	public void write(byte[] b, int off, int len) throws IOException {
		os.write(b, off, len);
		copy.write(b, off, len);
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see java.io.OutputStream#flush()
	 */
	@Override
	public void flush() throws IOException {
		os.flush();
		copy.flush();
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see java.io.OutputStream#close()
	 */
	@Override
	public void close() throws IOException {
		os.close();
		copy.close();
	}

	/**
	 * Gets the output.
	 * 
	 * @return the output
	 */
	public ByteArrayOutputStream getOutput() {
		return copy;
	}
}
