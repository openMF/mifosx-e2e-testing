// Copyright (c) 1999-2004 Brian Wellington (bwelling@xbill.org)

package org.xbill.DNS;

import java.util.List;

// TODO: Auto-generated Javadoc
/**
 * Text - stores text strings.
 * 
 * @author Brian Wellington
 */

public class TXTRecord extends TXTBase {

	/** The Constant serialVersionUID. */
	private static final long serialVersionUID = -5780785764284221342L;

	/**
	 * Instantiates a new tXT record.
	 */
	TXTRecord() {
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see org.xbill.DNS.Record#getObject()
	 */
	Record getObject() {
		return new TXTRecord();
	}

	/**
	 * Creates a TXT Record from the given data.
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
	public TXTRecord(Name name, int dclass, long ttl, List strings) {
		super(name, Type.TXT, dclass, ttl, strings);
	}

	/**
	 * Creates a TXT Record from the given data.
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
	public TXTRecord(Name name, int dclass, long ttl, String string) {
		super(name, Type.TXT, dclass, ttl, string);
	}

}
