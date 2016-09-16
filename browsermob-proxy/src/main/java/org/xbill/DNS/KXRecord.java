// Copyright (c) 1999-2004 Brian Wellington (bwelling@xbill.org)

package org.xbill.DNS;

// TODO: Auto-generated Javadoc
/**
 * Key Exchange - delegation of authority.
 * 
 * @author Brian Wellington
 */

public class KXRecord extends U16NameBase {

	/** The Constant serialVersionUID. */
	private static final long serialVersionUID = 7448568832769757809L;

	/**
	 * Instantiates a new kX record.
	 */
	KXRecord() {
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see org.xbill.DNS.Record#getObject()
	 */
	Record getObject() {
		return new KXRecord();
	}

	/**
	 * Creates a KX Record from the given data.
	 * 
	 * @param name
	 *            the name
	 * @param dclass
	 *            the dclass
	 * @param ttl
	 *            the ttl
	 * @param preference
	 *            The preference of this KX. Records with lower priority are
	 *            preferred.
	 * @param target
	 *            The host that authority is delegated to
	 */
	public KXRecord(Name name, int dclass, long ttl, int preference, Name target) {
		super(name, Type.KX, dclass, ttl, preference, "preference", target,
				"target");
	}

	/**
	 * Returns the target of the KX record.
	 * 
	 * @return the target
	 */
	public Name getTarget() {
		return getNameField();
	}

	/**
	 * Returns the preference of this KX record.
	 * 
	 * @return the preference
	 */
	public int getPreference() {
		return getU16Field();
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see org.xbill.DNS.Record#getAdditionalName()
	 */
	public Name getAdditionalName() {
		return getNameField();
	}

}
