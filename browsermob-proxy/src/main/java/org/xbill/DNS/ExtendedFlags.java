// Copyright (c) 2004 Brian Wellington (bwelling@xbill.org)

package org.xbill.DNS;

// TODO: Auto-generated Javadoc
/**
 * Constants and functions relating to EDNS flags.
 * 
 * @author Brian Wellington
 */

public final class ExtendedFlags {

	/** The extflags. */
	private static Mnemonic extflags = new Mnemonic("EDNS Flag",
			Mnemonic.CASE_LOWER);

	/** dnssec ok. */
	public static final int DO = 0x8000;

	static {
		extflags.setMaximum(0xFFFF);
		extflags.setPrefix("FLAG");
		extflags.setNumericAllowed(true);

		extflags.add(DO, "do");
	}

	/**
	 * Instantiates a new extended flags.
	 */
	private ExtendedFlags() {
	}

	/**
	 * Converts a numeric extended flag into a String.
	 * 
	 * @param i
	 *            the i
	 * @return the string
	 */
	public static String string(int i) {
		return extflags.getText(i);
	}

	/**
	 * Converts a textual representation of an extended flag into its numeric
	 * value.
	 * 
	 * @param s
	 *            the s
	 * @return the int
	 */
	public static int value(String s) {
		return extflags.getValue(s);
	}

}
