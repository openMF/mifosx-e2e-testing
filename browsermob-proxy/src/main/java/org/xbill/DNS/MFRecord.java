// Copyright (c) 1999-2004 Brian Wellington (bwelling@xbill.org)

package org.xbill.DNS;

// TODO: Auto-generated Javadoc
/**
 * Mail Forwarder Record - specifies a mail agent which forwards mail for a
 * domain (obsolete).
 * 
 * @author Brian Wellington
 */

public class MFRecord extends SingleNameBase {

	/** The Constant serialVersionUID. */
	private static final long serialVersionUID = -6670449036843028169L;

	/**
	 * Instantiates a new mF record.
	 */
	MFRecord() {
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see org.xbill.DNS.Record#getObject()
	 */
	Record getObject() {
		return new MFRecord();
	}

	/**
	 * Creates a new MF Record with the given data.
	 * 
	 * @param name
	 *            the name
	 * @param dclass
	 *            the dclass
	 * @param ttl
	 *            the ttl
	 * @param mailAgent
	 *            The mail agent that forwards mail for the domain.
	 */
	public MFRecord(Name name, int dclass, long ttl, Name mailAgent) {
		super(name, Type.MF, dclass, ttl, mailAgent, "mail agent");
	}

	/**
	 * Gets the mail agent for the domain.
	 * 
	 * @return the mail agent
	 */
	public Name getMailAgent() {
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
