/*
 * 
 */
package org.browsermob.core.har;

import org.codehaus.jackson.map.annotate.JsonSerialize;

// TODO: Auto-generated Javadoc
/**
 * The Class HarCache.
 */
@JsonSerialize(include = JsonSerialize.Inclusion.NON_NULL)
public class HarCache {

	/** The before request. */
	private HarCacheStatus beforeRequest;

	/** The after request. */
	private HarCacheStatus afterRequest;

	/**
	 * Gets the before request.
	 * 
	 * @return the before request
	 */
	public HarCacheStatus getBeforeRequest() {
		return beforeRequest;
	}

	/**
	 * Sets the before request.
	 * 
	 * @param beforeRequest
	 *            the new before request
	 */
	public void setBeforeRequest(HarCacheStatus beforeRequest) {
		this.beforeRequest = beforeRequest;
	}

	/**
	 * Gets the after request.
	 * 
	 * @return the after request
	 */
	public HarCacheStatus getAfterRequest() {
		return afterRequest;
	}

	/**
	 * Sets the after request.
	 * 
	 * @param afterRequest
	 *            the new after request
	 */
	public void setAfterRequest(HarCacheStatus afterRequest) {
		this.afterRequest = afterRequest;
	}
}
