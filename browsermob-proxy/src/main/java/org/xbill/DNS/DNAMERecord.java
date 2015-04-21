// Copyright (c) 1999-2004 Brian Wellington (bwelling@xbill.org)

package org.xbill.DNS;

// TODO: Auto-generated Javadoc
/**
 * DNAME Record - maps a nonterminal alias (subtree) to a different domain.
 * 
 * @author Brian Wellington
 */

public class DNAMERecord extends SingleNameBase {

	/** The Constant serialVersionUID. */
	private static final long serialVersionUID = 2670767677200844154L;

	/**
	 * Instantiates a new dNAME record.
	 */
	DNAMERecord() {
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see org.xbill.DNS.Record#getObject()
	 */
	Record getObject() {
		return new DNAMERecord();
	}

	/**
	 * Creates a new DNAMERecord with the given data.
	 * 
	 * @param name
	 *            the name
	 * @param dclass
	 *            the dclass
	 * @param ttl
	 *            the ttl
	 * @param alias
	 *            The name to which the DNAME alias points
	 */
	public DNAMERecord(Name name, int dclass, long ttl, Name alias) {
		super(name, Type.DNAME, dclass, ttl, alias, "alias");
	}

	/**
	 * Gets the target of the DNAME Record.
	 * 
	 * @return the target
	 */
	public Name getTarget() {
		return getSingleName();
	}

	/**
	 * Gets the alias specified by the DNAME Record.
	 * 
	 * @return the alias
	 */
	public Name getAlias() {
		return getSingleName();
	}

}
