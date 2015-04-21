/*
 * 
 */
package org.browsermob.proxy;

// TODO: Auto-generated Javadoc
/**
 * The Enum FirefoxErrorContent.
 */
public enum FirefoxErrorContent {

	/** The conn failure. */
	CONN_FAILURE("Unable to connect",
			"Firefox can't establish a connection to the server at %s",
			FirefoxErrorConstants.SHARED_LONG_DESC),

	/** The dns not found. */
	DNS_NOT_FOUND(
			"Server not found",
			"Firefox can't find the server at %s.",
			"<ul>\n"
					+ "  <li>Check the address for typing errors such as\n"
					+ "    <strong>ww</strong>.example.com instead of\n"
					+ "    <strong>www</strong>.example.com</li>\n"
					+ "  <li>If you are unable to load any pages, check your computer's network\n"
					+ "    connection.</li>\n"
					+ "  <li>If your computer or network is protected by a firewall or proxy, make sure\n"
					+ "    that Firefox is permitted to access the Web.</li>\n"
					+ "</ul>"),

	/** The generic. */
	GENERIC("Oops.", "Something went wrong.",
			"<p>Firefox can't load this page for some reason.</p>"),

	/** The malformed uri. */
	MALFORMED_URI(
			"The address isn't valid",
			"The URL is not valid and cannot be loaded.",
			"<ul>\n"
					+ "  <li>Web addresses are usually written like\n"
					+ "    <strong>http://www.example.com/</strong></li>\n"
					+ "  <li>Make sure that you're using forward slashes (i.e.\n"
					+ "    <strong>/</strong>).</li>\n" + "</ul>"),

	/** The net interrupt. */
	NET_INTERRUPT("The connection was interrupted",
			"The connection to %s was interrupted while the page was loading.",
			FirefoxErrorConstants.SHARED_LONG_DESC),

	/** The net reset. */
	NET_RESET(
			"The connection was reset",
			"The connection to the server was reset while the page was loading.",
			FirefoxErrorConstants.SHARED_LONG_DESC),

	/** The net timeout. */
	NET_TIMEOUT("The connection has timed out",
			"The server at %s is taking too long to respond.",
			FirefoxErrorConstants.SHARED_LONG_DESC), ;

	/** The title. */
	private String title;

	/** The short desc. */
	private String shortDesc;

	/** The long desc. */
	private String longDesc;

	/**
	 * Instantiates a new firefox error content.
	 * 
	 * @param title
	 *            the title
	 * @param shortDesc
	 *            the short desc
	 * @param longDesc
	 *            the long desc
	 */
	FirefoxErrorContent(String title, String shortDesc, String longDesc) {
		this.title = title;
		this.shortDesc = shortDesc;
		this.longDesc = longDesc;
	}

	/**
	 * Gets the title.
	 * 
	 * @return the title
	 */
	public String getTitle() {
		return title;
	}

	/**
	 * Gets the short desc.
	 * 
	 * @return the short desc
	 */
	public String getShortDesc() {
		return shortDesc;
	}

	/**
	 * Gets the long desc.
	 * 
	 * @return the long desc
	 */
	public String getLongDesc() {
		return longDesc;
	}
}
