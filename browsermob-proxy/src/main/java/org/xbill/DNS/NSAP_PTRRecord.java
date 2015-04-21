// Copyright (c) 1999-2004 Brian Wellington (bwelling@xbill.org)

package org.xbill.DNS;

// TODO: Auto-generated Javadoc
/**
 * NSAP Pointer Record - maps a domain name representing an NSAP Address to a
 * hostname.
 * 
 * @author Brian Wellington
 */

public class NSAP_PTRRecord extends SingleNameBase {

	/** The Constant serialVersionUID. */
	private static final long serialVersionUID = 2386284746382064904L;

	/**
	 * Instantiates a new nSA p_ ptr record.
	 */
	NSAP_PTRRecord() {
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see org.xbill.DNS.Record#getObject()
	 */
	Record getObject() {
		return new NSAP_PTRRecord();
	}

	/**
	 * Creates a new NSAP_PTR Record with the given data.
	 * 
	 * @param name
	 *            the name
	 * @param dclass
	 *            the dclass
	 * @param ttl
	 *            the ttl
	 * @param target
	 *            The name of the host with this address
	 */
	public NSAP_PTRRecord(Name name, int dclass, long ttl, Name target) {
		super(name, Type.NSAP_PTR, dclass, ttl, target, "target");
	}

	/**
	 * Gets the target of the NSAP_PTR Record.
	 * 
	 * @return the target
	 */
	public Name getTarget() {
		return getSingleName();
	}

}
