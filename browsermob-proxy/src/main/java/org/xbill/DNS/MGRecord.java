// Copyright (c) 1999-2004 Brian Wellington (bwelling@xbill.org)

package org.xbill.DNS;

// TODO: Auto-generated Javadoc
/**
 * Mail Group Record - specifies a mailbox which is a member of a mail group.
 * 
 * @author Brian Wellington
 */

public class MGRecord extends SingleNameBase {

	/** The Constant serialVersionUID. */
	private static final long serialVersionUID = -3980055550863644582L;

	/**
	 * Instantiates a new mG record.
	 */
	MGRecord() {
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see org.xbill.DNS.Record#getObject()
	 */
	Record getObject() {
		return new MGRecord();
	}

	/**
	 * Creates a new MG Record with the given data.
	 * 
	 * @param name
	 *            the name
	 * @param dclass
	 *            the dclass
	 * @param ttl
	 *            the ttl
	 * @param mailbox
	 *            The mailbox that is a member of the group specified by the
	 *            domain.
	 */
	public MGRecord(Name name, int dclass, long ttl, Name mailbox) {
		super(name, Type.MG, dclass, ttl, mailbox, "mailbox");
	}

	/**
	 * Gets the mailbox in the mail group specified by the domain.
	 * 
	 * @return the mailbox
	 */
	public Name getMailbox() {
		return getSingleName();
	}

}
