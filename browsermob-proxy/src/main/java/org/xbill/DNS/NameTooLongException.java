// Copyright (c) 2002-2004 Brian Wellington (bwelling@xbill.org)

package org.xbill.DNS;

// TODO: Auto-generated Javadoc
/**
 * An exception thrown when a name is longer than the maximum length of a DNS
 * name.
 * 
 * @author Brian Wellington
 */

public class NameTooLongException extends WireParseException {

	/**
	 * Instantiates a new name too long exception.
	 */
	public NameTooLongException() {
		super();
	}

	/**
	 * Instantiates a new name too long exception.
	 * 
	 * @param s
	 *            the s
	 */
	public NameTooLongException(String s) {
		super(s);
	}

}
