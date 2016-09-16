/*
 * 
 */
package org.browsermob.proxy.guice;

import com.google.inject.name.Named;

import java.lang.annotation.Annotation;

// TODO: Auto-generated Javadoc
/**
 * The Class NamedImpl.
 */
public class NamedImpl implements Named {

	/** The value. */
	final String value;

	/**
	 * Instantiates a new named impl.
	 * 
	 * @param value
	 *            the value
	 */
	public NamedImpl(String value) {
		this.value = value == null ? "name" : value;
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see com.google.inject.name.Named#value()
	 */
	public String value() {
		return this.value;
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see java.lang.Object#hashCode()
	 */
	public int hashCode() {
		// This is specified in java.lang.Annotation.
		return 127 * "value".hashCode() ^ value.hashCode();
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see java.lang.Object#equals(java.lang.Object)
	 */
	public boolean equals(Object o) {
		if (!(o instanceof Named)) {
			return false;
		}

		Named other = (Named) o;
		return value.equals(other.value());
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see java.lang.Object#toString()
	 */
	public String toString() {
		return "@" + Named.class.getName() + "(value=" + value + ")";
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see java.lang.annotation.Annotation#annotationType()
	 */
	public Class<? extends Annotation> annotationType() {
		return Named.class;
	}
}
