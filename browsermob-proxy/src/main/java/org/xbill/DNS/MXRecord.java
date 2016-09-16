// Copyright (c) 1999-2004 Brian Wellington (bwelling@xbill.org)

package org.xbill.DNS;

// TODO: Auto-generated Javadoc
/**
 * Mail Exchange - specifies where mail to a domain is sent.
 * 
 * @author Brian Wellington
 */

public class MXRecord extends U16NameBase {

	/** The Constant serialVersionUID. */
	private static final long serialVersionUID = 2914841027584208546L;

	/**
	 * Instantiates a new mX record.
	 */
	MXRecord() {
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see org.xbill.DNS.Record#getObject()
	 */
	Record getObject() {
		return new MXRecord();
	}

	/**
	 * Creates an MX Record from the given data.
	 * 
	 * @param name
	 *            the name
	 * @param dclass
	 *            the dclass
	 * @param ttl
	 *            the ttl
	 * @param priority
	 *            The priority of this MX. Records with lower priority are
	 *            preferred.
	 * @param target
	 *            The host that mail is sent to
	 */
	public MXRecord(Name name, int dclass, long ttl, int priority, Name target) {
		super(name, Type.MX, dclass, ttl, priority, "priority", target,
				"target");
	}

	/**
	 * Returns the target of the MX record.
	 * 
	 * @return the target
	 */
	public Name getTarget() {
		return getNameField();
	}

	/**
	 * Returns the priority of this MX record.
	 * 
	 * @return the priority
	 */
	public int getPriority() {
		return getU16Field();
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see org.xbill.DNS.U16NameBase#rrToWire(org.xbill.DNS.DNSOutput,
	 * org.xbill.DNS.Compression, boolean)
	 */
	void rrToWire(DNSOutput out, Compression c, boolean canonical) {
		out.writeU16(u16Field);
		nameField.toWire(out, c, canonical);
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see org.xbill.DNS.Record#getAdditionalName()
	 */
	public Name getAdditionalName() {
		return getNameField();
	}

}
