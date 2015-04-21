// Copyright (c) 2004 Brian Wellington (bwelling@xbill.org)

package org.xbill.DNS;

// TODO: Auto-generated Javadoc
/**
 * AFS Data Base Record - maps a domain name to the name of an AFS cell database
 * server.
 * 
 * 
 * @author Brian Wellington
 */

public class AFSDBRecord extends U16NameBase {

	/** The Constant serialVersionUID. */
	private static final long serialVersionUID = 3034379930729102437L;

	/**
	 * Instantiates a new aFSDB record.
	 */
	AFSDBRecord() {
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see org.xbill.DNS.Record#getObject()
	 */
	Record getObject() {
		return new AFSDBRecord();
	}

	/**
	 * Creates an AFSDB Record from the given data.
	 * 
	 * @param name
	 *            the name
	 * @param dclass
	 *            the dclass
	 * @param ttl
	 *            the ttl
	 * @param subtype
	 *            Indicates the type of service provided by the host.
	 * @param host
	 *            The host providing the service.
	 */
	public AFSDBRecord(Name name, int dclass, long ttl, int subtype, Name host) {
		super(name, Type.AFSDB, dclass, ttl, subtype, "subtype", host, "host");
	}

	/**
	 * Gets the subtype indicating the service provided by the host.
	 * 
	 * @return the subtype
	 */
	public int getSubtype() {
		return getU16Field();
	}

	/**
	 * Gets the host providing service for the domain.
	 * 
	 * @return the host
	 */
	public Name getHost() {
		return getNameField();
	}

}
