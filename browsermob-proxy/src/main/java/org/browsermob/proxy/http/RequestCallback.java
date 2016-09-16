/*
 * 
 */
package org.browsermob.proxy.http;

import org.apache.http.Header;
import org.apache.http.StatusLine;

// TODO: Auto-generated Javadoc
/**
 * The Interface RequestCallback.
 */
public interface RequestCallback {

	/**
	 * Handle status line.
	 * 
	 * @param statusLine
	 *            the status line
	 */
	void handleStatusLine(StatusLine statusLine);

	/**
	 * Handle headers.
	 * 
	 * @param headers
	 *            the headers
	 */
	void handleHeaders(Header[] headers);

	/**
	 * Report header.
	 * 
	 * @param header
	 *            the header
	 * @return true, if successful
	 */
	boolean reportHeader(Header header);

	/**
	 * Report error.
	 * 
	 * @param e
	 *            the e
	 */
	void reportError(Exception e);
}
