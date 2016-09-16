// Copyright (c) 1999-2004 Brian Wellington (bwelling@xbill.org)

package org.xbill.DNS;

import java.io.IOException;
import java.net.InetAddress;

// TODO: Auto-generated Javadoc
/**
 * IPv6 Address Record - maps a domain name to an IPv6 address.
 * 
 * @author Brian Wellington
 */

public class AAAARecord extends Record {

	/** The Constant serialVersionUID. */
	private static final long serialVersionUID = -4588601512069748050L;

	/** The address. */
	private InetAddress address;

	/**
	 * Instantiates a new aAAA record.
	 */
	AAAARecord() {
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see org.xbill.DNS.Record#getObject()
	 */
	Record getObject() {
		return new AAAARecord();
	}

	/**
	 * Creates an AAAA Record from the given data.
	 * 
	 * @param name
	 *            the name
	 * @param dclass
	 *            the dclass
	 * @param ttl
	 *            the ttl
	 * @param address
	 *            The address suffix
	 */
	public AAAARecord(Name name, int dclass, long ttl, InetAddress address) {
		super(name, Type.AAAA, dclass, ttl);
		if (Address.familyOf(address) != Address.IPv6)
			throw new IllegalArgumentException("invalid IPv6 address");
		this.address = address;
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see org.xbill.DNS.Record#rrFromWire(org.xbill.DNS.DNSInput)
	 */
	void rrFromWire(DNSInput in) throws IOException {
		address = InetAddress.getByAddress(in.readByteArray(16));
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see org.xbill.DNS.Record#rdataFromString(org.xbill.DNS.Tokenizer,
	 * org.xbill.DNS.Name)
	 */
	void rdataFromString(Tokenizer st, Name origin) throws IOException {
		address = st.getAddress(Address.IPv6);
	}

	/**
	 * Converts rdata to a String.
	 * 
	 * @return the string
	 */
	String rrToString() {
		return address.getHostAddress();
	}

	/**
	 * Returns the address.
	 * 
	 * @return the address
	 */
	public InetAddress getAddress() {
		return address;
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see org.xbill.DNS.Record#rrToWire(org.xbill.DNS.DNSOutput,
	 * org.xbill.DNS.Compression, boolean)
	 */
	void rrToWire(DNSOutput out, Compression c, boolean canonical) {
		out.writeByteArray(address.getAddress());
	}

}
