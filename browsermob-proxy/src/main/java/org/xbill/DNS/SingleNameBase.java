// Copyright (c) 2004 Brian Wellington (bwelling@xbill.org)

package org.xbill.DNS;

import java.io.IOException;

// TODO: Auto-generated Javadoc
/**
 * Implements common functionality for the many record types whose format is a
 * single name.
 * 
 * @author Brian Wellington
 */

abstract class SingleNameBase extends Record {

	/** The Constant serialVersionUID. */
	private static final long serialVersionUID = -18595042501413L;

	/** The single name. */
	protected Name singleName;

	/**
	 * Instantiates a new single name base.
	 */
	protected SingleNameBase() {
	}

	/**
	 * Instantiates a new single name base.
	 * 
	 * @param name
	 *            the name
	 * @param type
	 *            the type
	 * @param dclass
	 *            the dclass
	 * @param ttl
	 *            the ttl
	 */
	protected SingleNameBase(Name name, int type, int dclass, long ttl) {
		super(name, type, dclass, ttl);
	}

	/**
	 * Instantiates a new single name base.
	 * 
	 * @param name
	 *            the name
	 * @param type
	 *            the type
	 * @param dclass
	 *            the dclass
	 * @param ttl
	 *            the ttl
	 * @param singleName
	 *            the single name
	 * @param description
	 *            the description
	 */
	protected SingleNameBase(Name name, int type, int dclass, long ttl,
			Name singleName, String description) {
		super(name, type, dclass, ttl);
		this.singleName = checkName(description, singleName);
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see org.xbill.DNS.Record#rrFromWire(org.xbill.DNS.DNSInput)
	 */
	void rrFromWire(DNSInput in) throws IOException {
		singleName = new Name(in);
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see org.xbill.DNS.Record#rdataFromString(org.xbill.DNS.Tokenizer,
	 * org.xbill.DNS.Name)
	 */
	void rdataFromString(Tokenizer st, Name origin) throws IOException {
		singleName = st.getName(origin);
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see org.xbill.DNS.Record#rrToString()
	 */
	String rrToString() {
		return singleName.toString();
	}

	/**
	 * Gets the single name.
	 * 
	 * @return the single name
	 */
	protected Name getSingleName() {
		return singleName;
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see org.xbill.DNS.Record#rrToWire(org.xbill.DNS.DNSOutput,
	 * org.xbill.DNS.Compression, boolean)
	 */
	void rrToWire(DNSOutput out, Compression c, boolean canonical) {
		singleName.toWire(out, null, canonical);
	}

}
