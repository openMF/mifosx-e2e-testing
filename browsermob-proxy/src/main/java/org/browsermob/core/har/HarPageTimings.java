/*
 * 
 */
package org.browsermob.core.har;

import org.codehaus.jackson.annotate.JsonWriteNullProperties;

// TODO: Auto-generated Javadoc
/**
 * The Class HarPageTimings.
 */
@JsonWriteNullProperties(value = false)
public class HarPageTimings {

	/** The on content load. */
	private Long onContentLoad;

	/** The on load. */
	private Long onLoad;

	/**
	 * Instantiates a new har page timings.
	 */
	public HarPageTimings() {
	}

	/**
	 * Instantiates a new har page timings.
	 * 
	 * @param onContentLoad
	 *            the on content load
	 * @param onLoad
	 *            the on load
	 */
	public HarPageTimings(Long onContentLoad, Long onLoad) {
		this.onContentLoad = onContentLoad;
		this.onLoad = onLoad;
	}

	/**
	 * Gets the on content load.
	 * 
	 * @return the on content load
	 */
	public Long getOnContentLoad() {
		return onContentLoad;
	}

	/**
	 * Sets the on content load.
	 * 
	 * @param onContentLoad
	 *            the new on content load
	 */
	public void setOnContentLoad(Long onContentLoad) {
		this.onContentLoad = onContentLoad;
	}

	/**
	 * Gets the on load.
	 * 
	 * @return the on load
	 */
	public Long getOnLoad() {
		return onLoad;
	}

	/**
	 * Sets the on load.
	 * 
	 * @param onLoad
	 *            the new on load
	 */
	public void setOnLoad(Long onLoad) {
		this.onLoad = onLoad;
	}
}
