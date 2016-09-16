// Copyright (c) 2004 Brian Wellington (bwelling@xbill.org)

package org.xbill.DNS;

import java.io.IOException;

// TODO: Auto-generated Javadoc
/**
 * Implements common functionality for the many record types whose format is an
 * unsigned 16 bit integer followed by a name.
 * 
 * @author Brian Wellington
 */

abstract class U16NameBase extends Record {

	/** The Constant serialVersionUID. */
	private static final long serialVersionUID = -8315884183112502995L;

	/** The u16 field. */
	protected int u16Field;

	/** The name field. */
	protected Name nameField;

	/**
	 * Instantiates a new u16 name base.
	 */
	protected U16NameBase() {
	}

	/**
	 * Instantiates a new u16 name base.
	 * 
	 * @param name
	 *            the name
	 * @param type
	 *            the type
	 * @param dclass
	 *            the dclass
	 * @param ttl
	 *            the ttl
	 */
	protected U16NameBase(Name name, int type, int dclass, long ttl) {
		super(name, type, dclass, ttl);
	}

	/**
	 * Instantiates a new u16 name base.
	 * 
	 * @param name
	 *            the name
	 * @param type
	 *            the type
	 * @param dclass
	 *            the dclass
	 * @param ttl
	 *            the ttl
	 * @param u16Field
	 *            the u16 field
	 * @param u16Description
	 *            the u16 description
	 * @param nameField
	 *            the name field
	 * @param nameDescription
	 *            the name description
	 */
	protected U16NameBase(Name name, int type, int dclass, long ttl,
			int u16Field, String u16Description, Name nameField,
			String nameDescription) {
		super(name, type, dclass, ttl);
		this.u16Field = checkU16(u16Description, u16Field);
		this.nameField = checkName(nameDescription, nameField);
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see org.xbill.DNS.Record#rrFromWire(org.xbill.DNS.DNSInput)
	 */
	void rrFromWire(DNSInput in) throws IOException {
		u16Field = in.readU16();
		nameField = new Name(in);
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see org.xbill.DNS.Record#rdataFromString(org.xbill.DNS.Tokenizer,
	 * org.xbill.DNS.Name)
	 */
	void rdataFromString(Tokenizer st, Name origin) throws IOException {
		u16Field = st.getUInt16();
		nameField = st.getName(origin);
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see org.xbill.DNS.Record#rrToString()
	 */
	String rrToString() {
		StringBuffer sb = new StringBuffer();
		sb.append(u16Field);
		sb.append(" ");
		sb.append(nameField);
		return sb.toString();
	}

	/**
	 * Gets the u16 field.
	 * 
	 * @return the u16 field
	 */
	protected int getU16Field() {
		return u16Field;
	}

	/**
	 * Gets the name field.
	 * 
	 * @return the name field
	 */
	protected Name getNameField() {
		return nameField;
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see org.xbill.DNS.Record#rrToWire(org.xbill.DNS.DNSOutput,
	 * org.xbill.DNS.Compression, boolean)
	 */
	void rrToWire(DNSOutput out, Compression c, boolean canonical) {
		out.writeU16(u16Field);
		nameField.toWire(out, null, canonical);
	}

}
