// Copyright (c) 1999-2004 Brian Wellington (bwelling@xbill.org)

package org.xbill.DNS;

import java.io.IOException;

// TODO: Auto-generated Javadoc
/**
 * Geographical Location - describes the physical location of a host.
 * 
 * @author Brian Wellington
 */

public class GPOSRecord extends Record {

	/** The Constant serialVersionUID. */
	private static final long serialVersionUID = -6349714958085750705L;

	/** The altitude. */
	private byte[] latitude, longitude, altitude;

	/**
	 * Instantiates a new gPOS record.
	 */
	GPOSRecord() {
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see org.xbill.DNS.Record#getObject()
	 */
	Record getObject() {
		return new GPOSRecord();
	}

	/**
	 * Validate.
	 * 
	 * @param longitude
	 *            the longitude
	 * @param latitude
	 *            the latitude
	 * @throws IllegalArgumentException
	 *             the illegal argument exception
	 */
	private void validate(double longitude, double latitude)
			throws IllegalArgumentException {
		if (longitude < -90.0 || longitude > 90.0) {
			throw new IllegalArgumentException("illegal longitude " + longitude);
		}
		if (latitude < -180.0 || latitude > 180.0) {
			throw new IllegalArgumentException("illegal latitude " + latitude);
		}
	}

	/**
	 * Creates an GPOS Record from the given data.
	 * 
	 * @param name
	 *            the name
	 * @param dclass
	 *            the dclass
	 * @param ttl
	 *            the ttl
	 * @param longitude
	 *            The longitude component of the location.
	 * @param latitude
	 *            The latitude component of the location.
	 * @param altitude
	 *            The altitude component of the location (in meters above sea
	 *            level).
	 */
	public GPOSRecord(Name name, int dclass, long ttl, double longitude,
			double latitude, double altitude) {
		super(name, Type.GPOS, dclass, ttl);
		validate(longitude, latitude);
		this.longitude = Double.toString(longitude).getBytes();
		this.latitude = Double.toString(latitude).getBytes();
		this.altitude = Double.toString(altitude).getBytes();
	}

	/**
	 * Creates an GPOS Record from the given data.
	 * 
	 * @param name
	 *            the name
	 * @param dclass
	 *            the dclass
	 * @param ttl
	 *            the ttl
	 * @param longitude
	 *            The longitude component of the location.
	 * @param latitude
	 *            The latitude component of the location.
	 * @param altitude
	 *            The altitude component of the location (in meters above sea
	 *            level).
	 */
	public GPOSRecord(Name name, int dclass, long ttl, String longitude,
			String latitude, String altitude) {
		super(name, Type.GPOS, dclass, ttl);
		try {
			this.longitude = byteArrayFromString(longitude);
			this.latitude = byteArrayFromString(latitude);
			validate(getLongitude(), getLatitude());
			this.altitude = byteArrayFromString(altitude);
		} catch (TextParseException e) {
			throw new IllegalArgumentException(e.getMessage());
		}
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see org.xbill.DNS.Record#rrFromWire(org.xbill.DNS.DNSInput)
	 */
	void rrFromWire(DNSInput in) throws IOException {
		longitude = in.readCountedString();
		latitude = in.readCountedString();
		altitude = in.readCountedString();
		try {
			validate(getLongitude(), getLatitude());
		} catch (IllegalArgumentException e) {
			throw new WireParseException(e.getMessage());
		}
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see org.xbill.DNS.Record#rdataFromString(org.xbill.DNS.Tokenizer,
	 * org.xbill.DNS.Name)
	 */
	void rdataFromString(Tokenizer st, Name origin) throws IOException {
		try {
			longitude = byteArrayFromString(st.getString());
			latitude = byteArrayFromString(st.getString());
			altitude = byteArrayFromString(st.getString());
		} catch (TextParseException e) {
			throw st.exception(e.getMessage());
		}
		try {
			validate(getLongitude(), getLatitude());
		} catch (IllegalArgumentException e) {
			throw new WireParseException(e.getMessage());
		}
	}

	/**
	 * Convert to a String.
	 * 
	 * @return the string
	 */
	String rrToString() {
		StringBuffer sb = new StringBuffer();
		sb.append(byteArrayToString(longitude, true));
		sb.append(" ");
		sb.append(byteArrayToString(latitude, true));
		sb.append(" ");
		sb.append(byteArrayToString(altitude, true));
		return sb.toString();
	}

	/**
	 * Returns the longitude as a string.
	 * 
	 * @return the longitude string
	 */
	public String getLongitudeString() {
		return byteArrayToString(longitude, false);
	}

	/**
	 * Returns the longitude as a double.
	 * 
	 * @return the longitude
	 */
	public double getLongitude() {
		return Double.parseDouble(getLongitudeString());
	}

	/**
	 * Returns the latitude as a string.
	 * 
	 * @return the latitude string
	 */
	public String getLatitudeString() {
		return byteArrayToString(latitude, false);
	}

	/**
	 * Returns the latitude as a double.
	 * 
	 * @return the latitude
	 */
	public double getLatitude() {
		return Double.parseDouble(getLatitudeString());
	}

	/**
	 * Returns the altitude as a string.
	 * 
	 * @return the altitude string
	 */
	public String getAltitudeString() {
		return byteArrayToString(altitude, false);
	}

	/**
	 * Returns the altitude as a double.
	 * 
	 * @return the altitude
	 */
	public double getAltitude() {
		return Double.parseDouble(getAltitudeString());
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see org.xbill.DNS.Record#rrToWire(org.xbill.DNS.DNSOutput,
	 * org.xbill.DNS.Compression, boolean)
	 */
	void rrToWire(DNSOutput out, Compression c, boolean canonical) {
		out.writeCountedString(longitude);
		out.writeCountedString(latitude);
		out.writeCountedString(altitude);
	}

}
