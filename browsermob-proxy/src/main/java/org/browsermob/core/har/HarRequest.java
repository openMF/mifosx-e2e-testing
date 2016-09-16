/*
 * 
 */
package org.browsermob.core.har;

import org.codehaus.jackson.map.annotate.JsonSerialize;

import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;

// TODO: Auto-generated Javadoc
/**
 * The Class HarRequest.
 */
@JsonSerialize(include = JsonSerialize.Inclusion.NON_NULL)
public class HarRequest {

	/** The method. */
	private String method;

	/** The url. */
	private String url;

	/** The http version. */
	private String httpVersion;

	/** The cookies. */
	private List<HarCookie> cookies = new CopyOnWriteArrayList<HarCookie>();

	/** The headers. */
	private List<HarNameValuePair> headers = new CopyOnWriteArrayList<HarNameValuePair>();

	/** The query string. */
	private List<HarNameValuePair> queryString = new CopyOnWriteArrayList<HarNameValuePair>();

	/** The post data. */
	private HarPostData postData;

	/** The headers size. */
	private long headersSize; // Odd grammar in spec

	/** The body size. */
	private long bodySize;

	/**
	 * Instantiates a new har request.
	 */
	public HarRequest() {
	}

	/**
	 * Instantiates a new har request.
	 * 
	 * @param method
	 *            the method
	 * @param url
	 *            the url
	 * @param httpVersion
	 *            the http version
	 */
	public HarRequest(String method, String url, String httpVersion) {
		this.method = method;
		this.url = url;
		this.httpVersion = httpVersion;
	}

	/**
	 * Gets the method.
	 * 
	 * @return the method
	 */
	public String getMethod() {
		return method;
	}

	/**
	 * Sets the method.
	 * 
	 * @param method
	 *            the new method
	 */
	public void setMethod(String method) {
		this.method = method;
	}

	/**
	 * Gets the url.
	 * 
	 * @return the url
	 */
	public String getUrl() {
		return url;
	}

	/**
	 * Sets the url.
	 * 
	 * @param url
	 *            the new url
	 */
	public void setUrl(String url) {
		this.url = url;
	}

	/**
	 * Gets the http version.
	 * 
	 * @return the http version
	 */
	public String getHttpVersion() {
		return httpVersion;
	}

	/**
	 * Sets the http version.
	 * 
	 * @param httpVersion
	 *            the new http version
	 */
	public void setHttpVersion(String httpVersion) {
		this.httpVersion = httpVersion;
	}

	/**
	 * Gets the cookies.
	 * 
	 * @return the cookies
	 */
	public List<HarCookie> getCookies() {
		return cookies;
	}

	/**
	 * Sets the cookies.
	 * 
	 * @param cookies
	 *            the new cookies
	 */
	public void setCookies(List<HarCookie> cookies) {
		this.cookies = cookies;
	}

	/**
	 * Gets the headers.
	 * 
	 * @return the headers
	 */
	public List<HarNameValuePair> getHeaders() {
		return headers;
	}

	/**
	 * Sets the headers.
	 * 
	 * @param headers
	 *            the new headers
	 */
	public void setHeaders(List<HarNameValuePair> headers) {
		this.headers = headers;
	}

	/**
	 * Gets the query string.
	 * 
	 * @return the query string
	 */
	public List<HarNameValuePair> getQueryString() {
		return queryString;
	}

	/**
	 * Sets the query string.
	 * 
	 * @param queryString
	 *            the new query string
	 */
	public void setQueryString(List<HarNameValuePair> queryString) {
		this.queryString = queryString;
	}

	/**
	 * Gets the post data.
	 * 
	 * @return the post data
	 */
	public HarPostData getPostData() {
		return postData;
	}

	/**
	 * Sets the post data.
	 * 
	 * @param postData
	 *            the new post data
	 */
	public void setPostData(HarPostData postData) {
		this.postData = postData;
	}

	/**
	 * Gets the headers size.
	 * 
	 * @return the headers size
	 */
	public long getHeadersSize() {
		return headersSize;
	}

	/**
	 * Sets the headers size.
	 * 
	 * @param headersSize
	 *            the new headers size
	 */
	public void setHeadersSize(long headersSize) {
		this.headersSize = headersSize;
	}

	/**
	 * Gets the body size.
	 * 
	 * @return the body size
	 */
	public long getBodySize() {
		return bodySize;
	}

	/**
	 * Sets the body size.
	 * 
	 * @param bodySize
	 *            the new body size
	 */
	public void setBodySize(long bodySize) {
		this.bodySize = bodySize;
	}
}
