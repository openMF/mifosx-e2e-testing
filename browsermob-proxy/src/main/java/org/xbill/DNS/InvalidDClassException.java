// Copyright (c) 2003-2004 Brian Wellington (bwelling@xbill.org)

package org.xbill.DNS;

// TODO: Auto-generated Javadoc
/**
 * An exception thrown when an invalid dclass code is specified.
 * 
 * @author Brian Wellington
 */

public class InvalidDClassException extends IllegalArgumentException {

	/**
	 * Instantiates a new invalid d class exception.
	 * 
	 * @param dclass
	 *            the dclass
	 */
	public InvalidDClassException(int dclass) {
		super("Invalid DNS class: " + dclass);
	}

}
