/*
 * 
 */
package org.browsermob.proxy.selenium;

// TODO: Auto-generated Javadoc
/**
 * This interface stores commonly used OIDs for X.509v3 certificates.
 * 
 * *****************************************************************************
 * ********** Copyright (c) 2007, Information Security Partners, LLC All rights
 * reserved.
 * 
 * In a special exception, Selenium/OpenQA is allowed to use this code under the
 * Apache License 2.0.
 * 
 * @author Brad Hill
 * 
 */
interface ExtendedKeyUsageConstants {

	/** The key purpose base. */
	String keyPurposeBase = "1.3.6.1.5.5.7.3";

	//
	// standard key purpose ids
	//

	/** The server auth. */
	String serverAuth = keyPurposeBase + ".1";

	/** The client auth. */
	String clientAuth = keyPurposeBase + ".2";

	/** The code signing. */
	String codeSigning = keyPurposeBase + ".3";

	/** The email protection. */
	String emailProtection = keyPurposeBase + ".4";

	/** The ipsec end system. */
	String ipsecEndSystem = keyPurposeBase + ".5";

	/** The ipsec tunnel. */
	String ipsecTunnel = keyPurposeBase + ".6";

	/** The ipsec user. */
	String ipsecUser = keyPurposeBase + ".7";

	/** The time stamping. */
	String timeStamping = keyPurposeBase + ".8";

	/** The OCSP signing. */
	String OCSPSigning = keyPurposeBase + ".9";

	//
	// unusual key purpose ids
	//

	/** The netscape server gated crypto. */
	String netscapeServerGatedCrypto = "2.16.840.1.113730.4.1";

	/** The verisign unknown. */
	String verisignUnknown = "2.16.840.1.113733.1.8.1";

	/** The ms server gated crypto. */
	String msServerGatedCrypto = "1.3.6.1.4.1.311.10.3.3";

}
