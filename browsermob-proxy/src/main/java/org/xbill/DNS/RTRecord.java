// Copyright (c) 2004 Brian Wellington (bwelling@xbill.org)

package org.xbill.DNS;

// TODO: Auto-generated Javadoc
/**
 * Route Through Record - lists a route preference and intermediate host.
 * 
 * @author Brian Wellington
 */

public class RTRecord extends U16NameBase {

	/** The Constant serialVersionUID. */
	private static final long serialVersionUID = -3206215651648278098L;

	/**
	 * Instantiates a new rT record.
	 */
	RTRecord() {
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see org.xbill.DNS.Record#getObject()
	 */
	Record getObject() {
		return new RTRecord();
	}

	/**
	 * Creates an RT Record from the given data.
	 * 
	 * @param name
	 *            the name
	 * @param dclass
	 *            the dclass
	 * @param ttl
	 *            the ttl
	 * @param preference
	 *            The preference of the route. Smaller numbers indicate more
	 *            preferred routes.
	 * @param intermediateHost
	 *            The domain name of the host to use as a router.
	 */
	public RTRecord(Name name, int dclass, long ttl, int preference,
			Name intermediateHost) {
		super(name, Type.RT, dclass, ttl, preference, "preference",
				intermediateHost, "intermediateHost");
	}

	/**
	 * Gets the preference of the route.
	 * 
	 * @return the preference
	 */
	public int getPreference() {
		return getU16Field();
	}

	/**
	 * Gets the host to use as a router.
	 * 
	 * @return the intermediate host
	 */
	public Name getIntermediateHost() {
		return getNameField();
	}

}
