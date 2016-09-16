/*
 * 
 */
package org.browsermob.proxy;

import org.apache.commons.io.IOUtils;

import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.net.URL;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;
import java.util.zip.GZIPInputStream;

// TODO: Auto-generated Javadoc
/**
 * The Class HttpObject.
 */
public class HttpObject {

	/** The object num. */
	private int objectNum;

	/** The start. */
	private Date start;
	// TODO: Bad things will happen in Blocks if this is not set.
	// General problem of mutable object whose constructor does not
	// fully construct. FIX.
	/** The end. */
	private Date end;

	/** The time to first byte. */
	private long timeToFirstByte;

	/** The time to last byte. */
	private long timeToLastByte;

	/** The bytes. */
	private long bytes;

	/** The url. */
	private String url;

	/** The response code. */
	private int responseCode;

	/** The response message. */
	private String responseMessage;

	/** The method. */
	private String method;

	/** The protocol. */
	private String protocol;

	/** The protocal version. */
	private String protocalVersion;

	/** The host. */
	private String host;

	/** The path. */
	private String path;

	/** The query string. */
	private String queryString;
	// headers, cookies
	// List<Map<String,String>> ?? best way to do it? all are ugly
	/** The request headers. */
	private Map<String, String> requestHeaders;
	// private Map<String,String> requestCookies; // Redundant with headers
	/** The response headers. */
	private Map<String, String> responseHeaders;

	/** The response bytes. */
	private byte[] responseBytes;

	/** The response string. */
	private String responseString;

	/**
	 * Instantiates a new http object.
	 */
	public HttpObject() {
	}

	/**
	 * Instantiates a new http object.
	 * 
	 * @param start
	 *            the start
	 * @param url
	 *            the url
	 * @param method
	 *            the method
	 */
	public HttpObject(Date start, URL url, String method) {
		this.start = start;
		this.url = url.toExternalForm();
		this.method = method;
		this.protocol = url.getProtocol();
		this.host = url.getHost();
		this.path = url.getPath();
		this.queryString = url.getQuery();
	}

	/**
	 * Sets the object num.
	 * 
	 * @param objectNum
	 *            the new object num
	 */
	public void setObjectNum(int objectNum) {
		this.objectNum = objectNum;
	}

	/**
	 * Sets the response code.
	 * 
	 * @param responseCode
	 *            the new response code
	 */
	public void setResponseCode(int responseCode) {
		this.responseCode = responseCode;
	}

	/**
	 * Sets the response message.
	 * 
	 * @param responseMessage
	 *            the new response message
	 */
	public void setResponseMessage(String responseMessage) {
		this.responseMessage = responseMessage;
	}

	/**
	 * Gets the response message.
	 * 
	 * @return the response message
	 */
	public String getResponseMessage() {
		return responseMessage;
	}

	/**
	 * Sets the bytes.
	 * 
	 * @param bytes
	 *            the new bytes
	 */
	public void setBytes(long bytes) {
		this.bytes = bytes;
	}

	/**
	 * Sets the time to last byte.
	 * 
	 * @param timeToLastByte
	 *            the new time to last byte
	 */
	public void setTimeToLastByte(long timeToLastByte) {
		this.timeToLastByte = timeToLastByte;
	}

	/**
	 * Sets the time to first byte.
	 * 
	 * @param timeToFirstByte
	 *            the new time to first byte
	 */
	public void setTimeToFirstByte(long timeToFirstByte) {
		this.timeToFirstByte = timeToFirstByte;
	}

	/**
	 * Gets the object num.
	 * 
	 * @return the object num
	 */
	public int getObjectNum() {
		return objectNum;
	}

	/**
	 * Gets the start.
	 * 
	 * @return the start
	 */
	public Date getStart() {
		return start;
	}

	/**
	 * Gets the time to first byte.
	 * 
	 * @return the time to first byte
	 */
	public long getTimeToFirstByte() {
		return timeToFirstByte;
	}

	/**
	 * Gets the time to last byte.
	 * 
	 * @return the time to last byte
	 */
	public long getTimeToLastByte() {
		return timeToLastByte;
	}

	/**
	 * Gets the bytes.
	 * 
	 * @return the bytes
	 */
	public long getBytes() {
		return bytes;
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
	 * Gets the response code.
	 * 
	 * @return the response code
	 */
	public int getResponseCode() {
		return responseCode;
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
	 * Gets the protocol.
	 * 
	 * @return the protocol
	 */
	public String getProtocol() {
		return protocol;
	}

	/**
	 * Gets the protocol version.
	 * 
	 * @return the protocol version
	 */
	public String getProtocolVersion() {
		return protocalVersion;
	}

	/**
	 * Sets the protocol version.
	 * 
	 * @param protocalVersion
	 *            the new protocol version
	 */
	public void setProtocolVersion(String protocalVersion) {
		this.protocalVersion = protocalVersion;
	}

	/**
	 * Gets the host.
	 * 
	 * @return the host
	 */
	public String getHost() {
		return host;
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
	 * Gets the query string.
	 * 
	 * @return the query string
	 */
	public String getQueryString() {
		return queryString;
	}

	/**
	 * Sets the end.
	 * 
	 * @param end
	 *            the new end
	 */
	public void setEnd(Date end) {
		this.end = end;
	}

	/**
	 * Gets the end.
	 * 
	 * @return the end
	 */
	public Date getEnd() {
		return end;
	}

	/**
	 * Sets the response headers.
	 * 
	 * @param responseHeaders
	 *            the response headers
	 */
	public void setResponseHeaders(Map<String, String> responseHeaders) {
		this.responseHeaders = responseHeaders;
	}

	/**
	 * Gets the response headers.
	 * 
	 * @return the response headers
	 */
	public Map<String, String> getResponseHeaders() {
		if (responseHeaders == null) {
			return new HashMap<String, String>();
		}
		return responseHeaders;
	}

	/**
	 * Sets the request headers.
	 * 
	 * @param requestHeaders
	 *            the request headers
	 */
	public void setRequestHeaders(Map<String, String> requestHeaders) {
		this.requestHeaders = requestHeaders;
	}

	/**
	 * Gets the request headers.
	 * 
	 * @return the request headers
	 */
	public Map<String, String> getRequestHeaders() {
		if (requestHeaders == null) {
			return new HashMap<String, String>();
		}
		return requestHeaders;
	}

	/**
	 * Gets the response bytes.
	 * 
	 * @return the response bytes
	 */
	public byte[] getResponseBytes() {
		return responseBytes;
	}

	/**
	 * Gets the response string.
	 * 
	 * @return the response string
	 */
	public String getResponseString() {
		return responseString;
	}

	/**
	 * Sets the response content.
	 * 
	 * @param bytes
	 *            the new response content
	 */
	public void setResponseContent(byte[] bytes) {
		responseBytes = bytes;
		try {
			responseString = new String(bytes, "UTF-8");
		} catch (UnsupportedEncodingException e) {
			// leave null
		}
		try {
			// java is ridiculous. Attempt to unzip content. Ignore deflate.
			responseString = new String(
					IOUtils.toByteArray(new GZIPInputStream(
							new ByteArrayInputStream(responseBytes))), "UTF-8");
		} catch (IOException e) {
			// e.printStackTrace();
			// gunzip failed, left in original form
		}
	}

}
