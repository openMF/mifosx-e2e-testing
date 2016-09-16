// Copyright (c) 1999-2004 Brian Wellington (bwelling@xbill.org)

package org.xbill.DNS;

// TODO: Auto-generated Javadoc
/**
 * Constants and functions relating to DNS message sections.
 * 
 * @author Brian Wellington
 */

public final class Section {

	/** The question (first) section. */
	public static final int QUESTION = 0;

	/** The answer (second) section. */
	public static final int ANSWER = 1;

	/** The authority (third) section. */
	public static final int AUTHORITY = 2;

	/** The additional (fourth) section. */
	public static final int ADDITIONAL = 3;

	/* Aliases for dynamic update */
	/** The zone (first) section of a dynamic update message. */
	public static final int ZONE = 0;

	/** The prerequisite (second) section of a dynamic update message. */
	public static final int PREREQ = 1;

	/** The update (third) section of a dynamic update message. */
	public static final int UPDATE = 2;

	/** The sections. */
	private static Mnemonic sections = new Mnemonic("Message Section",
			Mnemonic.CASE_LOWER);

	/** The long sections. */
	private static String[] longSections = new String[4];

	/** The update sections. */
	private static String[] updateSections = new String[4];

	static {
		sections.setMaximum(3);
		sections.setNumericAllowed(true);

		sections.add(QUESTION, "qd");
		sections.add(ANSWER, "an");
		sections.add(AUTHORITY, "au");
		sections.add(ADDITIONAL, "ad");

		longSections[QUESTION] = "QUESTIONS";
		longSections[ANSWER] = "ANSWERS";
		longSections[AUTHORITY] = "AUTHORITY RECORDS";
		longSections[ADDITIONAL] = "ADDITIONAL RECORDS";

		updateSections[ZONE] = "ZONE";
		updateSections[PREREQ] = "PREREQUISITES";
		updateSections[UPDATE] = "UPDATE RECORDS";
		updateSections[ADDITIONAL] = "ADDITIONAL RECORDS";
	}

	/**
	 * Instantiates a new section.
	 */
	private Section() {
	}

	/**
	 * Converts a numeric Section into an abbreviation String.
	 * 
	 * @param i
	 *            the i
	 * @return the string
	 */
	public static String string(int i) {
		return sections.getText(i);
	}

	/**
	 * Converts a numeric Section into a full description String.
	 * 
	 * @param i
	 *            the i
	 * @return the string
	 */
	public static String longString(int i) {
		sections.check(i);
		return longSections[i];
	}

	/**
	 * Converts a numeric Section into a full description String for an update
	 * Message.
	 * 
	 * @param i
	 *            the i
	 * @return the string
	 */
	public static String updString(int i) {
		sections.check(i);
		return updateSections[i];
	}

	/**
	 * Converts a String representation of a Section into its numeric value.
	 * 
	 * @param s
	 *            the s
	 * @return the int
	 */
	public static int value(String s) {
		return sections.getValue(s);
	}

}
