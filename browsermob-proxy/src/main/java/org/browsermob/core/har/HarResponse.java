/*
 * 
 */
package org.browsermob.core.har;

import org.codehaus.jackson.map.annotate.JsonSerialize;

import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;

// TODO: Auto-generated Javadoc
/**
 * The Class HarResponse.
 */
@JsonSerialize(include = JsonSerialize.Inclusion.NON_NULL)
public class HarResponse {

	/** The status. */
	private int status;

	/** The status text. */
	private String statusText;

	/** The http version. */
	private String httpVersion;

	/** The cookies. */
	private List<HarCookie> cookies = new CopyOnWriteArrayList<HarCookie>();

	/** The headers. */
	private List<HarNameValuePair> headers = new CopyOnWriteArrayList<HarNameValuePair>();

	/** The content. */
	private HarContent content = new HarContent();

	/** The redirect url. */
	private String redirectURL = "";

	/** The headers size. */
	private long headersSize;

	/** The body size. */
	private long bodySize;

	/**
	 * Instantiates a new har response.
	 */
	public HarResponse() {
	}

	/**
	 * Instantiates a new har response.
	 * 
	 * @param status
	 *            the status
	 * @param statusText
	 *            the status text
	 * @param httpVersion
	 *            the http version
	 */
	public HarResponse(int status, String statusText, String httpVersion) {
		this.status = status;
		this.statusText = statusText;
		this.httpVersion = httpVersion;
	}

	/**
	 * Gets the status.
	 * 
	 * @return the status
	 */
	public int getStatus() {
		return status;
	}

	/**
	 * Sets the status.
	 * 
	 * @param status
	 *            the new status
	 */
	public void setStatus(int status) {
		this.status = status;
	}

	/**
	 * Gets the status text.
	 * 
	 * @return the status text
	 */
	public String getStatusText() {
		return statusText;
	}

	/**
	 * Sets the status text.
	 * 
	 * @param statusText
	 *            the new status text
	 */
	public void setStatusText(String statusText) {
		this.statusText = statusText;
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
	 * Gets the content.
	 * 
	 * @return the content
	 */
	public HarContent getContent() {
		return content;
	}

	/**
	 * Sets the content.
	 * 
	 * @param content
	 *            the new content
	 */
	public void setContent(HarContent content) {
		this.content = content;
	}

	/**
	 * Gets the redirect url.
	 * 
	 * @return the redirect url
	 */
	public String getRedirectURL() {
		return redirectURL;
	}

	/**
	 * Sets the redirect url.
	 * 
	 * @param redirectURL
	 *            the new redirect url
	 */
	public void setRedirectURL(String redirectURL) {
		this.redirectURL = redirectURL;
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
