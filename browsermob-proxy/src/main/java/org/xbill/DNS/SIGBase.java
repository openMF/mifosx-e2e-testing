// Copyright (c) 1999-2004 Brian Wellington (bwelling@xbill.org)

package org.xbill.DNS;

import org.xbill.DNS.utils.base64;

import java.io.IOException;
import java.util.Date;

// TODO: Auto-generated Javadoc
/**
 * The base class for SIG/RRSIG records, which have identical formats.
 * 
 * @author Brian Wellington
 */

abstract class SIGBase extends Record {

	/** The Constant serialVersionUID. */
	private static final long serialVersionUID = -3738444391533812369L;

	/** The covered. */
	protected int covered;

	/** The labels. */
	protected int alg, labels;

	/** The origttl. */
	protected long origttl;

	/** The time signed. */
	protected Date expire, timeSigned;

	/** The footprint. */
	protected int footprint;

	/** The signer. */
	protected Name signer;

	/** The signature. */
	protected byte[] signature;

	/**
	 * Instantiates a new sIG base.
	 */
	protected SIGBase() {
	}

	/**
	 * Instantiates a new sIG base.
	 * 
	 * @param name
	 *            the name
	 * @param type
	 *            the type
	 * @param dclass
	 *            the dclass
	 * @param ttl
	 *            the ttl
	 * @param covered
	 *            the covered
	 * @param alg
	 *            the alg
	 * @param origttl
	 *            the origttl
	 * @param expire
	 *            the expire
	 * @param timeSigned
	 *            the time signed
	 * @param footprint
	 *            the footprint
	 * @param signer
	 *            the signer
	 * @param signature
	 *            the signature
	 */
	public SIGBase(Name name, int type, int dclass, long ttl, int covered,
			int alg, long origttl, Date expire, Date timeSigned, int footprint,
			Name signer, byte[] signature) {
		super(name, type, dclass, ttl);
		Type.check(covered);
		TTL.check(origttl);
		this.covered = covered;
		this.alg = checkU8("alg", alg);
		this.labels = name.labels() - 1;
		if (name.isWild())
			this.labels--;
		this.origttl = origttl;
		this.expire = expire;
		this.timeSigned = timeSigned;
		this.footprint = checkU16("footprint", footprint);
		this.signer = checkName("signer", signer);
		this.signature = signature;
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see org.xbill.DNS.Record#rrFromWire(org.xbill.DNS.DNSInput)
	 */
	void rrFromWire(DNSInput in) throws IOException {
		covered = in.readU16();
		alg = in.readU8();
		labels = in.readU8();
		origttl = in.readU32();
		expire = new Date(1000 * in.readU32());
		timeSigned = new Date(1000 * in.readU32());
		footprint = in.readU16();
		signer = new Name(in);
		signature = in.readByteArray();
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see org.xbill.DNS.Record#rdataFromString(org.xbill.DNS.Tokenizer,
	 * org.xbill.DNS.Name)
	 */
	void rdataFromString(Tokenizer st, Name origin) throws IOException {
		String typeString = st.getString();
		covered = Type.value(typeString);
		if (covered < 0)
			throw st.exception("Invalid type: " + typeString);
		String algString = st.getString();
		alg = DNSSEC.Algorithm.value(algString);
		if (alg < 0)
			throw st.exception("Invalid algorithm: " + algString);
		labels = st.getUInt8();
		origttl = st.getTTL();
		expire = FormattedTime.parse(st.getString());
		timeSigned = FormattedTime.parse(st.getString());
		footprint = st.getUInt16();
		signer = st.getName(origin);
		signature = st.getBase64();
	}

	/**
	 * Converts the RRSIG/SIG Record to a String.
	 * 
	 * @return the string
	 */
	String rrToString() {
		StringBuffer sb = new StringBuffer();
		sb.append(Type.string(covered));
		sb.append(" ");
		sb.append(alg);
		sb.append(" ");
		sb.append(labels);
		sb.append(" ");
		sb.append(origttl);
		sb.append(" ");
		if (Options.check("multiline"))
			sb.append("(\n\t");
		sb.append(FormattedTime.format(expire));
		sb.append(" ");
		sb.append(FormattedTime.format(timeSigned));
		sb.append(" ");
		sb.append(footprint);
		sb.append(" ");
		sb.append(signer);
		if (Options.check("multiline")) {
			sb.append("\n");
			sb.append(base64.formatString(signature, 64, "\t", true));
		} else {
			sb.append(" ");
			sb.append(base64.toString(signature));
		}
		return sb.toString();
	}

	/**
	 * Returns the RRset type covered by this signature.
	 * 
	 * @return the type covered
	 */
	public int getTypeCovered() {
		return covered;
	}

	/**
	 * Returns the cryptographic algorithm of the key that generated the
	 * signature.
	 * 
	 * @return the algorithm
	 */
	public int getAlgorithm() {
		return alg;
	}

	/**
	 * Returns the number of labels in the signed domain name. This may be
	 * different than the record's domain name if the record is a wildcard
	 * record.
	 * 
	 * @return the labels
	 */
	public int getLabels() {
		return labels;
	}

	/**
	 * Returns the original TTL of the RRset.
	 * 
	 * @return the orig ttl
	 */
	public long getOrigTTL() {
		return origttl;
	}

	/**
	 * Returns the time at which the signature expires.
	 * 
	 * @return the expire
	 */
	public Date getExpire() {
		return expire;
	}

	/**
	 * Returns the time at which this signature was generated.
	 * 
	 * @return the time signed
	 */
	public Date getTimeSigned() {
		return timeSigned;
	}

	/**
	 * Returns The footprint/key id of the signing key.
	 * 
	 * @return the footprint
	 */
	public int getFootprint() {
		return footprint;
	}

	/**
	 * Returns the owner of the signing key.
	 * 
	 * @return the signer
	 */
	public Name getSigner() {
		return signer;
	}

	/**
	 * Returns the binary data representing the signature.
	 * 
	 * @return the signature
	 */
	public byte[] getSignature() {
		return signature;
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see org.xbill.DNS.Record#rrToWire(org.xbill.DNS.DNSOutput,
	 * org.xbill.DNS.Compression, boolean)
	 */
	void rrToWire(DNSOutput out, Compression c, boolean canonical) {
		out.writeU16(covered);
		out.writeU8(alg);
		out.writeU8(labels);
		out.writeU32(origttl);
		out.writeU32(expire.getTime() / 1000);
		out.writeU32(timeSigned.getTime() / 1000);
		out.writeU16(footprint);
		signer.toWire(out, null, canonical);
		out.writeByteArray(signature);
	}

}
