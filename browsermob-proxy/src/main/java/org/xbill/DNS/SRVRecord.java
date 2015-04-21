// Copyright (c) 1999-2004 Brian Wellington (bwelling@xbill.org)

package org.xbill.DNS;

import java.io.IOException;

// TODO: Auto-generated Javadoc
/**
 * Server Selection Record - finds hosts running services in a domain. An SRV
 * record will normally be named <service>.<protocol>.domain - an example would
 * be http.tcp.example.com (if HTTP used SRV records)
 * 
 * @author Brian Wellington
 */

public class SRVRecord extends Record {

	/** The Constant serialVersionUID. */
	private static final long serialVersionUID = -3886460132387522052L;

	/** The port. */
	private int priority, weight, port;

	/** The target. */
	private Name target;

	/**
	 * Instantiates a new sRV record.
	 */
	SRVRecord() {
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see org.xbill.DNS.Record#getObject()
	 */
	Record getObject() {
		return new SRVRecord();
	}

	/**
	 * Creates an SRV Record from the given data.
	 * 
	 * @param name
	 *            the name
	 * @param dclass
	 *            the dclass
	 * @param ttl
	 *            the ttl
	 * @param priority
	 *            The priority of this SRV. Records with lower priority are
	 *            preferred.
	 * @param weight
	 *            The weight, used to select between records at the same
	 *            priority.
	 * @param port
	 *            The TCP/UDP port that the service uses
	 * @param target
	 *            The host running the service
	 */
	public SRVRecord(Name name, int dclass, long ttl, int priority, int weight,
			int port, Name target) {
		super(name, Type.SRV, dclass, ttl);
		this.priority = checkU16("priority", priority);
		this.weight = checkU16("weight", weight);
		this.port = checkU16("port", port);
		this.target = checkName("target", target);
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see org.xbill.DNS.Record#rrFromWire(org.xbill.DNS.DNSInput)
	 */
	void rrFromWire(DNSInput in) throws IOException {
		priority = in.readU16();
		weight = in.readU16();
		port = in.readU16();
		target = new Name(in);
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see org.xbill.DNS.Record#rdataFromString(org.xbill.DNS.Tokenizer,
	 * org.xbill.DNS.Name)
	 */
	void rdataFromString(Tokenizer st, Name origin) throws IOException {
		priority = st.getUInt16();
		weight = st.getUInt16();
		port = st.getUInt16();
		target = st.getName(origin);
	}

	/**
	 * Converts rdata to a String.
	 * 
	 * @return the string
	 */
	String rrToString() {
		StringBuffer sb = new StringBuffer();
		sb.append(priority + " ");
		sb.append(weight + " ");
		sb.append(port + " ");
		sb.append(target);
		return sb.toString();
	}

	/**
	 * Returns the priority.
	 * 
	 * @return the priority
	 */
	public int getPriority() {
		return priority;
	}

	/**
	 * Returns the weight.
	 * 
	 * @return the weight
	 */
	public int getWeight() {
		return weight;
	}

	/**
	 * Returns the port that the service runs on.
	 * 
	 * @return the port
	 */
	public int getPort() {
		return port;
	}

	/**
	 * Returns the host running that the service.
	 * 
	 * @return the target
	 */
	public Name getTarget() {
		return target;
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see org.xbill.DNS.Record#rrToWire(org.xbill.DNS.DNSOutput,
	 * org.xbill.DNS.Compression, boolean)
	 */
	void rrToWire(DNSOutput out, Compression c, boolean canonical) {
		out.writeU16(priority);
		out.writeU16(weight);
		out.writeU16(port);
		target.toWire(out, null, canonical);
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see org.xbill.DNS.Record#getAdditionalName()
	 */
	public Name getAdditionalName() {
		return target;
	}

}
