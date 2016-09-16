// Copyright (c) 1999-2004 Brian Wellington (bwelling@xbill.org)

package org.xbill.DNS;

import java.io.IOException;
import java.net.InetAddress;
import java.net.UnknownHostException;

// TODO: Auto-generated Javadoc
/**
 * A6 Record - maps a domain name to an IPv6 address (experimental).
 * 
 * @author Brian Wellington
 */

public class A6Record extends Record {

	/** The Constant serialVersionUID. */
	private static final long serialVersionUID = -8815026887337346789L;

	/** The prefix bits. */
	private int prefixBits;

	/** The suffix. */
	private InetAddress suffix;

	/** The prefix. */
	private Name prefix;

	/**
	 * Instantiates a new a6 record.
	 */
	A6Record() {
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see org.xbill.DNS.Record#getObject()
	 */
	Record getObject() {
		return new A6Record();
	}

	/**
	 * Creates an A6 Record from the given data.
	 * 
	 * @param name
	 *            the name
	 * @param dclass
	 *            the dclass
	 * @param ttl
	 *            the ttl
	 * @param prefixBits
	 *            The number of bits in the address prefix
	 * @param suffix
	 *            The address suffix
	 * @param prefix
	 *            The name of the prefix
	 */
	public A6Record(Name name, int dclass, long ttl, int prefixBits,
			InetAddress suffix, Name prefix) {
		super(name, Type.A6, dclass, ttl);
		this.prefixBits = checkU8("prefixBits", prefixBits);
		if (suffix != null && Address.familyOf(suffix) != Address.IPv6)
			throw new IllegalArgumentException("invalid IPv6 address");
		this.suffix = suffix;
		if (prefix != null)
			this.prefix = checkName("prefix", prefix);
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see org.xbill.DNS.Record#rrFromWire(org.xbill.DNS.DNSInput)
	 */
	void rrFromWire(DNSInput in) throws IOException {
		prefixBits = in.readU8();
		int suffixbits = 128 - prefixBits;
		int suffixbytes = (suffixbits + 7) / 8;
		if (prefixBits < 128) {
			byte[] bytes = new byte[16];
			in.readByteArray(bytes, 16 - suffixbytes, suffixbytes);
			suffix = InetAddress.getByAddress(bytes);
		}
		if (prefixBits > 0)
			prefix = new Name(in);
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see org.xbill.DNS.Record#rdataFromString(org.xbill.DNS.Tokenizer,
	 * org.xbill.DNS.Name)
	 */
	void rdataFromString(Tokenizer st, Name origin) throws IOException {
		prefixBits = st.getUInt8();
		if (prefixBits > 128) {
			throw st.exception("prefix bits must be [0..128]");
		} else if (prefixBits < 128) {
			String s = st.getString();
			try {
				suffix = Address.getByAddress(s, Address.IPv6);
			} catch (UnknownHostException e) {
				throw st.exception("invalid IPv6 address: " + s);
			}
		}
		if (prefixBits > 0)
			prefix = st.getName(origin);
	}

	/**
	 * Converts rdata to a String.
	 * 
	 * @return the string
	 */
	String rrToString() {
		StringBuffer sb = new StringBuffer();
		sb.append(prefixBits);
		if (suffix != null) {
			sb.append(" ");
			sb.append(suffix.getHostAddress());
		}
		if (prefix != null) {
			sb.append(" ");
			sb.append(prefix);
		}
		return sb.toString();
	}

	/**
	 * Returns the number of bits in the prefix.
	 * 
	 * @return the prefix bits
	 */
	public int getPrefixBits() {
		return prefixBits;
	}

	/**
	 * Returns the address suffix.
	 * 
	 * @return the suffix
	 */
	public InetAddress getSuffix() {
		return suffix;
	}

	/**
	 * Returns the address prefix.
	 * 
	 * @return the prefix
	 */
	public Name getPrefix() {
		return prefix;
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see org.xbill.DNS.Record#rrToWire(org.xbill.DNS.DNSOutput,
	 * org.xbill.DNS.Compression, boolean)
	 */
	void rrToWire(DNSOutput out, Compression c, boolean canonical) {
		out.writeU8(prefixBits);
		if (suffix != null) {
			int suffixbits = 128 - prefixBits;
			int suffixbytes = (suffixbits + 7) / 8;
			byte[] data = suffix.getAddress();
			out.writeByteArray(data, 16 - suffixbytes, suffixbytes);
		}
		if (prefix != null)
			prefix.toWire(out, null, canonical);
	}

}
