/*
 * 
 */
package org.browsermob.proxy.http;

import org.apache.http.NameValuePair;
import org.apache.http.client.entity.UrlEncodedFormEntity;
import org.apache.http.client.methods.HttpEntityEnclosingRequestBase;
import org.apache.http.client.methods.HttpRequestBase;
import org.apache.http.entity.ByteArrayEntity;
import org.apache.http.entity.InputStreamEntity;
import org.apache.http.entity.StringEntity;
import org.apache.http.entity.mime.HttpMultipartMode;
import org.apache.http.entity.mime.MultipartEntity;
import org.apache.http.entity.mime.content.StringBody;
import org.apache.http.message.BasicNameValuePair;
import org.apache.http.protocol.HTTP;
import org.browsermob.proxy.jetty.http.HttpRequest;
import org.browsermob.proxy.util.Base64;
import org.browsermob.proxy.util.ClonedInputStream;
import org.browsermob.proxy.util.Log;

import java.io.ByteArrayOutputStream;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
import java.util.List;

// TODO: Auto-generated Javadoc
/**
 * The Class BrowserMobHttpRequest.
 */
public class BrowserMobHttpRequest {

	/** The Constant LOG. */
	private static final Log LOG = new Log();

	/** The method. */
	private HttpRequestBase method;

	/** The client. */
	private BrowserMobHttpClient client;

	/** The expected status code. */
	private int expectedStatusCode;

	/** The verification text. */
	private String verificationText;

	/** The nvps. */
	private List<NameValuePair> nvps = new ArrayList<NameValuePair>();

	/** The string entity. */
	private StringEntity stringEntity;

	/** The byte array entity. */
	private ByteArrayEntity byteArrayEntity;

	/** The input stream entity. */
	private InputStreamEntity inputStreamEntity;

	/** The multipart entity. */
	private MultipartEntity multipartEntity;

	/** The output stream. */
	private OutputStream outputStream;

	/** The request callback. */
	private RequestCallback requestCallback;

	/** The collect additional info. */
	private boolean collectAdditionalInfo;

	/** The proxy request. */
	private HttpRequest proxyRequest;

	/** The copy. */
	private ByteArrayOutputStream copy;

	/** The expected location. */
	private String expectedLocation;

	/** The multi part. */
	private boolean multiPart;

	/**
	 * Instantiates a new browser mob http request.
	 * 
	 * @param method
	 *            the method
	 * @param client
	 *            the client
	 * @param expectedStatusCode
	 *            the expected status code
	 * @param collectAdditionalInfo
	 *            the collect additional info
	 * @param proxyRequest
	 *            the proxy request
	 */
	protected BrowserMobHttpRequest(HttpRequestBase method,
			BrowserMobHttpClient client, int expectedStatusCode,
			boolean collectAdditionalInfo, HttpRequest proxyRequest) {
		this.method = method;
		this.client = client;
		this.expectedStatusCode = expectedStatusCode;
		this.collectAdditionalInfo = collectAdditionalInfo;
		this.proxyRequest = proxyRequest;
	}

	/**
	 * Gets the expected location.
	 * 
	 * @return the expected location
	 */
	public String getExpectedLocation() {
		return expectedLocation;
	}

	/**
	 * Sets the expected location.
	 * 
	 * @param location
	 *            the new expected location
	 */
	public void setExpectedLocation(String location) {
		this.expectedLocation = location;
	}

	/**
	 * Adds the request header.
	 * 
	 * @param key
	 *            the key
	 * @param value
	 *            the value
	 */
	public void addRequestHeader(String key, String value) {
		method.addHeader(key, value);
	}

	/**
	 * Adds the request parameter.
	 * 
	 * @param key
	 *            the key
	 * @param value
	 *            the value
	 */
	public void addRequestParameter(String key, String value) {
		nvps.add(new BasicNameValuePair(key, value));
	}

	/**
	 * Sets the request body.
	 * 
	 * @param body
	 *            the body
	 * @param contentType
	 *            the content type
	 * @param charSet
	 *            the char set
	 */
	public void setRequestBody(String body, String contentType, String charSet) {
		try {
			stringEntity = new StringEntity(body, charSet);
		} catch (UnsupportedEncodingException e) {
			try {
				stringEntity = new StringEntity(body, (String) null);
			} catch (UnsupportedEncodingException e1) {
				// this won't happen
			}
		}

		stringEntity.setContentType(contentType);
	}

	/**
	 * Sets the request body.
	 * 
	 * @param body
	 *            the new request body
	 */
	public void setRequestBody(String body) {
		setRequestBody(body, null, "UTF-8");
	}

