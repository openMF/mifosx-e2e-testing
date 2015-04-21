// Copyright (c) 2004 Brian Wellington (bwelling@xbill.org)

package org.xbill.DNS;

import org.xbill.DNS.utils.base16;

import java.io.IOException;

// TODO: Auto-generated Javadoc
/**
 * SSH Fingerprint - stores the fingerprint of an SSH host key.
 * 
 * @author Brian Wellington
 */

public class SSHFPRecord extends Record {

	/** The Constant serialVersionUID. */
	private static final long serialVersionUID = -8104701402654687025L;

	/**
	 * The Class Algorithm.
	 */
	public static class Algorithm {

		/**
		 * Instantiates a new algorithm.
		 */
		private Algorithm() {
		}

		/** The Constant RSA. */
		public static final int RSA = 1;

		/** The Constant DSS. */
		public static final int DSS = 2;
	}

	/**
	 * The Class Digest.
	 */
	public static class Digest {

		/**
		 * Instantiates a new digest.
		 */
		private Digest() {
		}

		/** The Constant SHA1. */
		public static final int SHA1 = 1;
	}

	/** The alg. */
	private int alg;

	/** The digest type. */
	private int digestType;

	/** The fingerprint. */
	private byte[] fingerprint;

	/**
	 * Instantiates a new sSHFP record.
	 */
	SSHFPRecord() {
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see org.xbill.DNS.Record#getObject()
	 */
	Record getObject() {
		return new SSHFPRecord();
	}

	/**
	 * Creates an SSHFP Record from the given data.
	 * 
	 * @param name
	 *            the name
	 * @param dclass
	 *            the dclass
	 * @param ttl
	 *            the ttl
	 * @param alg
	 *            The public key's algorithm.
	 * @param digestType
	 *            The public key's digest type.
	 * @param fingerprint
	 *            The public key's fingerprint.
	 */
	public SSHFPRecord(Name name, int dclass, long ttl, int alg,
			int digestType, byte[] fingerprint) {
		super(name, Type.SSHFP, dclass, ttl);
		this.alg = checkU8("alg", alg);
		this.digestType = checkU8("digestType", digestType);
		this.fingerprint = fingerprint;
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see org.xbill.DNS.Record#rrFromWire(org.xbill.DNS.DNSInput)
	 */
	void rrFromWire(DNSInput in) throws IOException {
		alg = in.readU8();
		digestType = in.readU8();
		fingerprint = in.readByteArray();
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see org.xbill.DNS.Record#rdataFromString(org.xbill.DNS.Tokenizer,
	 * org.xbill.DNS.Name)
	 */
	void rdataFromString(Tokenizer st, Name origin) throws IOException {
		alg = st.getUInt8();
		digestType = st.getUInt8();
		fingerprint = st.getHex(true);
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see org.xbill.DNS.Record#rrToString()
	 */
	String rrToString() {
		StringBuffer sb = new StringBuffer();
		sb.append(alg);
		sb.append(" ");
		sb.append(digestType);
		sb.append(" ");
		sb.append(base16.toString(fingerprint));
		return sb.toString();
	}

	/**
	 * Returns the public key's algorithm.
	 * 
	 * @return the algorithm
	 */
	public int getAlgorithm() {
		return alg;
	}

	/**
	 * Returns the public key's digest type.
	 * 
	 * @return the digest type
	 */
	public int getDigestType() {
		return digestType;
	}

	/**
	 * Returns the fingerprint.
	 * 
	 * @return the finger print
	 */
	public byte[] getFingerPrint() {
		return fingerprint;
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see org.xbill.DNS.Record#rrToWire(org.xbill.DNS.DNSOutput,
	 * org.xbill.DNS.Compression, boolean)
	 */
	void rrToWire(DNSOutput out, Compression c, boolean canonical) {
		out.writeU8(alg);
		out.writeU8(digestType);
		out.writeByteArray(fingerprint);
	}

}
