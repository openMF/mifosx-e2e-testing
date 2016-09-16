// Copyright (c) 2004 Brian Wellington (bwelling@xbill.org)

package org.xbill.DNS;

import java.io.IOException;

// TODO: Auto-generated Javadoc
/**
 * X25 - identifies the PSDN (Public Switched Data Network) address in the X.121
 * numbering plan associated with a name.
 * 
 * @author Brian Wellington
 */

public class X25Record extends Record {

	/** The Constant serialVersionUID. */
	private static final long serialVersionUID = 4267576252335579764L;

	/** The address. */
	private byte[] address;

	/**
	 * Instantiates a new x25 record.
	 */
	X25Record() {
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see org.xbill.DNS.Record#getObject()
	 */
	Record getObject() {
		return new X25Record();
	}

	/**
	 * Check and convert address.
	 * 
	 * @param address
	 *            the address
	 * @return the byte[]
	 */
	private static final byte[] checkAndConvertAddress(String address) {
		int length = address.length();
		byte[] out = new byte[length];
		for (int i = 0; i < length; i++) {
			char c = address.charAt(i);
			if (!Character.isDigit(c))
				return null;
			out[i] = (byte) c;
		}
		return out;
	}

	/**
	 * Creates an X25 Record from the given data.
	 * 
	 * @param name
	 *            the name
	 * @param dclass
	 *            the dclass
	 * @param ttl
	 *            the ttl
	 * @param address
	 *            The X.25 PSDN address.
	 */
	public X25Record(Name name, int dclass, long ttl, String address) {
		super(name, Type.X25, dclass, ttl);
		this.address = checkAndConvertAddress(address);
		if (this.address == null) {
			throw new IllegalArgumentException("invalid PSDN address "
					+ address);
		}
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see org.xbill.DNS.Record#rrFromWire(org.xbill.DNS.DNSInput)
	 */
	void rrFromWire(DNSInput in) throws IOException {
		address = in.readCountedString();
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see org.xbill.DNS.Record#rdataFromString(org.xbill.DNS.Tokenizer,
	 * org.xbill.DNS.Name)
	 */
	void rdataFromString(Tokenizer st, Name origin) throws IOException {
		String addr = st.getString();
		this.address = checkAndConvertAddress(addr);
		if (this.address == null)
			throw st.exception("invalid PSDN address " + addr);
	}

	/**
	 * Returns the X.25 PSDN address.
	 * 
	 * @return the address
	 */
	public String getAddress() {
		return byteArrayToString(address, false);
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see org.xbill.DNS.Record#rrToWire(org.xbill.DNS.DNSOutput,
	 * org.xbill.DNS.Compression, boolean)
	 */
	void rrToWire(DNSOutput out, Compression c, boolean canonical) {
		out.writeCountedString(address);
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see org.xbill.DNS.Record#rrToString()
	 */
	String rrToString() {
		return byteArrayToString(address, true);
	}

}
