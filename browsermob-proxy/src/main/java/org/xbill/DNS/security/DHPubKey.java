// Copyright (c) 1999-2004 Brian Wellington (bwelling@xbill.org)

package org.xbill.DNS.security;

import javax.crypto.interfaces.DHPublicKey;
import javax.crypto.spec.DHParameterSpec;
import java.math.BigInteger;

// TODO: Auto-generated Javadoc
/**
 * A stub implementation of a Diffie-Hellman public key.
 * 
 * @author Brian Wellington
 */

class DHPubKey implements DHPublicKey {

	/** The params. */
	private DHParameterSpec params;

	/** The y. */
	private BigInteger Y;

	/**
	 * Create a Diffie-Hellman public key from its parts.
	 * 
	 * @param p
	 *            the p
	 * @param g
	 *            the g
	 * @param y
	 *            the y
	 */
	public DHPubKey(BigInteger p, BigInteger g, BigInteger y) {
		params = new DHParameterSpec(p, g);
		Y = y;
	}

	/**
	 * Obtain the public value of a Diffie-Hellman public key.
	 * 
	 * @return the y
	 */
	public BigInteger getY() {
		return Y;
	}

	/**
	 * Obtain the parameters of a Diffie-Hellman public key.
	 * 
	 * @return the params
	 */
	public DHParameterSpec getParams() {
		return params;
	}

	/**
	 * Obtain the algorithm of a Diffie-Hellman public key.
	 * 
	 * @return the algorithm
	 */
	public String getAlgorithm() {
		return "DH";
	}

	/**
	 * Obtain the format of a Diffie-Hellman public key (unimplemented).
	 * 
	 * @return the format
	 */
	public String getFormat() {
		return null;
	}

	/**
	 * Obtain the encoded representation of a Diffie-Hellman public key
	 * (unimplemented).
	 * 
	 * @return the encoded
	 */
	public byte[] getEncoded() {
		return null;
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see java.lang.Object#toString()
	 */
	public String toString() {
		StringBuffer sb = new StringBuffer();
		sb.append("P = ");
		sb.append(params.getP());
		sb.append("\nG = ");
		sb.append(params.getG());
		sb.append("\nY = ");
		sb.append(Y);
		return sb.toString();
	}

}
