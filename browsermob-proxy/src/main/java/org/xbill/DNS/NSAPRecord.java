// Copyright (c) 2004 Brian Wellington (bwelling@xbill.org)

package org.xbill.DNS;

import org.xbill.DNS.utils.base16;

import java.io.ByteArrayOutputStream;
import java.io.IOException;

// TODO: Auto-generated Javadoc
/**
 * NSAP Address Record.
 * 
 * @author Brian Wellington
 */

public class NSAPRecord extends Record {

	/** The Constant serialVersionUID. */
	private static final long serialVersionUID = -1037209403185658593L;

	/** The address. */
	private byte[] address;

	/**
	 * Instantiates a new nSAP record.
	 */
	NSAPRecord() {
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see org.xbill.DNS.Record#getObject()
	 */
	Record getObject() {
		return new NSAPRecord();
	}

	/**
	 * Check and convert address.
	 * 
	 * @param address
	 *            the address
	 * @return the byte[]
	 */
	private static final byte[] checkAndConvertAddress(String address) {
		if (!address.substring(0, 2).equalsIgnoreCase("0x")) {
			return null;
		}
		ByteArrayOutputStream bytes = new ByteArrayOutputStream();
		boolean partial = false;
		int current = 0;
		for (int i = 2; i < address.length(); i++) {
			char c = address.charAt(i);
			if (c == '.') {
				continue;
			}
			int value = Character.digit(c, 16);
			if (value == -1) {
				return null;
			}
			if (partial) {
				current += value;
				bytes.write(current);
				partial = false;
			} else {
				current = value << 4;
				partial = true;
			}

		}
		if (partial) {
			return null;
		}
		return bytes.toByteArray();
	}

	/**
	 * Creates an NSAP Record from the given data.
	 * 
	 * @param name
	 *            the name
	 * @param dclass
	 *            the dclass
	 * @param ttl
	 *            the ttl
	 * @param address
	 *            The NSAP address.
	 */
	public NSAPRecord(Name name, int dclass, long ttl, String address) {
		super(name, Type.NSAP, dclass, ttl);
		this.address = checkAndConvertAddress(address);
		if (this.address == null) {
			throw new IllegalArgumentException("invalid NSAP address "
					+ address);
		}
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see org.xbill.DNS.Record#rrFromWire(org.xbill.DNS.DNSInput)
	 */
	void rrFromWire(DNSInput in) throws IOException {
		address = in.readByteArray();
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
			throw st.exception("invalid NSAP address " + addr);
	}

	/**
	 * Returns the NSAP address.
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
		out.writeByteArray(address);
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see org.xbill.DNS.Record#rrToString()
	 */
	String rrToString() {
		return "0x" + base16.toString(address);
	}

}
