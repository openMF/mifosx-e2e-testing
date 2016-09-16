/*
 * 
 */
package org.browsermob.core.har;

import org.codehaus.jackson.map.ObjectMapper;

import java.io.File;
import java.io.IOException;
import java.io.OutputStream;
import java.io.Writer;

// TODO: Auto-generated Javadoc
/**
 * The Class Har.
 */
public class Har {

	/** The log. */
	private HarLog log;

	/**
	 * Instantiates a new har.
	 */
	public Har() {
	}

	/**
	 * Instantiates a new har.
	 * 
	 * @param log
	 *            the log
	 */
	public Har(HarLog log) {
		this.log = log;
	}

	/**
	 * Gets the log.
	 * 
	 * @return the log
	 */
	public HarLog getLog() {
		return log;
	}

	/**
	 * Sets the log.
	 * 
	 * @param log
	 *            the new log
	 */
	public void setLog(HarLog log) {
		this.log = log;
	}

	/**
	 * Write to.
	 * 
	 * @param writer
	 *            the writer
	 * @throws IOException
	 *             Signals that an I/O exception has occurred.
	 */
	public void writeTo(Writer writer) throws IOException {
		ObjectMapper om = new ObjectMapper();
		om.writeValue(writer, this);
	}

	/**
	 * Write to.
	 * 
	 * @param os
	 *            the os
	 * @throws IOException
	 *             Signals that an I/O exception has occurred.
	 */
	public void writeTo(OutputStream os) throws IOException {
		ObjectMapper om = new ObjectMapper();
		om.writeValue(os, this);
	}

	/**
	 * Write to.
	 * 
	 * @param file
	 *            the file
	 * @throws IOException
	 *             Signals that an I/O exception has occurred.
	 */
	public void writeTo(File file) throws IOException {
		ObjectMapper om = new ObjectMapper();
		om.writeValue(file, this);
	}
}
