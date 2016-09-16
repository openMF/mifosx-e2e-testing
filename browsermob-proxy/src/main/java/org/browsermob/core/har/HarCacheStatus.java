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
 * The Class HarCacheStatus.
 */
@JsonWriteNullProperties(value = false)
public class HarCacheStatus {

	/** The expires. */
	private Date expires;

	/** The last access. */
	private Date lastAccess;

	/** The e tag. */
	private String eTag;

	/** The hit count. */
	private int hitCount;

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
	 * Gets the last access.
	 * 
	 * @return the last access
	 */
	@JsonSerialize(using = ISO8601DateFormatter.class)
	public Date getLastAccess() {
		return lastAccess;
	}

	/**
	 * Sets the last access.
	 * 
	 * @param lastAccess
	 *            the new last access
	 */
	public void setLastAccess(Date lastAccess) {
		this.lastAccess = lastAccess;
	}

	/**
	 * Gets the e tag.
	 * 
	 * @return the e tag
	 */
	public String geteTag() {
		return eTag;
	}

	/**
	 * Sets the e tag.
	 * 
	 * @param eTag
	 *            the new e tag
	 */
	public void seteTag(String eTag) {
		this.eTag = eTag;
	}

	/**
	 * Gets the hit count.
	 * 
	 * @return the hit count
	 */
	public int getHitCount() {
		return hitCount;
	}

	/**
	 * Sets the hit count.
	 * 
	 * @param hitCount
	 *            the new hit count
	 */
	public void setHitCount(int hitCount) {
		this.hitCount = hitCount;
	}
}
