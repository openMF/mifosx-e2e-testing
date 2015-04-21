// Copyright (c) 1999-2004 Brian Wellington (bwelling@xbill.org)

package org.xbill.DNS;

import java.util.List;

// TODO: Auto-generated Javadoc
/**
 * Sender Policy Framework (RFC 4408, experimental).
 * 
 * @author Brian Wellington
 */

public class SPFRecord extends TXTBase {

	/** The Constant serialVersionUID. */
	private static final long serialVersionUID = -2100754352801658722L;

	/**
	 * Instantiates a new sPF record.
	 */
	SPFRecord() {
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see org.xbill.DNS.Record#getObject()
	 */
	Record getObject() {
		return new SPFRecord();
	}

	/**
	 * Creates a SPF Record from the given data.
	 * 
	 * @param name
	 *            the name
	 * @param dclass
	 *            the dclass
	 * @param ttl
	 *            the ttl
	 * @param strings
	 *            The text strings
	 */
	public SPFRecord(Name name, int dclass, long ttl, List strings) {
		super(name, Type.SPF, dclass, ttl, strings);
	}

	/**
	 * Creates a SPF Record from the given data.
	 * 
	 * @param name
	 *            the name
	 * @param dclass
	 *            the dclass
	 * @param ttl
	 *            the ttl
	 * @param string
	 *            One text string
	 */
	public SPFRecord(Name name, int dclass, long ttl, String string) {
		super(name, Type.SPF, dclass, ttl, string);
	}

}
