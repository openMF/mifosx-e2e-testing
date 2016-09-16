// Copyright (c) 2003-2004 Brian Wellington (bwelling@xbill.org)

package org.xbill.DNS;

import java.io.IOException;
import java.util.Iterator;

// TODO: Auto-generated Javadoc
/**
 * A helper class for constructing dynamic DNS (DDNS) update messages.
 * 
 * @author Brian Wellington
 */

public class Update extends Message {

	/** The origin. */
	private Name origin;

	/** The dclass. */
	private int dclass;

	/**
	 * Creates an update message.
	 * 
	 * @param zone
	 *            The name of the zone being updated.
	 * @param dclass
	 *            The class of the zone being updated.
	 */
	public Update(Name zone, int dclass) {
		super();
		if (!zone.isAbsolute())
			throw new RelativeNameException(zone);
		DClass.check(dclass);
		getHeader().setOpcode(Opcode.UPDATE);
		Record soa = Record.newRecord(zone, Type.SOA, DClass.IN);
		addRecord(soa, Section.QUESTION);
		this.origin = zone;
		this.dclass = dclass;
	}

	/**
	 * Creates an update message. The class is assumed to be IN.
	 * 
	 * @param zone
	 *            The name of the zone being updated.
	 */
	public Update(Name zone) {
		this(zone, DClass.IN);
	}

	/**
	 * New prereq.
	 * 
	 * @param rec
	 *            the rec
	 */
	private void newPrereq(Record rec) {
		addRecord(rec, Section.PREREQ);
	}

	/**
	 * New update.
	 * 
	 * @param rec
	 *            the rec
	 */
	private void newUpdate(Record rec) {
		addRecord(rec, Section.UPDATE);
	}

	/**
	 * Inserts a prerequisite that the specified name exists; that is, there
	 * exist records with the given name in the zone.
	 * 
	 * @param name
	 *            the name
	 */
	public void present(Name name) {
		newPrereq(Record.newRecord(name, Type.ANY, DClass.ANY, 0));
	}

	/**
	 * Inserts a prerequisite that the specified rrset exists; that is, there
	 * exist records with the given name and type in the zone.
	 * 
	 * @param name
	 *            the name
	 * @param type
	 *            the type
	 */
	public void present(Name name, int type) {
		newPrereq(Record.newRecord(name, type, DClass.ANY, 0));
	}

	/**
	 * Parses a record from the string, and inserts a prerequisite that the
	 * record exists. Due to the way value-dependent prequisites work, the
	 * condition that must be met is that the set of all records with the same
	 * and type in the update message must be identical to the set of all
	 * records with that name and type on the server.
	 * 
	 * @param name
	 *            the name
	 * @param type
	 *            the type
	 * @param record
	 *            the record
	 * @throws IOException
	 *             The record could not be parsed.
	 */
	public void present(Name name, int type, String record) throws IOException {
		newPrereq(Record.fromString(name, type, dclass, 0, record, origin));
	}

	/**
	 * Parses a record from the tokenizer, and inserts a prerequisite that the
	 * record exists. Due to the way value-dependent prequisites work, the
	 * condition that must be met is that the set of all records with the same
	 * and type in the update message must be identical to the set of all
	 * records with that name and type on the server.
	 * 
	 * @param name
	 *            the name
	 * @param type
	 *            the type
	 * @param tokenizer
	 *            the tokenizer
	 * @throws IOException
	 *             The record could not be parsed.
	 */
	public void present(Name name, int type, Tokenizer tokenizer)
			throws IOException {
		newPrereq(Record.fromString(name, type, dclass, 0, tokenizer, origin));
	}

	/**
	 * Inserts a prerequisite that the specified record exists. Due to the way
	 * value-dependent prequisites work, the condition that must be met is that
	 * the set of all records with the same and type in the update message must
	 * be identical to the set of all records with that name and type on the
	 * server.
	 * 
	 * @param record
	 *            the record
	 */
	public void present(Record record) {
		newPrereq(record);
	}

	/**
	 * Inserts a prerequisite that the specified name does not exist; that is,
	 * there are no records with the given name in the zone.
	 * 
	 * @param name
	 *            the name
	 */
	public void absent(Name name) {
		newPrereq(Record.newRecord(name, Type.ANY, DClass.NONE, 0));
	}

	/**
	 * Inserts a prerequisite that the specified rrset does not exist; that is,
	 * there are no records with the given name and type in the zone.
	 * 
	 * @param name
	 *            the name
	 * @param type
	 *            the type
	 */
	public void absent(Name name, int type) {
		newPrereq(Record.newRecord(name, type, DClass.NONE, 0));
	}

	/**
	 * Parses a record from the string, and indicates that the record should be
	 * inserted into the zone.
	 * 
	 * @param name
	 *            the name
	 * @param type
	 *            the type
	 * @param ttl
	 *            the ttl
	 * @param record
	 *            the record
	 * @throws IOException
	 *             The record could not be parsed.
	 */
	public void add(Name name, int type, long ttl, String record)
			throws IOException {
		newUpdate(Record.fromString(name, type, dclass, ttl, record, origin));
	}

