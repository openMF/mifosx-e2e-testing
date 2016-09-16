// Copyright (c) 1999-2004 Brian Wellington (bwelling@xbill.org)

package org.xbill.DNS;

// TODO: Auto-generated Javadoc
/**
 * CNAME Record - maps an alias to its real name.
 * 
 * @author Brian Wellington
 */

public class CNAMERecord extends SingleCompressedNameBase {

	/** The Constant serialVersionUID. */
	private static final long serialVersionUID = -4020373886892538580L;

	/**
	 * Instantiates a new cNAME record.
	 */
	CNAMERecord() {
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see org.xbill.DNS.Record#getObject()
	 */
	Record getObject() {
		return new CNAMERecord();
	}

	/**
	 * Creates a new CNAMERecord with the given data.
	 * 
	 * @param name
	 *            the name
	 * @param dclass
	 *            the dclass
	 * @param ttl
	 *            the ttl
	 * @param alias
	 *            The name to which the CNAME alias points
	 */
	public CNAMERecord(Name name, int dclass, long ttl, Name alias) {
		super(name, Type.CNAME, dclass, ttl, alias, "alias");
	}

	/**
	 * Gets the target of the CNAME Record.
	 * 
	 * @return the target
	 */
	public Name getTarget() {
		return getSingleName();
	}

	/**
	 * Gets the alias specified by the CNAME Record.
	 * 
	 * @return the alias
	 */
	public Name getAlias() {
		return getSingleName();
	}

}
