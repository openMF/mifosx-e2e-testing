/*
 * 
 */
package org.browsermob.proxy.http;

import org.apache.http.Header;
import org.apache.http.HttpResponse;
import org.apache.http.client.methods.HttpRequestBase;
import org.browsermob.core.har.HarEntry;

// TODO: Auto-generated Javadoc
/**
 * The Class BrowserMobHttpResponse.
 */
public class BrowserMobHttpResponse {

	/** The entry. */
	private HarEntry entry;

	/** The method. */
	private HttpRequestBase method;

	/** The response. */
	private HttpResponse response;

	/** The content matched. */
	private boolean contentMatched;

	/** The verification text. */
	private String verificationText;

	/** The error message. */
	private String errorMessage;

	/** The body. */
	private String body;

	/** The content type. */
	private String contentType;

	/** The char set. */
	private String charSet;

	/**
	 * Instantiates a new browser mob http response.
	 * 
	 * @param entry
	 *            the entry
	 * @param method
	 *            the method
	 * @param response
	 *            the response
	 * @param contentMatched
	 *            the content matched
	 * @param verificationText
	 *            the verification text
	 * @param errorMessage
	 *            the error message
	 * @param body
	 *            the body
	 * @param contentType
	 *            the content type
	 * @param charSet
	 *            the char set
	 */
	public BrowserMobHttpResponse(HarEntry entry, HttpRequestBase method,
			HttpResponse response, boolean contentMatched,
			String verificationText, String errorMessage, String body,
			String contentType, String charSet) {
		this.entry = entry;
		this.method = method;
		this.response = response;
		this.contentMatched = contentMatched;
		this.verificationText = verificationText;
		this.errorMessage = errorMessage;
		this.body = body;
		this.contentType = contentType;
		this.charSet = charSet;
	}

	/**
	 * Checks if is content matched.
	 * 
	 * @return true, if is content matched
	 */
	public boolean isContentMatched() {
		return contentMatched;
	}

	/**
	 * Gets the body.
	 * 
	 * @return the body
	 */
	public String getBody() {
		return body;
	}

	/**
	 * Gets the content type.
	 * 
	 * @return the content type
	 */
	public String getContentType() {
		return contentType;
	}

	/**
	 * Gets the char set.
	 * 
	 * @return the char set
	 */
	public String getCharSet() {
		return charSet;
	}

	/**
	 * Gets the error message.
	 * 
	 * @return the error message
	 */
	public String getErrorMessage() {
		return errorMessage;
	}

	/**
	 * Gets the header.
	 * 
	 * @param name
	 *            the name
	 * @return the header
	 */
	public String getHeader(String name) {
		Header header = response.getFirstHeader(name);
		if (header == null) {
			return null;
		}

		return header.getValue();
	}

	/**
	 * Gets the raw response.
	 * 
	 * @return the raw response
	 */
	public HttpResponse getRawResponse() {
		return response;
	}

	/**
	 * Check content matched.
	 * 
	 * @param info
	 *            the info
	 */
	public void checkContentMatched(String info) {
		if (!isContentMatched()) {
			throw new RuntimeException("Content match failure. Expected '"
					+ verificationText + "'."
					+ (info != null ? " " + info : ""));
		}
	}

	/**
	 * Gets the entry.
	 * 
	 * @return the entry
	 */
	public HarEntry getEntry() {
		return entry;
	}
}
