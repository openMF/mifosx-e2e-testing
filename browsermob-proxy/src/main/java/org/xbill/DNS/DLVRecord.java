// Copyright (c) 2002-2004 Brian Wellington (bwelling@xbill.org)

package org.xbill.DNS;

import org.xbill.DNS.utils.base16;

import java.io.IOException;

// TODO: Auto-generated Javadoc
/**
 * DLV - contains a Delegation Lookaside Validation record, which acts as the
 * equivalent of a DS record in a lookaside zone.
 * 
 * @see DNSSEC
 * @see DSRecord
 * 
 * @author David Blacka
 * @author Brian Wellington
 */

public class DLVRecord extends Record {

	/** The Constant SHA1_DIGEST_ID. */
	public static final byte SHA1_DIGEST_ID = 1;

	/** The Constant SHA256_DIGEST_ID. */
	public static final byte SHA256_DIGEST_ID = 2;

	/** The Constant serialVersionUID. */
	private static final long serialVersionUID = 1960742375677534148L;

	/** The footprint. */
	private int footprint;

	/** The alg. */
	private int alg;

	/** The digestid. */
	private int digestid;

	/** The digest. */
	private byte[] digest;

	/**
	 * Instantiates a new dLV record.
	 */
	DLVRecord() {
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see org.xbill.DNS.Record#getObject()
	 */
	Record getObject() {
		return new DLVRecord();
	}

	/**
	 * Creates a DLV Record from the given data.
	 * 
	 * @param name
	 *            the name
	 * @param dclass
	 *            the dclass
	 * @param ttl
	 *            the ttl
	 * @param footprint
	 *            The original KEY record's footprint (keyid).
	 * @param alg
	 *            The original key algorithm.
	 * @param digestid
	 *            The digest id code.
	 * @param digest
	 *            A hash of the original key.
	 */
	public DLVRecord(Name name, int dclass, long ttl, int footprint, int alg,
			int digestid, byte[] digest) {
		super(name, Type.DLV, dclass, ttl);
		this.footprint = checkU16("footprint", footprint);
		this.alg = checkU8("alg", alg);
		this.digestid = checkU8("digestid", digestid);
		this.digest = digest;
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see org.xbill.DNS.Record#rrFromWire(org.xbill.DNS.DNSInput)
	 */
	void rrFromWire(DNSInput in) throws IOException {
		footprint = in.readU16();
		alg = in.readU8();
		digestid = in.readU8();
		digest = in.readByteArray();
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see org.xbill.DNS.Record#rdataFromString(org.xbill.DNS.Tokenizer,
	 * org.xbill.DNS.Name)
	 */
	void rdataFromString(Tokenizer st, Name origin) throws IOException {
		footprint = st.getUInt16();
		alg = st.getUInt8();
		digestid = st.getUInt8();
		digest = st.getHex();
	}

	/**
	 * Converts rdata to a String.
	 * 
	 * @return the string
	 */
	String rrToString() {
		StringBuffer sb = new StringBuffer();
		sb.append(footprint);
		sb.append(" ");
		sb.append(alg);
		sb.append(" ");
		sb.append(digestid);
		if (digest != null) {
			sb.append(" ");
			sb.append(base16.toString(digest));
		}

		return sb.toString();
	}

	/**
	 * Returns the key's algorithm.
	 * 
	 * @return the algorithm
	 */
	public int getAlgorithm() {
		return alg;
	}

	/**
	 * Returns the key's Digest ID.
	 * 
	 * @return the digest id
	 */
	public int getDigestID() {
		return digestid;
	}

	/**
	 * Returns the binary hash of the key.
	 * 
	 * @return the digest
	 */
	public byte[] getDigest() {
		return digest;
	}

	/**
	 * Returns the key's footprint.
	 * 
	 * @return the footprint
	 */
	public int getFootprint() {
		return footprint;
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see org.xbill.DNS.Record#rrToWire(org.xbill.DNS.DNSOutput,
	 * org.xbill.DNS.Compression, boolean)
	 */
	void rrToWire(DNSOutput out, Compression c, boolean canonical) {
		out.writeU16(footprint);
		out.writeU8(alg);
		out.writeU8(digestid);
		if (digest != null)
			out.writeByteArray(digest);
	}

}
