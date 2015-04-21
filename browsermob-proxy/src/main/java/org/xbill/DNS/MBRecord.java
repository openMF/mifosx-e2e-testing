// Copyright (c) 1999-2004 Brian Wellington (bwelling@xbill.org)

package org.xbill.DNS;

// TODO: Auto-generated Javadoc
/**
 * Mailbox Record - specifies a host containing a mailbox.
 * 
 * @author Brian Wellington
 */

public class MBRecord extends SingleNameBase {

	/** The Constant serialVersionUID. */
	private static final long serialVersionUID = 532349543479150419L;

	/**
	 * Instantiates a new mB record.
	 */
	MBRecord() {
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see org.xbill.DNS.Record#getObject()
	 */
	Record getObject() {
		return new MBRecord();
	}

	/**
	 * Creates a new MB Record with the given data.
	 * 
	 * @param name
	 *            the name
	 * @param dclass
	 *            the dclass
	 * @param ttl
	 *            the ttl
	 * @param mailbox
	 *            The host containing the mailbox for the domain.
	 */
	public MBRecord(Name name, int dclass, long ttl, Name mailbox) {
		super(name, Type.MB, dclass, ttl, mailbox, "mailbox");
	}

	/**
	 * Gets the mailbox for the domain.
	 * 
	 * @return the mailbox
	 */
	public Name getMailbox() {
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
