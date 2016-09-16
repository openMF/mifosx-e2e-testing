/*
 * 
 */
package org.browsermob.core.har;

import org.codehaus.jackson.annotate.JsonWriteNullProperties;

import java.util.List;

// TODO: Auto-generated Javadoc
/**
 * The Class HarPostData.
 */
@JsonWriteNullProperties(value = false)
public class HarPostData {

	/** The mime type. */
	private String mimeType;

	/** The params. */
	private List<HarPostDataParam> params;

	/** The text. */
	private String text;

	/**
	 * Gets the mime type.
	 * 
	 * @return the mime type
	 */
	public String getMimeType() {
		return mimeType;
	}

	/**
	 * Sets the mime type.
	 * 
	 * @param mimeType
	 *            the new mime type
	 */
	public void setMimeType(String mimeType) {
		this.mimeType = mimeType;
	}

	/**
	 * Gets the params.
	 * 
	 * @return the params
	 */
	public List<HarPostDataParam> getParams() {
		return params;
	}

	/**
	 * Sets the params.
	 * 
	 * @param params
	 *            the new params
	 */
	public void setParams(List<HarPostDataParam> params) {
		this.params = params;
	}

	/**
	 * Gets the text.
	 * 
	 * @return the text
	 */
	public String getText() {
		return text;
	}

	/**
	 * Sets the text.
	 * 
	 * @param text
	 *            the new text
	 */
	public void setText(String text) {
		this.text = text;
	}
}
