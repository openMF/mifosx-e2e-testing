// Copyright (c) 2004 Brian Wellington (bwelling@xbill.org)

package org.xbill.DNS;

import java.io.IOException;

// TODO: Auto-generated Javadoc
/**
 * Mailbox information Record - lists the address responsible for a mailing
 * list/mailbox and the address to receive error messages relating to the
 * mailing list/mailbox.
 * 
 * @author Brian Wellington
 */

public class MINFORecord extends Record {

	/** The Constant serialVersionUID. */
	private static final long serialVersionUID = -3962147172340353796L;

	/** The responsible address. */
	private Name responsibleAddress;

	/** The error address. */
	private Name errorAddress;

	/**
	 * Instantiates a new mINFO record.
	 */
	MINFORecord() {
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see org.xbill.DNS.Record#getObject()
	 */
	Record getObject() {
		return new MINFORecord();
	}

	/**
	 * Creates an MINFO Record from the given data.
	 * 
	 * @param name
	 *            the name
	 * @param dclass
	 *            the dclass
	 * @param ttl
	 *            the ttl
	 * @param responsibleAddress
	 *            The address responsible for the mailing list/mailbox.
	 * @param errorAddress
	 *            The address to receive error messages relating to the mailing
	 *            list/mailbox.
	 */
	public MINFORecord(Name name, int dclass, long ttl,
			Name responsibleAddress, Name errorAddress) {
		super(name, Type.MINFO, dclass, ttl);

		this.responsibleAddress = checkName("responsibleAddress",
				responsibleAddress);
		this.errorAddress = checkName("errorAddress", errorAddress);
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see org.xbill.DNS.Record#rrFromWire(org.xbill.DNS.DNSInput)
	 */
	void rrFromWire(DNSInput in) throws IOException {
		responsibleAddress = new Name(in);
		errorAddress = new Name(in);
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see org.xbill.DNS.Record#rdataFromString(org.xbill.DNS.Tokenizer,
	 * org.xbill.DNS.Name)
	 */
	void rdataFromString(Tokenizer st, Name origin) throws IOException {
		responsibleAddress = st.getName(origin);
		errorAddress = st.getName(origin);
	}

	/**
	 * Converts the MINFO Record to a String.
	 * 
	 * @return the string
	 */
	String rrToString() {
		StringBuffer sb = new StringBuffer();
		sb.append(responsibleAddress);
		sb.append(" ");
		sb.append(errorAddress);
		return sb.toString();
	}

	/**
	 * Gets the address responsible for the mailing list/mailbox.
	 * 
	 * @return the responsible address
	 */
	public Name getResponsibleAddress() {
		return responsibleAddress;
	}

	/**
	 * Gets the address to receive error messages relating to the mailing
	 * list/mailbox.
	 * 
	 * @return the error address
	 */
	public Name getErrorAddress() {
		return errorAddress;
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see org.xbill.DNS.Record#rrToWire(org.xbill.DNS.DNSOutput,
	 * org.xbill.DNS.Compression, boolean)
	 */
	void rrToWire(DNSOutput out, Compression c, boolean canonical) {
		responsibleAddress.toWire(out, null, canonical);
		errorAddress.toWire(out, null, canonical);
	}

}
