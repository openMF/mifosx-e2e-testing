// Copyright (c) 2004 Brian Wellington (bwelling@xbill.org)

package org.xbill.DNS;

import java.io.IOException;

// TODO: Auto-generated Javadoc
/**
 * ISDN - identifies the ISDN number and subaddress associated with a name.
 * 
 * @author Brian Wellington
 */

public class ISDNRecord extends Record {

	/** The Constant serialVersionUID. */
	private static final long serialVersionUID = -8730801385178968798L;

	/** The address. */
	private byte[] address;

	/** The sub address. */
	private byte[] subAddress;

	/**
	 * Instantiates a new iSDN record.
	 */
	ISDNRecord() {
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see org.xbill.DNS.Record#getObject()
	 */
	Record getObject() {
		return new ISDNRecord();
	}

	/**
	 * Creates an ISDN Record from the given data.
	 * 
	 * @param name
	 *            the name
	 * @param dclass
	 *            the dclass
	 * @param ttl
	 *            the ttl
	 * @param address
	 *            The ISDN number associated with the domain.
	 * @param subAddress
	 *            The subaddress, if any.
	 */
	public ISDNRecord(Name name, int dclass, long ttl, String address,
			String subAddress) {
		super(name, Type.ISDN, dclass, ttl);
		try {
			this.address = byteArrayFromString(address);
			if (subAddress != null)
				this.subAddress = byteArrayFromString(subAddress);
		} catch (TextParseException e) {
			throw new IllegalArgumentException(e.getMessage());
		}
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see org.xbill.DNS.Record#rrFromWire(org.xbill.DNS.DNSInput)
	 */
	void rrFromWire(DNSInput in) throws IOException {
		address = in.readCountedString();
		if (in.remaining() > 0)
			subAddress = in.readCountedString();
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see org.xbill.DNS.Record#rdataFromString(org.xbill.DNS.Tokenizer,
	 * org.xbill.DNS.Name)
	 */
	void rdataFromString(Tokenizer st, Name origin) throws IOException {
		try {
			address = byteArrayFromString(st.getString());
			Tokenizer.Token t = st.get();
			if (t.isString()) {
				subAddress = byteArrayFromString(t.value);
			} else {
				st.unget();
			}
		} catch (TextParseException e) {
			throw st.exception(e.getMessage());
		}
	}

	/**
	 * Returns the ISDN number associated with the domain.
	 * 
	 * @return the address
	 */
	public String getAddress() {
		return byteArrayToString(address, false);
	}

	/**
	 * Returns the ISDN subaddress, or null if there is none.
	 * 
	 * @return the sub address
	 */
	public String getSubAddress() {
		if (subAddress == null)
			return null;
		return byteArrayToString(subAddress, false);
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see org.xbill.DNS.Record#rrToWire(org.xbill.DNS.DNSOutput,
	 * org.xbill.DNS.Compression, boolean)
	 */
	void rrToWire(DNSOutput out, Compression c, boolean canonical) {
		out.writeCountedString(address);
		if (subAddress != null)
			out.writeCountedString(subAddress);
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see org.xbill.DNS.Record#rrToString()
	 */
	String rrToString() {
		StringBuffer sb = new StringBuffer();
		sb.append(byteArrayToString(address, true));
		if (subAddress != null) {
			sb.append(" ");
			sb.append(byteArrayToString(subAddress, true));
		}
		return sb.toString();
	}

}