	/**
	 * Parses a record from the tokenizer, and indicates that the record should
	 * be inserted into the zone.
	 * 
	 * @param name
	 *            the name
	 * @param type
	 *            the type
	 * @param ttl
	 *            the ttl
	 * @param tokenizer
	 *            the tokenizer
	 * @throws IOException
	 *             The record could not be parsed.
	 */
	public void add(Name name, int type, long ttl, Tokenizer tokenizer)
			throws IOException {
		newUpdate(Record.fromString(name, type, dclass, ttl, tokenizer, origin));
	}

	/**
	 * Indicates that the record should be inserted into the zone.
	 * 
	 * @param record
	 *            the record
	 */
	public void add(Record record) {
		newUpdate(record);
	}

	/**
	 * Indicates that the records should be inserted into the zone.
	 * 
	 * @param records
	 *            the records
	 */
	public void add(Record[] records) {
		for (int i = 0; i < records.length; i++)
			add(records[i]);
	}

	/**
	 * Indicates that all of the records in the rrset should be inserted into
	 * the zone.
	 * 
	 * @param rrset
	 *            the rrset
	 */
	public void add(RRset rrset) {
		for (Iterator it = rrset.rrs(); it.hasNext();)
			add((Record) it.next());
	}

	/**
	 * Indicates that all records with the given name should be deleted from the
	 * zone.
	 * 
	 * @param name
	 *            the name
	 */
	public void delete(Name name) {
		newUpdate(Record.newRecord(name, Type.ANY, DClass.ANY, 0));
	}

	/**
	 * Indicates that all records with the given name and type should be deleted
	 * from the zone.
	 * 
	 * @param name
	 *            the name
	 * @param type
	 *            the type
	 */
	public void delete(Name name, int type) {
		newUpdate(Record.newRecord(name, type, DClass.ANY, 0));
	}

	/**
	 * Parses a record from the string, and indicates that the record should be
	 * deleted from the zone.
	 * 
	 * @param name
	 *            the name
	 * @param type
	 *            the type
	 * @param record
	 *            the record
	 * @throws IOException
	 *             The record could not be parsed.
	 */
	public void delete(Name name, int type, String record) throws IOException {
		newUpdate(Record.fromString(name, type, DClass.NONE, 0, record, origin));
	}

	/**
	 * Parses a record from the tokenizer, and indicates that the record should
	 * be deleted from the zone.
	 * 
	 * @param name
	 *            the name
	 * @param type
	 *            the type
	 * @param tokenizer
	 *            the tokenizer
	 * @throws IOException
	 *             The record could not be parsed.
	 */
	public void delete(Name name, int type, Tokenizer tokenizer)
			throws IOException {
		newUpdate(Record.fromString(name, type, DClass.NONE, 0, tokenizer,
				origin));
	}

	/**
	 * Indicates that the specified record should be deleted from the zone.
	 * 
	 * @param record
	 *            the record
	 */
	public void delete(Record record) {
		newUpdate(record.withDClass(DClass.NONE, 0));
	}

	/**
	 * Indicates that the records should be deleted from the zone.
	 * 
	 * @param records
	 *            the records
	 */
	public void delete(Record[] records) {
		for (int i = 0; i < records.length; i++)
			delete(records[i]);
	}

	/**
	 * Indicates that all of the records in the rrset should be deleted from the
	 * zone.
	 * 
	 * @param rrset
	 *            the rrset
	 */
	public void delete(RRset rrset) {
		for (Iterator it = rrset.rrs(); it.hasNext();)
			delete((Record) it.next());
	}

	/**
	 * Parses a record from the string, and indicates that the record should be
	 * inserted into the zone replacing any other records with the same name and
	 * type.
	 * 
	 * @param name
	 *            the name
	 * @param type
	 *            the type
	 * @param ttl
	 *            the ttl
	 * @param record
	 *            the record
	 * @throws IOException
	 *             The record could not be parsed.
	 */
	public void replace(Name name, int type, long ttl, String record)
			throws IOException {
		delete(name, type);
		add(name, type, ttl, record);
	}

	/**
	 * Parses a record from the tokenizer, and indicates that the record should
	 * be inserted into the zone replacing any other records with the same name
	 * and type.
	 * 
	 * @param name
	 *            the name
	 * @param type
	 *            the type
	 * @param ttl
	 *            the ttl
	 * @param tokenizer
	 *            the tokenizer
	 * @throws IOException
	 *             The record could not be parsed.
	 */
	public void replace(Name name, int type, long ttl, Tokenizer tokenizer)
			throws IOException {
		delete(name, type);
		add(name, type, ttl, tokenizer);
	}

	/**
	 * Indicates that the record should be inserted into the zone replacing any
	 * other records with the same name and type.
	 * 
	 * @param record
	 *            the record
	 */
	public void replace(Record record) {
		delete(record.getName(), record.getType());
		add(record);
	}

	/**
	 * Indicates that the records should be inserted into the zone replacing any
	 * other records with the same name and type as each one.
	 * 
	 * @param records
	 *            the records
	 */
	public void replace(Record[] records) {
		for (int i = 0; i < records.length; i++)
			replace(records[i]);
	}

	/**
	 * Indicates that all of the records in the rrset should be inserted into
	 * the zone replacing any other records with the same name and type.
	 * 
	 * @param rrset
	 *            the rrset
	 */
	public void replace(RRset rrset) {
		delete(rrset.getName(), rrset.getType());
		for (Iterator it = rrset.rrs(); it.hasNext();)
			add((Record) it.next());
	}

}
