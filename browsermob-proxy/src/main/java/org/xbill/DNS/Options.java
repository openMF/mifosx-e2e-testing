// Copyright (c) 1999-2004 Brian Wellington (bwelling@xbill.org)

package org.xbill.DNS;

import java.util.HashMap;
import java.util.Map;
import java.util.StringTokenizer;

// TODO: Auto-generated Javadoc
/**
 * Boolean options:<BR>
 * bindttl - Print TTLs in BIND format<BR>
 * multiline - Print records in multiline format<BR>
 * noprintin - Don't print the class of a record if it's IN<BR>
 * verbose - Turn on general debugging statements<BR>
 * verbosemsg - Print all messages sent or received by SimpleResolver<BR>
 * verbosecompression - Print messages related to name compression<BR>
 * verbosesec - Print messages related to signature verification<BR>
 * verbosecache - Print messages related to cache lookups<BR>
 * <BR>
 * Valued options:<BR>
 * tsigfudge=n - Sets the default TSIG fudge value (in seconds)<BR>
 * sig0validity=n - Sets the default SIG(0) validity period (in seconds)<BR>
 * .
 * 
 * @author Brian Wellington
 */

public final class Options {

	/** The table. */
	private static Map table;

	static {
		try {
			refresh();
		} catch (SecurityException e) {
		}
	}

	/**
	 * Instantiates a new options.
	 */
	private Options() {
	}

	/**
	 * Refresh.
	 */
	public static void refresh() {
		String s = System.getProperty("dnsjava.options");
		if (s != null) {
			StringTokenizer st = new StringTokenizer(s, ",");
			while (st.hasMoreTokens()) {
				String token = st.nextToken();
				int index = token.indexOf('=');
				if (index == -1)
					set(token);
				else {
					String option = token.substring(0, index);
					String value = token.substring(index + 1);
					set(option, value);
				}
			}
		}
	}

	/**
	 * Clears all defined options.
	 */
	public static void clear() {
		table = null;
	}

	/**
	 * Sets an option to "true".
	 * 
	 * @param option
	 *            the option
	 */
	public static void set(String option) {
		if (table == null)
			table = new HashMap();
		table.put(option.toLowerCase(), "true");
	}

	/**
	 * Sets an option to the the supplied value.
	 * 
	 * @param option
	 *            the option
	 * @param value
	 *            the value
	 */
	public static void set(String option, String value) {
		if (table == null)
			table = new HashMap();
		table.put(option.toLowerCase(), value.toLowerCase());
	}

	/**
	 * Removes an option.
	 * 
	 * @param option
	 *            the option
	 */
	public static void unset(String option) {
		if (table == null)
			return;
		table.remove(option.toLowerCase());
	}

	/**
	 * Checks if an option is defined.
	 * 
	 * @param option
	 *            the option
	 * @return true, if successful
	 */
	public static boolean check(String option) {
		if (table == null)
			return false;
		return (table.get(option.toLowerCase()) != null);
	}

	/**
	 * Returns the value of an option.
	 * 
	 * @param option
	 *            the option
	 * @return the string
	 */
	public static String value(String option) {
		if (table == null)
			return null;
		return ((String) table.get(option.toLowerCase()));
	}

	/**
	 * Returns the value of an option as an integer, or -1 if not defined.
	 * 
	 * @param option
	 *            the option
	 * @return the int
	 */
	public static int intValue(String option) {
		String s = value(option);
		if (s != null) {
			try {
				int val = Integer.parseInt(s);
				if (val > 0)
					return (val);
			} catch (NumberFormatException e) {
			}
		}
		return (-1);
	}

}
