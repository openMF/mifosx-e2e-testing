/*
 * 
 */
package org.browsermob.core.har;

// TODO: Auto-generated Javadoc
/**
 * The Class HarNameValuePair.
 */
public final class HarNameValuePair {

	/** The name. */
	private String name;

	/** The value. */
	private String value;

	/**
	 * Instantiates a new har name value pair.
	 */
	public HarNameValuePair() {
	}

	/**
	 * Instantiates a new har name value pair.
	 * 
	 * @param name
	 *            the name
	 * @param value
	 *            the value
	 */
	public HarNameValuePair(String name, String value) {
		this.name = name;
		this.value = value;
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
	 * Gets the value.
	 * 
	 * @return the value
	 */
	public String getValue() {
		return value;
	}

	/**
	 * Sets the value.
	 * 
	 * @param value
	 *            the new value
	 */
	public void setValue(String value) {
		this.value = value;
	}

	// TODO: Perhaps these should be done the right way
	/*
	 * (non-Javadoc)
	 * 
	 * @see java.lang.Object#equals(java.lang.Object)
	 */
	public boolean equals(Object o) {
		HarNameValuePair obj = (HarNameValuePair) o;
		return obj.getName().equals(this.getName())
				&& obj.getValue().equals(this.getValue());

	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see java.lang.Object#hashCode()
	 */
	public int hashCode() {
		return toString().hashCode();
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see java.lang.Object#toString()
	 */
	public String toString() {
		return name + "=" + value;
	}
}
