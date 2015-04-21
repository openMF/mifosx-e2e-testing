/*
 * 
 */
package cz.mallat.uasparser.fileparser;

import java.util.ArrayList;
import java.util.List;

// TODO: Auto-generated Javadoc
/**
 * JavaBean that holds a section from a parsed file. A section is a row in
 * square brackets, e.g. [main]
 * 
 * @author oli
 */
public class Section {

	/** The name. */
	private String name;

	/** The entries. */
	private List<Entry> entries;

	/**
	 * Instantiates a new section.
	 * 
	 * @param sectionName
	 *            the section name
	 */
	public Section(String sectionName) {
		this.name = sectionName;
		this.entries = new ArrayList<Entry>();
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
	 * Gets the entries.
	 * 
	 * @return the entries
	 */
	public List<Entry> getEntries() {
		return entries;
	}

	/**
	 * Sets the entries.
	 * 
	 * @param entries
	 *            the new entries
	 */
	public void setEntries(List<Entry> entries) {
		this.entries = entries;
	}

}
