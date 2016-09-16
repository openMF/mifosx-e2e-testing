// Copyright (c) 1999-2004 Brian Wellington (bwelling@xbill.org)

package org.xbill.DNS.security;

import java.math.BigInteger;
import java.security.interfaces.RSAPublicKey;

// TODO: Auto-generated Javadoc
/**
 * A stub implementation of an RSA public key.
 * 
 * @author Brian Wellington
 */

class RSAPubKey implements RSAPublicKey {

	/** The Exponent. */
	private BigInteger Modulus, Exponent;

	/**
	 * Create an RSA public key from its parts.
	 * 
	 * @param modulus
	 *            the modulus
	 * @param exponent
	 *            the exponent
	 */
	public RSAPubKey(BigInteger modulus, BigInteger exponent) {
		Modulus = modulus;
		Exponent = exponent;
	}

	/**
	 * Obtain the modulus of an RSA public key.
	 * 
	 * @return the modulus
	 */
	public BigInteger getModulus() {
		return Modulus;
	}

	/**
	 * Obtain the exponent of an RSA public key.
	 * 
	 * @return the public exponent
	 */
	public BigInteger getPublicExponent() {
		return Exponent;
	}

	/**
	 * Obtain the algorithm of an RSA public key.
	 * 
	 * @return the algorithm
	 */
	public String getAlgorithm() {
		return "RSA";
	}

	/**
	 * Obtain the format of an RSA public key (unimplemented).
	 * 
	 * @return the format
	 */
	public String getFormat() {
		return null;
	}

	/**
	 * Obtain the encoded representation of an RSA public key (unimplemented).
	 * 
	 * @return the encoded
	 */
	public byte[] getEncoded() {
		return null;
	}

}
