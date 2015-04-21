// Copyright (c) 2000-2004 Brian Wellington (bwelling@xbill.org)

package org.xbill.DNS;

import java.io.IOException;

// TODO: Auto-generated Javadoc
/**
 * Name Authority Pointer Record - specifies rewrite rule, that when applied to
 * an existing string will produce a new domain.
 * 
 * @author Chuck Santos
 */

public class NAPTRRecord extends Record {

	/** The Constant serialVersionUID. */
	private static final long serialVersionUID = 5191232392044947002L;

	/** The preference. */
	private int order, preference;

	/** The regexp. */
	private byte[] flags, service, regexp;

	/** The replacement. */
	private Name replacement;

	/**
	 * Instantiates a new nAPTR record.
	 */
	NAPTRRecord() {
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see org.xbill.DNS.Record#getObject()
	 */
	Record getObject() {
		return new NAPTRRecord();
	}

	/**
	 * Creates an NAPTR Record from the given data.
	 * 
	 * @param name
	 *            the name
	 * @param dclass
	 *            the dclass
	 * @param ttl
	 *            the ttl
	 * @param order
	 *            The order of this NAPTR. Records with lower order are
	 *            preferred.
	 * @param preference
	 *            The preference, used to select between records at the same
	 *            order.
	 * @param flags
	 *            The control aspects of the NAPTRRecord.
	 * @param service
	 *            The service or protocol available down the rewrite path.
	 * @param regexp
	 *            The regular/substitution expression.
	 * @param replacement
	 *            The domain-name to query for the next DNS resource record,
	 *            depending on the value of the flags field.
	 */
	public NAPTRRecord(Name name, int dclass, long ttl, int order,
			int preference, String flags, String service, String regexp,
			Name replacement) {
		super(name, Type.NAPTR, dclass, ttl);
		this.order = checkU16("order", order);
		this.preference = checkU16("preference", preference);
		try {
			this.flags = byteArrayFromString(flags);
			this.service = byteArrayFromString(service);
			this.regexp = byteArrayFromString(regexp);
		} catch (TextParseException e) {
			throw new IllegalArgumentException(e.getMessage());
		}
		this.replacement = checkName("replacement", replacement);
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see org.xbill.DNS.Record#rrFromWire(org.xbill.DNS.DNSInput)
	 */
	void rrFromWire(DNSInput in) throws IOException {
		order = in.readU16();
		preference = in.readU16();
		flags = in.readCountedString();
		service = in.readCountedString();
		regexp = in.readCountedString();
		replacement = new Name(in);
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see org.xbill.DNS.Record#rdataFromString(org.xbill.DNS.Tokenizer,
	 * org.xbill.DNS.Name)
	 */
	void rdataFromString(Tokenizer st, Name origin) throws IOException {
		order = st.getUInt16();
		preference = st.getUInt16();
		try {
			flags = byteArrayFromString(st.getString());
			service = byteArrayFromString(st.getString());
			regexp = byteArrayFromString(st.getString());
		} catch (TextParseException e) {
			throw st.exception(e.getMessage());
		}
		replacement = st.getName(origin);
	}

	/**
	 * Converts rdata to a String.
	 * 
	 * @return the string
	 */
	String rrToString() {
		StringBuffer sb = new StringBuffer();
		sb.append(order);
		sb.append(" ");
		sb.append(preference);
		sb.append(" ");
		sb.append(byteArrayToString(flags, true));
		sb.append(" ");
		sb.append(byteArrayToString(service, true));
		sb.append(" ");
		sb.append(byteArrayToString(regexp, true));
		sb.append(" ");
		sb.append(replacement);
		return sb.toString();
	}

	/**
	 * Returns the order.
	 * 
	 * @return the order
	 */
	public int getOrder() {
		return order;
	}

	/**
	 * Returns the preference.
	 * 
	 * @return the preference
	 */
	public int getPreference() {
		return preference;
	}

	/**
	 * Returns flags.
	 * 
	 * @return the flags
	 */
	public String getFlags() {
		return byteArrayToString(flags, false);
	}

	/**
	 * Returns service.
	 * 
	 * @return the service
	 */
	public String getService() {
		return byteArrayToString(service, false);
	}

	/**
	 * Returns regexp.
	 * 
	 * @return the regexp
	 */
	public String getRegexp() {
		return byteArrayToString(regexp, false);
	}

	/**
	 * Returns the replacement domain-name.
	 * 
	 * @return the replacement
	 */
	public Name getReplacement() {
		return replacement;
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see org.xbill.DNS.Record#rrToWire(org.xbill.DNS.DNSOutput,
	 * org.xbill.DNS.Compression, boolean)
	 */
	void rrToWire(DNSOutput out, Compression c, boolean canonical) {
		out.writeU16(order);
		out.writeU16(preference);
		out.writeCountedString(flags);
		out.writeCountedString(service);
		out.writeCountedString(regexp);
		replacement.toWire(out, null, canonical);
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see org.xbill.DNS.Record#getAdditionalName()
	 */
	public Name getAdditionalName() {
		return replacement;
	}

}
