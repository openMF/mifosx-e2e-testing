// Copyright (c) 1999-2004 Brian Wellington (bwelling@xbill.org)

package org.xbill.DNS;

// TODO: Auto-generated Javadoc
/**
 * Name Server Record - contains the name server serving the named zone.
 * 
 * @author Brian Wellington
 */

public class NSRecord extends SingleCompressedNameBase {

	/** The Constant serialVersionUID. */
	private static final long serialVersionUID = 487170758138268838L;

	/**
	 * Instantiates a new nS record.
	 */
	NSRecord() {
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see org.xbill.DNS.Record#getObject()
	 */
	Record getObject() {
		return new NSRecord();
	}

	/**
	 * Creates a new NS Record with the given data.
	 * 
	 * @param name
	 *            the name
	 * @param dclass
	 *            the dclass
	 * @param ttl
	 *            the ttl
	 * @param target
	 *            The name server for the given domain
	 */
	public NSRecord(Name name, int dclass, long ttl, Name target) {
		super(name, Type.NS, dclass, ttl, target, "target");
	}

	/**
	 * Gets the target of the NS Record.
	 * 
	 * @return the target
	 */
	public Name getTarget() {
		return getSingleName();
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see org.xbill.DNS.Record#getAdditionalName()
	 */
	public Name getAdditionalName() {
		return getSingleName();
	}

}
