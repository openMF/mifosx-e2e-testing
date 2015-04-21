/*
 * 
 */
package org.browsermob.core.har;

import org.browsermob.core.json.ISO8601DateFormatter;
import org.codehaus.jackson.annotate.JsonAutoDetect;
import org.codehaus.jackson.map.annotate.JsonSerialize;

import java.util.Date;

// TODO: Auto-generated Javadoc
/**
 * The Class HarEntry.
 */
@JsonSerialize(include = JsonSerialize.Inclusion.NON_NULL)
@JsonAutoDetect
public class HarEntry {

	/** The pageref. */
	private String pageref;

	/** The started date time. */
	private Date startedDateTime;

	/** The time. */
	private long time;

	/** The request. */
	private HarRequest request;

	/** The response. */
	private HarResponse response;

	/** The cache. */
	private HarCache cache = new HarCache();

	/** The timings. */
	private HarTimings timings;

	/** The server ip address. */
	private String serverIPAddress;

	/**
	 * Instantiates a new har entry.
	 */
	public HarEntry() {
	}

	/**
	 * Instantiates a new har entry.
	 * 
	 * @param pageref
	 *            the pageref
	 */
	public HarEntry(String pageref) {
		this.pageref = pageref;
		this.startedDateTime = new Date();
	}

	/**
	 * Gets the pageref.
	 * 
	 * @return the pageref
	 */
	public String getPageref() {
		return pageref;
	}

	/**
	 * Sets the pageref.
	 * 
	 * @param pageref
	 *            the new pageref
	 */
	public void setPageref(String pageref) {
		this.pageref = pageref;
	}

	/**
	 * Gets the started date time.
	 * 
	 * @return the started date time
	 */
	@JsonSerialize(using = ISO8601DateFormatter.class)
	public Date getStartedDateTime() {
		return startedDateTime;
	}

	/**
	 * Sets the started date time.
	 * 
	 * @param startedDateTime
	 *            the new started date time
	 */
	public void setStartedDateTime(Date startedDateTime) {
		this.startedDateTime = startedDateTime;
	}

	/**
	 * Gets the time.
	 * 
	 * @return the time
	 */
	public long getTime() {
		return time;
	}

	/**
	 * Sets the time.
	 * 
	 * @param time
	 *            the new time
	 */
	public void setTime(long time) {
		this.time = time;
	}

	/**
	 * Gets the request.
	 * 
	 * @return the request
	 */
	public HarRequest getRequest() {
		return request;
	}

	/**
	 * Sets the request.
	 * 
	 * @param request
	 *            the new request
	 */
	public void setRequest(HarRequest request) {
		this.request = request;
	}

	/**
	 * Gets the response.
	 * 
	 * @return the response
	 */
	public HarResponse getResponse() {
		return response;
	}

	/**
	 * Sets the response.
	 * 
	 * @param response
	 *            the new response
	 */
	public void setResponse(HarResponse response) {
		this.response = response;
	}

	/**
	 * Gets the cache.
	 * 
	 * @return the cache
	 */
	public HarCache getCache() {
		return cache;
	}

	/**
	 * Sets the cache.
	 * 
	 * @param cache
	 *            the new cache
	 */
	public void setCache(HarCache cache) {
		this.cache = cache;
	}

	/**
	 * Gets the timings.
	 * 
	 * @return the timings
	 */
	public HarTimings getTimings() {
		return timings;
	}

	/**
	 * Sets the timings.
	 * 
	 * @param timings
	 *            the new timings
	 */
	public void setTimings(HarTimings timings) {
		this.timings = timings;
	}

	/**
	 * Gets the server ip address.
	 * 
	 * @return the server ip address
	 */
	public String getServerIPAddress() {
		return serverIPAddress;
	}

	/**
	 * Sets the server ip address.
	 * 
	 * @param serverIPAddress
	 *            the new server ip address
	 */
	public void setServerIPAddress(String serverIPAddress) {
		this.serverIPAddress = serverIPAddress;
	}
}
