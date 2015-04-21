/*
 * 
 */
package org.browsermob.core.har;

import org.browsermob.core.json.ISO8601DateFormatter;
import org.codehaus.jackson.annotate.JsonWriteNullProperties;
import org.codehaus.jackson.map.annotate.JsonSerialize;

import java.util.Date;

// TODO: Auto-generated Javadoc
/**
 * The Class HarCookie.
 */
@JsonWriteNullProperties(value = false)
public class HarCookie {

	/** The name. */
	private String name;

	/** The value. */
	private String value;

	/** The path. */
	private String path;

	/** The domain. */
	private String domain;

	/** The expires. */
	private Date expires;

	/** The http only. */
	private Boolean httpOnly;

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

	/**
	 * Gets the path.
	 * 
	 * @return the path
	 */
	public String getPath() {
		return path;
	}

	/**
	 * Sets the path.
	 * 
	 * @param path
	 *            the new path
	 */
	public void setPath(String path) {
		this.path = path;
	}

	/**
	 * Gets the domain.
	 * 
	 * @return the domain
	 */
	public String getDomain() {
		return domain;
	}

	/**
	 * Sets the domain.
	 * 
	 * @param domain
	 *            the new domain
	 */
	public void setDomain(String domain) {
		this.domain = domain;
	}

	/**
	 * Gets the expires.
	 * 
	 * @return the expires
	 */
	@JsonSerialize(using = ISO8601DateFormatter.class)
	public Date getExpires() {
		return expires;
	}

	/**
	 * Sets the expires.
	 * 
	 * @param expires
	 *            the new expires
	 */
	public void setExpires(Date expires) {
		this.expires = expires;
	}

	/**
	 * Gets the http only.
	 * 
	 * @return the http only
	 */
	public Boolean getHttpOnly() {
		return httpOnly;
	}

	/**
	 * Sets the http only.
	 * 
	 * @param httpOnly
	 *            the new http only
	 */
	public void setHttpOnly(Boolean httpOnly) {
		this.httpOnly = httpOnly;
	}
}