	/**
	 * Sets the request body as base64 encoded bytes.
	 * 
	 * @param bodyBase64Encoded
	 *            the new request body as base64 encoded bytes
	 */
	public void setRequestBodyAsBase64EncodedBytes(String bodyBase64Encoded) {
		byteArrayEntity = new ByteArrayEntity(
				Base64.base64ToByteArray(bodyBase64Encoded));
	}

	/**
	 * Sets the request input stream.
	 * 
	 * @param is
	 *            the is
	 * @param length
	 *            the length
	 */
	public void setRequestInputStream(InputStream is, long length) {
		if (collectAdditionalInfo) {
			ClonedInputStream cis = new ClonedInputStream(is);
			is = cis;
			copy = cis.getOutput();
		}

		inputStreamEntity = new InputStreamEntity(is, length);
	}

	/**
	 * Gets the verification text.
	 * 
	 * @return the verification text
	 */
	public String getVerificationText() {
		return verificationText;
	}

	/**
	 * Sets the verification text.
	 * 
	 * @param verificationText
	 *            the new verification text
	 */
	public void setVerificationText(String verificationText) {
		this.verificationText = verificationText;
	}

	/**
	 * Gets the method.
	 * 
	 * @return the method
	 */
	public HttpRequestBase getMethod() {
		return method;
	}

	/**
	 * Gets the proxy request.
	 * 
	 * @return the proxy request
	 */
	public HttpRequest getProxyRequest() {
		return proxyRequest;
	}

	/**
	 * Make multi part.
	 */
	public void makeMultiPart() {
		if (!multiPart) {
			multiPart = true;
			multipartEntity = new MultipartEntity(
					HttpMultipartMode.BROWSER_COMPATIBLE);
		}
	}

	/**
	 * Execute.
	 * 
	 * @return the browser mob http response
	 */
	public BrowserMobHttpResponse execute() {
		// deal with PUT/POST requests
		if (method instanceof HttpEntityEnclosingRequestBase) {
			HttpEntityEnclosingRequestBase enclodingRequest = (HttpEntityEnclosingRequestBase) method;

			if (!nvps.isEmpty()) {
				try {
					if (!multiPart) {
						enclodingRequest.setEntity(new UrlEncodedFormEntity(
								nvps, HTTP.UTF_8));
					} else {
						for (NameValuePair nvp : nvps) {
							multipartEntity.addPart(nvp.getName(),
									new StringBody(nvp.getValue()));
						}
						enclodingRequest.setEntity(multipartEntity);
					}
				} catch (UnsupportedEncodingException e) {
					LOG.severe(
							"Could not find UTF-8 encoding, something is really wrong",
							e);
				}
			} else if (multipartEntity != null) {
				enclodingRequest.setEntity(multipartEntity);
			} else if (byteArrayEntity != null) {
				enclodingRequest.setEntity(byteArrayEntity);
			} else if (stringEntity != null) {
				enclodingRequest.setEntity(stringEntity);
			} else if (inputStreamEntity != null) {
				enclodingRequest.setEntity(inputStreamEntity);
			}
		}

		return client.execute(this);
	}

	/**
	 * Gets the expected status code.
	 * 
	 * @return the expected status code
	 */
	public int getExpectedStatusCode() {
		return expectedStatusCode;
	}

	/**
	 * Sets the expected status code.
	 * 
	 * @param expectedStatusCode
	 *            the new expected status code
	 */
	public void setExpectedStatusCode(int expectedStatusCode) {
		this.expectedStatusCode = expectedStatusCode;
	}

	/**
	 * Gets the output stream.
	 * 
	 * @return the output stream
	 */
	public OutputStream getOutputStream() {
		return outputStream;
	}

	/**
	 * Sets the output stream.
	 * 
	 * @param outputStream
	 *            the new output stream
	 */
	public void setOutputStream(OutputStream outputStream) {
		this.outputStream = outputStream;
	}

	/**
	 * Gets the request callback.
	 * 
	 * @return the request callback
	 */
	public RequestCallback getRequestCallback() {
		return requestCallback;
	}

	/**
	 * Sets the request callback.
	 * 
	 * @param requestCallback
	 *            the new request callback
	 */
	public void setRequestCallback(RequestCallback requestCallback) {
		this.requestCallback = requestCallback;
	}

	/**
	 * Gets the copy.
	 * 
	 * @return the copy
	 */
	public ByteArrayOutputStream getCopy() {
		return copy;
	}
}
