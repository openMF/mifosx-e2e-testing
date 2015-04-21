// Copyright (c) 2004 Brian Wellington (bwelling@xbill.org)

package org.xbill.DNS;

// TODO: Auto-generated Javadoc
/**
 * Implements common functionality for the many record types whose format is a
 * single compressed name.
 * 
 * @author Brian Wellington
 */

abstract class SingleCompressedNameBase extends SingleNameBase {

	/** The Constant serialVersionUID. */
	private static final long serialVersionUID = -236435396815460677L;

	/**
	 * Instantiates a new single compressed name base.
	 */
	protected SingleCompressedNameBase() {
	}

	/**
	 * Instantiates a new single compressed name base.
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
	protected SingleCompressedNameBase(Name name, int type, int dclass,
			long ttl, Name singleName, String description) {
		super(name, type, dclass, ttl, singleName, description);
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see org.xbill.DNS.SingleNameBase#rrToWire(org.xbill.DNS.DNSOutput,
	 * org.xbill.DNS.Compression, boolean)
	 */
	void rrToWire(DNSOutput out, Compression c, boolean canonical) {
		singleName.toWire(out, c, canonical);
	}

}
