/*
 * 
 */
package cz.mallat.uasparser.fileparser;

import java.util.ArrayList;
import java.util.List;

// TODO: Auto-generated Javadoc
/**
 * JavaBean that holds an entry from a parsed file.
 * 
 * @author oli
 */
public class Entry {

	/** The key. */
	private String key;

	/** The data. */
	private List<String> data = new ArrayList<String>();

	/**
	 * Instantiates a new entry.
	 * 
	 * @param key
	 *            the key
	 */
	public Entry(String key) {
		this.key = key;
	}

	/**
	 * Gets the key.
	 * 
	 * @return the key
	 */
	public String getKey() {
		return key;
	}

	/**
	 * Sets the key.
	 * 
	 * @param key
	 *            the new key
	 */
	public void setKey(String key) {
		this.key = key;
	}

	/**
	 * Gets the data.
	 * 
	 * @return the data
	 */
	public List<String> getData() {
		return data;
	}

	/**
	 * Sets the data.
	 * 
	 * @param data
	 *            the new data
	 */
	public void setData(List<String> data) {
		this.data = data;
	}

}
