// Copyright (c) 1999-2004 Brian Wellington (bwelling@xbill.org)

package org.xbill.DNS;

// TODO: Auto-generated Javadoc
/**
 * Constants and functions relating to DNS classes. This is called DClass to
 * avoid confusion with Class.
 * 
 * @author Brian Wellington
 */

public final class DClass {

	/** Internet. */
	public static final int IN = 1;

	/** Chaos network (MIT). */
	public static final int CH = 3;

	/** Chaos network (MIT, alternate name). */
	public static final int CHAOS = 3;

	/** Hesiod name server (MIT). */
	public static final int HS = 4;

	/** Hesiod name server (MIT, alternate name). */
	public static final int HESIOD = 4;

	/** Special value used in dynamic update messages. */
	public static final int NONE = 254;

	/** Matches any class. */
	public static final int ANY = 255;

	/**
	 * The Class DClassMnemonic.
	 */
	private static class DClassMnemonic extends Mnemonic {

		/**
		 * Instantiates a new d class mnemonic.
		 */
		public DClassMnemonic() {
			super("DClass", CASE_UPPER);
			setPrefix("CLASS");
		}

		/*
		 * (non-Javadoc)
		 * 
		 * @see org.xbill.DNS.Mnemonic#check(int)
		 */
		public void check(int val) {
			DClass.check(val);
		}
	}

	/** The classes. */
	private static Mnemonic classes = new DClassMnemonic();

	static {
		classes.add(IN, "IN");
		classes.add(CH, "CH");
		classes.addAlias(CH, "CHAOS");
		classes.add(HS, "HS");
		classes.addAlias(HS, "HESIOD");
		classes.add(NONE, "NONE");
		classes.add(ANY, "ANY");
	}

	/**
	 * Instantiates a new d class.
	 */
	private DClass() {
	}

	/**
	 * Checks that a numeric DClass is valid.
	 * 
	 * @param i
	 *            the i
	 */
	public static void check(int i) {
		if (i < 0 || i > 0xFFFF)
			throw new InvalidDClassException(i);
	}

	/**
	 * Converts a numeric DClass into a String.
	 * 
	 * @param i
	 *            the i
	 * @return The canonical string representation of the class
	 */
	public static String string(int i) {
		return classes.getText(i);
	}

	/**
	 * Converts a String representation of a DClass into its numeric value.
	 * 
	 * @param s
	 *            the s
	 * @return The class code, or -1 on error.
	 */
	public static int value(String s) {
		return classes.getValue(s);
	}

}
