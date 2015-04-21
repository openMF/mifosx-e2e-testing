/*
 * 
 */
package org.browsermob.core.har;

import org.codehaus.jackson.annotate.JsonWriteNullProperties;

// TODO: Auto-generated Javadoc
/**
 * The Class HarPostDataParam.
 */
@JsonWriteNullProperties(value = false)
public class HarPostDataParam {

	/** The name. */
	private String name;

	/** The value. */
	private String value;

	/** The file name. */
	private String fileName;

	/** The content type. */
	private String contentType;

	/**
	 * Instantiates a new har post data param.
	 */
	public HarPostDataParam() {
	}

	/**
	 * Instantiates a new har post data param.
	 * 
	 * @param name
	 *            the name
	 * @param value
	 *            the value
	 */
	public HarPostDataParam(String name, String value) {
		this.name = name;
		this.value = value;
	}

	/**
	 * Gets the name.
	 * 
	 * @return the name
	 */
	public String getName() {
		return name;
	}

	/**
	 * Sets the name.
	 * 
	 * @param name
	 *            the new name
	 */
	public void setName(String name) {
		this.name = name;
	}

	/**
	 * Gets the value.
	 * 
	 * @return the value
	 */
	public String getValue() {
		return value;
	}

	/**
	 * Sets the value.
	 * 
	 * @param value
	 *            the new value
	 */
	public void setValue(String value) {
		this.value = value;
	}

	/**
	 * Gets the file name.
	 * 
	 * @return the file name
	 */
	public String getFileName() {
		return fileName;
	}

	/**
	 * Sets the file name.
	 * 
	 * @param fileName
	 *            the new file name
	 */
	public void setFileName(String fileName) {
		this.fileName = fileName;
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
	 * Sets the content type.
	 * 
	 * @param contentType
	 *            the new content type
	 */
	public void setContentType(String contentType) {
		this.contentType = contentType;
	}
}
