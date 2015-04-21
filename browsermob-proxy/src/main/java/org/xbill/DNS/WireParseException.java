// Copyright (c) 1999-2004 Brian Wellington (bwelling@xbill.org)

package org.xbill.DNS;

import java.io.IOException;

// TODO: Auto-generated Javadoc
/**
 * An exception thrown when a DNS message is invalid.
 * 
 * @author Brian Wellington
 */

public class WireParseException extends IOException {

	/**
	 * Instantiates a new wire parse exception.
	 */
	public WireParseException() {
		super();
	}

	/**
	 * Instantiates a new wire parse exception.
	 * 
	 * @param s
	 *            the s
	 */
	public WireParseException(String s) {
		super(s);
	}

}
