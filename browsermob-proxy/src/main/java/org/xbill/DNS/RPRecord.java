// Copyright (c) 1999-2004 Brian Wellington (bwelling@xbill.org)

package org.xbill.DNS;

import java.io.IOException;

// TODO: Auto-generated Javadoc
/**
 * Responsible Person Record - lists the mail address of a responsible person
 * and a domain where TXT records are available.
 * 
 * @author Tom Scola <tscola@research.att.com>
 * @author Brian Wellington
 */

public class RPRecord extends Record {

	/** The Constant serialVersionUID. */
	private static final long serialVersionUID = 8124584364211337460L;

	/** The mailbox. */
	private Name mailbox;

	/** The text domain. */
	private Name textDomain;

	/**
	 * Instantiates a new rP record.
	 */
	RPRecord() {
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see org.xbill.DNS.Record#getObject()
	 */
	Record getObject() {
		return new RPRecord();
	}

	/**
	 * Creates an RP Record from the given data.
	 * 
	 * @param name
	 *            the name
	 * @param dclass
	 *            the dclass
	 * @param ttl
	 *            the ttl
	 * @param mailbox
	 *            The responsible person
	 * @param textDomain
	 *            The address where TXT records can be found
	 */
	public RPRecord(Name name, int dclass, long ttl, Name mailbox,
			Name textDomain) {
		super(name, Type.RP, dclass, ttl);

		this.mailbox = checkName("mailbox", mailbox);
		this.textDomain = checkName("textDomain", textDomain);
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see org.xbill.DNS.Record#rrFromWire(org.xbill.DNS.DNSInput)
	 */
	void rrFromWire(DNSInput in) throws IOException {
		mailbox = new Name(in);
		textDomain = new Name(in);
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see org.xbill.DNS.Record#rdataFromString(org.xbill.DNS.Tokenizer,
	 * org.xbill.DNS.Name)
	 */
	void rdataFromString(Tokenizer st, Name origin) throws IOException {
		mailbox = st.getName(origin);
		textDomain = st.getName(origin);
	}

	/**
	 * Converts the RP Record to a String.
	 * 
	 * @return the string
	 */
	String rrToString() {
		StringBuffer sb = new StringBuffer();
		sb.append(mailbox);
		sb.append(" ");
		sb.append(textDomain);
		return sb.toString();
	}

	/**
	 * Gets the mailbox address of the RP Record.
	 * 
	 * @return the mailbox
	 */
	public Name getMailbox() {
		return mailbox;
	}

	/**
	 * Gets the text domain info of the RP Record.
	 * 
	 * @return the text domain
	 */
	public Name getTextDomain() {
		return textDomain;
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see org.xbill.DNS.Record#rrToWire(org.xbill.DNS.DNSOutput,
	 * org.xbill.DNS.Compression, boolean)
	 */
	void rrToWire(DNSOutput out, Compression c, boolean canonical) {
		mailbox.toWire(out, null, canonical);
		textDomain.toWire(out, null, canonical);
	}

}
