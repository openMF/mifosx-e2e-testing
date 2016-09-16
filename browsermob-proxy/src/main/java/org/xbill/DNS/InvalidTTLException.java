// Copyright (c) 2003-2004 Brian Wellington (bwelling@xbill.org)

package org.xbill.DNS;

// TODO: Auto-generated Javadoc
/**
 * An exception thrown when an invalid TTL is specified.
 * 
 * @author Brian Wellington
 */

public class InvalidTTLException extends IllegalArgumentException {

	/**
	 * Instantiates a new invalid ttl exception.
	 * 
	 * @param ttl
	 *            the ttl
	 */
	public InvalidTTLException(long ttl) {
		super("Invalid DNS TTL: " + ttl);
	}

}
