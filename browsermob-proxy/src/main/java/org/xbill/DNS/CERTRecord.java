// Copyright (c) 1999-2004 Brian Wellington (bwelling@xbill.org)

package org.xbill.DNS;

import org.xbill.DNS.utils.base64;

import java.io.IOException;

// TODO: Auto-generated Javadoc
/**
 * Certificate Record - Stores a certificate associated with a name. The
 * certificate might also be associated with a KEYRecord.
 * 
 * @see KEYRecord
 * 
 * @author Brian Wellington
 */

public class CERTRecord extends Record {

	/**
	 * The Class CertificateType.
	 */
	public static class CertificateType {
		/** Certificate type identifiers. See RFC 4398 for more detail. */

		private CertificateType() {
		}

		/** PKIX (X.509v3) */
		public static final int PKIX = 1;

		/** Simple Public Key Infrastructure. */
		public static final int SPKI = 2;

		/** Pretty Good Privacy. */
		public static final int PGP = 3;

		/** URL of an X.509 data object */
		public static final int IPKIX = 4;

		/** URL of an SPKI certificate. */
		public static final int ISPKI = 5;

		/** Fingerprint and URL of an OpenPGP packet. */
		public static final int IPGP = 6;

		/** Attribute Certificate. */
		public static final int ACPKIX = 7;

		/** URL of an Attribute Certificate. */
		public static final int IACPKIX = 8;

		/** Certificate format defined by URI. */
		public static final int URI = 253;

		/** Certificate format defined by OID. */
		public static final int OID = 254;

		/** The types. */
		private static Mnemonic types = new Mnemonic("Certificate type",
				Mnemonic.CASE_UPPER);

		static {
			types.setMaximum(0xFFFF);
			types.setNumericAllowed(true);

			types.add(PKIX, "PKIX");
			types.add(SPKI, "SPKI");
			types.add(PGP, "PGP");
			types.add(PKIX, "IPKIX");
			types.add(SPKI, "ISPKI");
			types.add(PGP, "IPGP");
			types.add(PGP, "ACPKIX");
			types.add(PGP, "IACPKIX");
			types.add(URI, "URI");
			types.add(OID, "OID");
		}

		/**
		 * Converts a certificate type into its textual representation.
		 * 
		 * @param type
		 *            the type
		 * @return the string
		 */
		public static String string(int type) {
			return types.getText(type);
		}

		/**
		 * Converts a textual representation of an certificate type into its
		 * numeric code. Integers in the range 0..65535 are also accepted.
		 * 
		 * @param s
		 *            The textual representation of the algorithm
		 * @return The algorithm code, or -1 on error.
		 */
		public static int value(String s) {
			return types.getValue(s);
		}
	}

	/** PKIX (X.509v3) */
	public static final int PKIX = CertificateType.PKIX;

	/** Simple Public Key Infrastructure. */
	public static final int SPKI = CertificateType.SPKI;

	/** Pretty Good Privacy. */
	public static final int PGP = CertificateType.PGP;

	/** Certificate format defined by URI. */
	public static final int URI = CertificateType.URI;

	/** Certificate format defined by IOD. */
	public static final int OID = CertificateType.OID;

	/** The Constant serialVersionUID. */
	private static final long serialVersionUID = 4763014646517016835L;

	/** The key tag. */
	private int certType, keyTag;

	/** The alg. */
	private int alg;

	/** The cert. */
	private byte[] cert;

	/**
	 * Instantiates a new cERT record.
	 */
	CERTRecord() {
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see org.xbill.DNS.Record#getObject()
	 */
	Record getObject() {
		return new CERTRecord();
	}

	/**
	 * Creates a CERT Record from the given data.
	 * 
	 * @param name
	 *            the name
	 * @param dclass
	 *            the dclass
	 * @param ttl
	 *            the ttl
	 * @param certType
	 *            The type of certificate (see constants)
	 * @param keyTag
	 *            The ID of the associated KEYRecord, if present
	 * @param alg
	 *            The algorithm of the associated KEYRecord, if present
	 * @param cert
	 *            Binary data representing the certificate
	 */
	public CERTRecord(Name name, int dclass, long ttl, int certType,
			int keyTag, int alg, byte[] cert) {
		super(name, Type.CERT, dclass, ttl);
		this.certType = checkU16("certType", certType);
		this.keyTag = checkU16("keyTag", keyTag);
		this.alg = checkU8("alg", alg);
		this.cert = cert;
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see org.xbill.DNS.Record#rrFromWire(org.xbill.DNS.DNSInput)
	 */
	void rrFromWire(DNSInput in) throws IOException {
		certType = in.readU16();
		keyTag = in.readU16();
		alg = in.readU8();
		cert = in.readByteArray();
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see org.xbill.DNS.Record#rdataFromString(org.xbill.DNS.Tokenizer,
	 * org.xbill.DNS.Name)
	 */
	void rdataFromString(Tokenizer st, Name origin) throws IOException {
		String certTypeString = st.getString();
		certType = CertificateType.value(certTypeString);
		if (certType < 0)
			throw st.exception("Invalid certificate type: " + certTypeString);
		keyTag = st.getUInt16();
		String algString = st.getString();
		alg = DNSSEC.Algorithm.value(algString);
		if (alg < 0)
			throw st.exception("Invalid algorithm: " + algString);
		cert = st.getBase64();
	}

	/**
	 * Converts rdata to a String.
	 * 
	 * @return the string
	 */
	String rrToString() {
		StringBuffer sb = new StringBuffer();
		sb.append(certType);
		sb.append(" ");
		sb.append(keyTag);
		sb.append(" ");
		sb.append(alg);
		if (cert != null) {
			if (Options.check("multiline")) {
				sb.append(" (\n");
				sb.append(base64.formatString(cert, 64, "\t", true));
			} else {
				sb.append(" ");
				sb.append(base64.toString(cert));
			}
		}
		return sb.toString();
	}

	/**
	 * Returns the type of certificate.
	 * 
	 * @return the cert type
	 */
	public int getCertType() {
		return certType;
	}

	/**
	 * Returns the ID of the associated KEYRecord, if present.
	 * 
	 * @return the key tag
	 */
	public int getKeyTag() {
		return keyTag;
	}

	/**
	 * Returns the algorithm of the associated KEYRecord, if present.
	 * 
	 * @return the algorithm
	 */
	public int getAlgorithm() {
		return alg;
	}

	/**
	 * Returns the binary representation of the certificate.
	 * 
	 * @return the cert
	 */
	public byte[] getCert() {
		return cert;
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see org.xbill.DNS.Record#rrToWire(org.xbill.DNS.DNSOutput,
	 * org.xbill.DNS.Compression, boolean)
	 */
	void rrToWire(DNSOutput out, Compression c, boolean canonical) {
		out.writeU16(certType);
		out.writeU16(keyTag);
		out.writeU8(alg);
		out.writeByteArray(cert);
	}

}
