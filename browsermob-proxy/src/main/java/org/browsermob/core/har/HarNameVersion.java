/*
 * 
 */
package org.browsermob.core.har;

// TODO: Auto-generated Javadoc
/**
 * The Class HarNameVersion.
 */
public class HarNameVersion {

	/** The name. */
	private String name;

	/** The version. */
	private String version;

	/**
	 * Instantiates a new har name version.
	 */
	public HarNameVersion() {
	}

	/**
	 * Instantiates a new har name version.
	 * 
	 * @param name
	 *            the name
	 * @param version
	 *            the version
	 */
	public HarNameVersion(String name, String version) {
		this.name = name;
		this.version = version;
	}

	/**
	 * Gets the name.
	 * 
	 * @return the name
	 */
	public String getName() {
		return name;
	}

	/**
	 * Sets the name.
	 * 
	 * @param name
	 *            the new name
	 */
	public void setName(String name) {
		this.name = name;
	}

	/**
	 * Gets the version.
	 * 
	 * @return the version
	 */
	public String getVersion() {
		return version;
	}

	/**
	 * Sets the version.
	 * 
	 * @param version
	 *            the new version
	 */
	public void setVersion(String version) {
		this.version = version;
	}
}
