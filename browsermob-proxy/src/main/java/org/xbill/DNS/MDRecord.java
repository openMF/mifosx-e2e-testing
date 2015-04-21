// Copyright (c) 1999-2004 Brian Wellington (bwelling@xbill.org)

package org.xbill.DNS;

// TODO: Auto-generated Javadoc
/**
 * Mail Destination Record - specifies a mail agent which delivers mail for a
 * domain (obsolete).
 * 
 * @author Brian Wellington
 */

public class MDRecord extends SingleNameBase {

	/** The Constant serialVersionUID. */
	private static final long serialVersionUID = 5268878603762942202L;

	/**
	 * Instantiates a new mD record.
	 */
	MDRecord() {
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see org.xbill.DNS.Record#getObject()
	 */
	Record getObject() {
		return new MDRecord();
	}

	/**
	 * Creates a new MD Record with the given data.
	 * 
	 * @param name
	 *            the name
	 * @param dclass
	 *            the dclass
	 * @param ttl
	 *            the ttl
	 * @param mailAgent
	 *            The mail agent that delivers mail for the domain.
	 */
	public MDRecord(Name name, int dclass, long ttl, Name mailAgent) {
		super(name, Type.MD, dclass, ttl, mailAgent, "mail agent");
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
