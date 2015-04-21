// Copyright (c) 1999-2004 Brian Wellington (bwelling@xbill.org)

package org.xbill.DNS;

import java.io.IOException;

// TODO: Auto-generated Javadoc
/**
 * A class implementing Records of unknown and/or unimplemented types. This
 * class can only be initialized using static Record initializers.
 * 
 * @author Brian Wellington
 */

public class UNKRecord extends Record {

	/** The Constant serialVersionUID. */
	private static final long serialVersionUID = -4193583311594626915L;

	/** The data. */
	private byte[] data;

	/**
	 * Instantiates a new uNK record.
	 */
	UNKRecord() {
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see org.xbill.DNS.Record#getObject()
	 */
	Record getObject() {
		return new UNKRecord();
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
		throw st.exception("invalid unknown RR encoding");
	}

	/**
	 * Converts this Record to the String "unknown format".
	 * 
	 * @return the string
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
