// Copyright (c) 1999-2004 Brian Wellington (bwelling@xbill.org)

package org.xbill.DNS;

import java.io.IOException;

// TODO: Auto-generated Javadoc
/**
 * Host Information - describes the CPU and OS of a host.
 * 
 * @author Brian Wellington
 */

public class HINFORecord extends Record {

	/** The Constant serialVersionUID. */
	private static final long serialVersionUID = -4732870630947452112L;

	/** The os. */
	private byte[] cpu, os;

	/**
	 * Instantiates a new hINFO record.
	 */
	HINFORecord() {
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see org.xbill.DNS.Record#getObject()
	 */
	Record getObject() {
		return new HINFORecord();
	}

	/**
	 * Creates an HINFO Record from the given data.
	 * 
	 * @param name
	 *            the name
	 * @param dclass
	 *            the dclass
	 * @param ttl
	 *            the ttl
	 * @param cpu
	 *            A string describing the host's CPU
	 * @param os
	 *            A string describing the host's OS
	 */
	public HINFORecord(Name name, int dclass, long ttl, String cpu, String os) {
		super(name, Type.HINFO, dclass, ttl);
		try {
			this.cpu = byteArrayFromString(cpu);
			this.os = byteArrayFromString(os);
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
		cpu = in.readCountedString();
		os = in.readCountedString();
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see org.xbill.DNS.Record#rdataFromString(org.xbill.DNS.Tokenizer,
	 * org.xbill.DNS.Name)
	 */
	void rdataFromString(Tokenizer st, Name origin) throws IOException {
		try {
			cpu = byteArrayFromString(st.getString());
			os = byteArrayFromString(st.getString());
		} catch (TextParseException e) {
			throw st.exception(e.getMessage());
		}
	}

	/**
	 * Returns the host's CPU.
	 * 
	 * @return the cpu
	 */
	public String getCPU() {
		return byteArrayToString(cpu, false);
	}

	/**
	 * Returns the host's OS.
	 * 
	 * @return the os
	 */
	public String getOS() {
		return byteArrayToString(os, false);
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see org.xbill.DNS.Record#rrToWire(org.xbill.DNS.DNSOutput,
	 * org.xbill.DNS.Compression, boolean)
	 */
	void rrToWire(DNSOutput out, Compression c, boolean canonical) {
		out.writeCountedString(cpu);
		out.writeCountedString(os);
	}

	/**
	 * Converts to a string.
	 * 
	 * @return the string
	 */
	String rrToString() {
		StringBuffer sb = new StringBuffer();
		sb.append(byteArrayToString(cpu, true));
		sb.append(" ");
		sb.append(byteArrayToString(os, true));
		return sb.toString();
	}

}
