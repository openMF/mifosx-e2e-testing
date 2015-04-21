/*
 * 
 */
package org.browsermob.core.har;

import org.codehaus.jackson.map.annotate.JsonSerialize;

// TODO: Auto-generated Javadoc
/**
 * The Class HarContent.
 */
@JsonSerialize(include = JsonSerialize.Inclusion.NON_NULL)
public class HarContent {

	/** The size. */
	private long size;

	/** The compression. */
	private Long compression;

	/** The mime type. */
	private String mimeType = "";

	/** The text. */
	private String text;

	/**
	 * Gets the size.
	 * 
	 * @return the size
	 */
	public long getSize() {
		return size;
	}

	/**
	 * Sets the size.
	 * 
	 * @param size
	 *            the new size
	 */
	public void setSize(long size) {
		this.size = size;
	}

	/**
	 * Gets the compression.
	 * 
	 * @return the compression
	 */
	public Long getCompression() {
		return compression;
	}

	/**
	 * Sets the compression.
	 * 
	 * @param compression
	 *            the new compression
	 */
	public void setCompression(Long compression) {
		this.compression = compression;
	}

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
