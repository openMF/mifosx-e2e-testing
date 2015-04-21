/*
 * 
 */
package org.browsermob.proxy.selenium;

import org.browsermob.proxy.jetty.util.IO;

import java.io.*;

// TODO: Auto-generated Javadoc
/**
 * The Class ModifiedIO.
 */
public class ModifiedIO {

	/**
	 * Copy Stream in to Stream out until EOF or exception.
	 * 
	 * @param in
	 *            the in
	 * @param out
	 *            the out
	 * @return the long
	 * @throws IOException
	 *             Signals that an I/O exception has occurred.
	 */
	public static long copy(InputStream in, OutputStream out)
			throws IOException {
		return copy(in, out, -1);
	}

	/**
	 * Copy.
	 * 
	 * @param in
	 *            the in
	 * @param out
	 *            the out
	 * @return the long
	 * @throws IOException
	 *             Signals that an I/O exception has occurred.
	 */
	public static long copy(Reader in, Writer out) throws IOException {
		return copy(in, out, -1);
	}

	/**
	 * Copy Stream in to Stream for byteCount bytes or until EOF or exception.
	 * 
	 * @param in
	 *            the in
	 * @param out
	 *            the out
	 * @param byteCount
	 *            the byte count
	 * @return Copied bytes count or -1 if no bytes were read *and* EOF was
	 *         reached
	 * @throws IOException
	 *             Signals that an I/O exception has occurred.
	 */
	public static long copy(InputStream in, OutputStream out, long byteCount)
			throws IOException {
		byte buffer[] = new byte[IO.bufferSize];
		int len;

		long returnVal = 0;

		if (byteCount >= 0) {
			while (byteCount > 0) {
				if (byteCount < IO.bufferSize)
					len = in.read(buffer, 0, (int) byteCount);
				else
					len = in.read(buffer, 0, IO.bufferSize);

				if (len == -1) {
					break;
				}
				returnVal += len;

				byteCount -= len;
				out.write(buffer, 0, len);
			}
		} else {
			while (true) {
				len = in.read(buffer, 0, IO.bufferSize);
				if (len < 0) {
					break;
				}
				returnVal += len;
				out.write(buffer, 0, len);
			}
		}

		return returnVal;
	}

	/**
	 * Copy Reader to Writer for byteCount bytes or until EOF or exception.
	 * 
	 * @param in
	 *            the in
	 * @param out
	 *            the out
	 * @param byteCount
	 *            the byte count
	 * @return the long
	 * @throws IOException
	 *             Signals that an I/O exception has occurred.
	 */
	public static long copy(Reader in, Writer out, long byteCount)
			throws IOException {
		char buffer[] = new char[IO.bufferSize];
		int len;

		long returnVal = 0;

		if (byteCount >= 0) {
			while (byteCount > 0) {
				if (byteCount < IO.bufferSize)
					len = in.read(buffer, 0, (int) byteCount);
				else
					len = in.read(buffer, 0, IO.bufferSize);

				if (len == -1) {
					break;
				}
				returnVal += len;

				byteCount -= len;
				out.write(buffer, 0, len);
			}
		} else {
			while (true) {
				len = in.read(buffer, 0, IO.bufferSize);
				if (len == -1) {
					break;
				}
				returnVal += len;
				out.write(buffer, 0, len);
			}
		}

		return returnVal;
	}

}
