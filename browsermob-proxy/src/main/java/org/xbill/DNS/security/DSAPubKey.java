// Copyright (c) 1999-2004 Brian Wellington (bwelling@xbill.org)

package org.xbill.DNS.security;

import java.math.BigInteger;
import java.security.interfaces.DSAParams;
import java.security.interfaces.DSAPublicKey;

// TODO: Auto-generated Javadoc
/**
 * A stub implementation of a DSA (Digital Signature Algorithm) public key.
 * 
 * @author Brian Wellington
 */

class DSAPubKey implements DSAPublicKey {

	/**
	 * The Class SimpleDSAParams.
	 */
	static class SimpleDSAParams implements DSAParams {

		/** The g. */
		private BigInteger P, Q, G;

		/**
		 * Instantiates a new simple dsa params.
		 * 
		 * @param p
		 *            the p
		 * @param q
		 *            the q
		 * @param g
		 *            the g
		 */
		public SimpleDSAParams(BigInteger p, BigInteger q, BigInteger g) {
			P = p;
			Q = q;
			G = g;
		}

		/*
		 * (non-Javadoc)
		 * 
		 * @see java.security.interfaces.DSAParams#getP()
		 */
		public BigInteger getP() {
			return P;
		}

		/*
		 * (non-Javadoc)
		 * 
		 * @see java.security.interfaces.DSAParams#getQ()
		 */
		public BigInteger getQ() {
			return Q;
		}

		/*
		 * (non-Javadoc)
		 * 
		 * @see java.security.interfaces.DSAParams#getG()
		 */
		public BigInteger getG() {
			return G;
		}
	}

	/** The params. */
	private DSAParams params;

	/** The y. */
	private BigInteger Y;

	/**
	 * Create a DSA public key from its parts.
	 * 
	 * @param p
	 *            the p
	 * @param q
	 *            the q
	 * @param g
	 *            the g
	 * @param y
	 *            the y
	 */
	public DSAPubKey(BigInteger p, BigInteger q, BigInteger g, BigInteger y) {
		params = (DSAParams) new SimpleDSAParams(p, q, g);
		Y = y;
	}

	/**
	 * Obtain the public value of a DSA public key.
	 * 
	 * @return the y
	 */
	public BigInteger getY() {
		return Y;
	}

	/**
	 * Obtain the parameters of a DSA public key.
	 * 
	 * @return the params
	 */
	public DSAParams getParams() {
		return params;
	}

	/**
	 * Obtain the algorithm of a DSA public key.
	 * 
	 * @return the algorithm
	 */
	public String getAlgorithm() {
		return "DSA";
	}

	/**
	 * Obtain the format of a DSA public key (unimplemented).
	 * 
	 * @return the format
	 */
	public String getFormat() {
		return null;
	}

	/**
	 * Obtain the encoded representation of a DSA public key (unimplemented).
	 * 
	 * @return the encoded
	 */
	public byte[] getEncoded() {
		return null;
	}

}
