// Copyright (c) 2003-2004 Brian Wellington (bwelling@xbill.org)

package org.xbill.DNS;

// TODO: Auto-generated Javadoc
/**
 * An exception thrown when a relative name is passed as an argument to a method
 * requiring an absolute name.
 * 
 * @author Brian Wellington
 */

public class RelativeNameException extends IllegalArgumentException {

	/**
	 * Instantiates a new relative name exception.
	 * 
	 * @param name
	 *            the name
	 */
	public RelativeNameException(Name name) {
		super("'" + name + "' is not an absolute name");
	}

	/**
	 * Instantiates a new relative name exception.
	 * 
	 * @param s
	 *            the s
	 */
	public RelativeNameException(String s) {
		super(s);
	}

}
