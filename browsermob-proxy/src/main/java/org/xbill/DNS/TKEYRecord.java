// Copyright (c) 1999-2004 Brian Wellington (bwelling@xbill.org)

package org.xbill.DNS;

import org.xbill.DNS.utils.base64;

import java.io.IOException;
import java.util.Date;

// TODO: Auto-generated Javadoc
/**
 * Transaction Key - used to compute and/or securely transport a shared secret
 * to be used with TSIG.
 * 
 * @see TSIG
 * 
 * @author Brian Wellington
 */

public class TKEYRecord extends Record {

	/** The Constant serialVersionUID. */
	private static final long serialVersionUID = 8828458121926391756L;

	/** The alg. */
	private Name alg;

	/** The time inception. */
	private Date timeInception;

	/** The time expire. */
	private Date timeExpire;

	/** The error. */
	private int mode, error;

	/** The key. */
	private byte[] key;

	/** The other. */
	private byte[] other;

	/** The key is assigned by the server (unimplemented). */
	public static final int SERVERASSIGNED = 1;

	/** The key is computed using a Diffie-Hellman key exchange. */
	public static final int DIFFIEHELLMAN = 2;

	/** The key is computed using GSS_API (unimplemented). */
	public static final int GSSAPI = 3;

	/** The key is assigned by the resolver (unimplemented). */
	public static final int RESOLVERASSIGNED = 4;

	/** The key should be deleted. */
	public static final int DELETE = 5;

	/**
	 * Instantiates a new tKEY record.
	 */
	TKEYRecord() {
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see org.xbill.DNS.Record#getObject()
	 */
	Record getObject() {
		return new TKEYRecord();
	}

	/**
	 * Creates a TKEY Record from the given data.
	 * 
	 * @param name
	 *            the name
	 * @param dclass
	 *            the dclass
	 * @param ttl
	 *            the ttl
	 * @param alg
	 *            The shared key's algorithm
	 * @param timeInception
	 *            The beginning of the validity period of the shared secret or
	 *            keying material
	 * @param timeExpire
	 *            The end of the validity period of the shared secret or keying
	 *            material
	 * @param mode
	 *            The mode of key agreement
	 * @param error
	 *            The extended error field. Should be 0 in queries
	 * @param key
	 *            The shared secret
	 * @param other
	 *            The other data field. Currently unused responses.
	 */
	public TKEYRecord(Name name, int dclass, long ttl, Name alg,
			Date timeInception, Date timeExpire, int mode, int error,
			byte[] key, byte other[]) {
		super(name, Type.TKEY, dclass, ttl);
		this.alg = checkName("alg", alg);
		this.timeInception = timeInception;
		this.timeExpire = timeExpire;
		this.mode = checkU16("mode", mode);
		this.error = checkU16("error", error);
		this.key = key;
		this.other = other;
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see org.xbill.DNS.Record#rrFromWire(org.xbill.DNS.DNSInput)
	 */
	void rrFromWire(DNSInput in) throws IOException {
		alg = new Name(in);
		timeInception = new Date(1000 * in.readU32());
		timeExpire = new Date(1000 * in.readU32());
		mode = in.readU16();
		error = in.readU16();

		int keylen = in.readU16();
		if (keylen > 0)
			key = in.readByteArray(keylen);
		else
			key = null;

		int otherlen = in.readU16();
		if (otherlen > 0)
			other = in.readByteArray(otherlen);
		else
			other = null;
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see org.xbill.DNS.Record#rdataFromString(org.xbill.DNS.Tokenizer,
	 * org.xbill.DNS.Name)
	 */
	void rdataFromString(Tokenizer st, Name origin) throws IOException {
		throw st.exception("no text format defined for TKEY");
	}

	/**
	 * Mode string.
	 * 
	 * @return the string
	 */
	protected String modeString() {
		switch (mode) {
		case SERVERASSIGNED:
			return "SERVERASSIGNED";
		case DIFFIEHELLMAN:
			return "DIFFIEHELLMAN";
		case GSSAPI:
			return "GSSAPI";
		case RESOLVERASSIGNED:
			return "RESOLVERASSIGNED";
		case DELETE:
			return "DELETE";
		default:
			return Integer.toString(mode);
		}
	}

	/**
	 * Converts rdata to a String.
	 * 
	 * @return the string
	 */
	String rrToString() {
		StringBuffer sb = new StringBuffer();
		sb.append(alg);
		sb.append(" ");
		if (Options.check("multiline"))
			sb.append("(\n\t");
		sb.append(FormattedTime.format(timeInception));
		sb.append(" ");
		sb.append(FormattedTime.format(timeExpire));
		sb.append(" ");
		sb.append(modeString());
		sb.append(" ");
		sb.append(Rcode.TSIGstring(error));
		if (Options.check("multiline")) {
			sb.append("\n");
			if (key != null) {
				sb.append(base64.formatString(key, 64, "\t", false));
				sb.append("\n");
			}
			if (other != null)
				sb.append(base64.formatString(other, 64, "\t", false));
			sb.append(" )");
		} else {
			sb.append(" ");
			if (key != null) {
				sb.append(base64.toString(key));
				sb.append(" ");
			}
			if (other != null)
				sb.append(base64.toString(other));
		}
		return sb.toString();
	}

	/**
	 * Returns the shared key's algorithm.
	 * 
	 * @return the algorithm
	 */
	public Name getAlgorithm() {
		return alg;
	}

	/**
	 * Returns the beginning of the validity period of the shared secret or
	 * keying material.
	 * 
	 * @return the time inception
	 */
	public Date getTimeInception() {
		return timeInception;
	}

	/**
	 * Returns the end of the validity period of the shared secret or keying
	 * material.
	 * 
	 * @return the time expire
	 */
	public Date getTimeExpire() {
		return timeExpire;
	}

	/**
	 * Returns the key agreement mode.
	 * 
	 * @return the mode
	 */
	public int getMode() {
		return mode;
	}

	/**
	 * Returns the extended error.
	 * 
	 * @return the error
	 */
	public int getError() {
		return error;
	}

	/**
	 * Returns the shared secret or keying material.
	 * 
	 * @return the key
	 */
	public byte[] getKey() {
		return key;
	}

	/**
	 * Returns the other data.
	 * 
	 * @return the other
	 */
	public byte[] getOther() {
		return other;
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see org.xbill.DNS.Record#rrToWire(org.xbill.DNS.DNSOutput,
	 * org.xbill.DNS.Compression, boolean)
	 */
	void rrToWire(DNSOutput out, Compression c, boolean canonical) {
		alg.toWire(out, null, canonical);

		out.writeU32(timeInception.getTime() / 1000);
		out.writeU32(timeExpire.getTime() / 1000);

		out.writeU16(mode);
		out.writeU16(error);

		if (key != null) {
			out.writeU16(key.length);
			out.writeByteArray(key);
		} else
			out.writeU16(0);

		if (other != null) {
			out.writeU16(other.length);
			out.writeByteArray(other);
		} else
			out.writeU16(0);
	}

}
