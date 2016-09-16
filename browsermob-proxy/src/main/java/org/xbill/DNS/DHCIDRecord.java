// Copyright (c) 2008 Brian Wellington (bwelling@xbill.org)

package org.xbill.DNS;

import org.xbill.DNS.utils.base64;

import java.io.IOException;

// TODO: Auto-generated Javadoc
/**
 * DHCID - Dynamic Host Configuration Protocol (DHCP) ID (RFC 4701).
 * 
 * @author Brian Wellington
 */

public class DHCIDRecord extends Record {

	/** The Constant serialVersionUID. */
	private static final long serialVersionUID = -8214820200808997707L;

	/** The data. */
	private byte[] data;

	/**
	 * Instantiates a new dHCID record.
	 */
	DHCIDRecord() {
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see org.xbill.DNS.Record#getObject()
	 */
	Record getObject() {
		return new DHCIDRecord();
	}

	/**
	 * Creates an DHCID Record from the given data.
	 * 
	 * @param name
	 *            the name
	 * @param dclass
	 *            the dclass
	 * @param ttl
	 *            the ttl
	 * @param data
	 *            The binary data, which is opaque to DNS.
	 */
	public DHCIDRecord(Name name, int dclass, long ttl, byte[] data) {
		super(name, Type.DHCID, dclass, ttl);
		this.data = data;
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see org.xbill.DNS.Record#rrFromWire(org.xbill.DNS.DNSInput)
	 */
	void rrFromWire(DNSInput in) throws IOException {
		data = in.readByteArray();
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see org.xbill.DNS.Record#rdataFromString(org.xbill.DNS.Tokenizer,
	 * org.xbill.DNS.Name)
	 */
	void rdataFromString(Tokenizer st, Name origin) throws IOException {
		data = st.getBase64();
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see org.xbill.DNS.Record#rrToWire(org.xbill.DNS.DNSOutput,
	 * org.xbill.DNS.Compression, boolean)
	 */
	void rrToWire(DNSOutput out, Compression c, boolean canonical) {
		out.writeByteArray(data);
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see org.xbill.DNS.Record#rrToString()
	 */
	String rrToString() {
		return base64.toString(data);
	}

	/**
	 * Returns the binary data.
	 * 
	 * @return the data
	 */
	public byte[] getData() {
		return data;
	}

}
