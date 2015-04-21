// Copyright (c) 1999-2004 Brian Wellington (bwelling@xbill.org)

package org.xbill.DNS;

// TODO: Auto-generated Javadoc
/**
 * Mailbox Rename Record - specifies a rename of a mailbox.
 * 
 * @author Brian Wellington
 */

public class MRRecord extends SingleNameBase {

	/** The Constant serialVersionUID. */
	private static final long serialVersionUID = -5617939094209927533L;

	/**
	 * Instantiates a new mR record.
	 */
	MRRecord() {
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see org.xbill.DNS.Record#getObject()
	 */
	Record getObject() {
		return new MRRecord();
	}

	/**
	 * Creates a new MR Record with the given data.
	 * 
	 * @param name
	 *            the name
	 * @param dclass
	 *            the dclass
	 * @param ttl
	 *            the ttl
	 * @param newName
	 *            The new name of the mailbox specified by the domain. domain.
	 */
	public MRRecord(Name name, int dclass, long ttl, Name newName) {
		super(name, Type.MR, dclass, ttl, newName, "new name");
	}

	/**
	 * Gets the new name of the mailbox specified by the domain.
	 * 
	 * @return the new name
	 */
	public Name getNewName() {
		return getSingleName();
	}

}
