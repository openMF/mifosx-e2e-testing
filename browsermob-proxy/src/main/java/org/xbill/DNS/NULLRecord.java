// Copyright (c) 2004 Brian Wellington (bwelling@xbill.org)

package org.xbill.DNS;

import java.io.IOException;

// TODO: Auto-generated Javadoc
/**
 * The NULL Record. This has no defined purpose, but can be used to hold
 * arbitrary data.
 * 
 * @author Brian Wellington
 */

public class NULLRecord extends Record {

	/** The Constant serialVersionUID. */
	private static final long serialVersionUID = -5796493183235216538L;

	/** The data. */
	private byte[] data;

	/**
	 * Instantiates a new nULL record.
	 */
	NULLRecord() {
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see org.xbill.DNS.Record#getObject()
	 */
	Record getObject() {
		return new NULLRecord();
	}

	/**
	 * Creates a NULL record from the given data.
	 * 
	 * @param name
	 *            the name
	 * @param dclass
	 *            the dclass
	 * @param ttl
	 *            the ttl
	 * @param data
	 *            The contents of the record.
	 */
	public NULLRecord(Name name, int dclass, long ttl, byte[] data) {
		super(name, Type.NULL, dclass, ttl);

		if (data.length > 0xFFFF) {
			throw new IllegalArgumentException("data must be <65536 bytes");
		}
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
		throw st.exception("no defined text format for NULL records");
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see org.xbill.DNS.Record#rrToString()
	 */
	String rrToString() {
		return unknownToString(data);
	}

	/**
	 * Returns the contents of this record.
	 * 
	 * @return the data
	 */
	public byte[] getData() {
		return data;
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

}
