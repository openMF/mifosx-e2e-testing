// Copyright (c) 2003-2004 Brian Wellington (bwelling@xbill.org)

package org.xbill.DNS;

// TODO: Auto-generated Javadoc
/**
 * An exception thrown when an invalid type code is specified.
 * 
 * @author Brian Wellington
 */

public class InvalidTypeException extends IllegalArgumentException {

	/**
	 * Instantiates a new invalid type exception.
	 * 
	 * @param type
	 *            the type
	 */
	public InvalidTypeException(int type) {
		super("Invalid DNS type: " + type);
	}

}
