// Copyright (c) 1999-2004 Brian Wellington (bwelling@xbill.org)

package org.xbill.DNS;

// TODO: Auto-generated Javadoc
/**
 * Pointer Record - maps a domain name representing an Internet Address to a
 * hostname.
 * 
 * @author Brian Wellington
 */

public class PTRRecord extends SingleCompressedNameBase {

	/** The Constant serialVersionUID. */
	private static final long serialVersionUID = -8321636610425434192L;

	/**
	 * Instantiates a new pTR record.
	 */
	PTRRecord() {
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see org.xbill.DNS.Record#getObject()
	 */
	Record getObject() {
		return new PTRRecord();
	}

	/**
	 * Creates a new PTR Record with the given data.
	 * 
	 * @param name
	 *            the name
	 * @param dclass
	 *            the dclass
	 * @param ttl
	 *            the ttl
	 * @param target
	 *            The name of the machine with this address
	 */
	public PTRRecord(Name name, int dclass, long ttl, Name target) {
		super(name, Type.PTR, dclass, ttl, target, "target");
	}

	/**
	 * Gets the target of the PTR Record.
	 * 
	 * @return the target
	 */
	public Name getTarget() {
		return getSingleName();
	}

}
