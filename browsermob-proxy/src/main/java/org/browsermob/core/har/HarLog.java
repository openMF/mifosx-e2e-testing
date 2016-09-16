/*
 * 
 */
package org.browsermob.core.har;

import org.codehaus.jackson.map.annotate.JsonSerialize;

import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;

// TODO: Auto-generated Javadoc
/**
 * The Class HarLog.
 */
@JsonSerialize(include = JsonSerialize.Inclusion.NON_NULL)
public class HarLog {

	/** The version. */
	private String version = "1.2";

	/** The creator. */
	private HarNameVersion creator;

	/** The browser. */
	private HarNameVersion browser;

	/** The pages. */
	private List<HarPage> pages = new CopyOnWriteArrayList<HarPage>();

	/** The entries. */
	private List<HarEntry> entries = new CopyOnWriteArrayList<HarEntry>();

	/**
	 * Instantiates a new har log.
	 */
	public HarLog() {
	}

	/**
	 * Instantiates a new har log.
	 * 
	 * @param creator
	 *            the creator
	 */
	public HarLog(HarNameVersion creator) {
		this.creator = creator;
	}

	/**
	 * Adds the page.
	 * 
	 * @param page
	 *            the page
	 */
	public void addPage(HarPage page) {
		if (pages == null) {
			pages = new CopyOnWriteArrayList<HarPage>();
		}

		pages.add(page);
	}

	/**
	 * Adds the entry.
	 * 
	 * @param entry
	 *            the entry
	 */
	public void addEntry(HarEntry entry) {
		if (entries == null) {
			entries = new CopyOnWriteArrayList<HarEntry>();
		}

		entries.add(entry);
	}

	/**
	 * Gets the version.
	 * 
	 * @return the version
	 */
	public String getVersion() {
		return version;
	}

	/**
	 * Sets the version.
	 * 
	 * @param version
	 *            the new version
	 */
	public void setVersion(String version) {
		this.version = version;
	}

	/**
	 * Gets the creator.
	 * 
	 * @return the creator
	 */
	public HarNameVersion getCreator() {
		return creator;
	}

	/**
	 * Sets the creator.
	 * 
	 * @param creator
	 *            the new creator
	 */
	public void setCreator(HarNameVersion creator) {
		this.creator = creator;
	}

	/**
	 * Gets the browser.
	 * 
	 * @return the browser
	 */
	public HarNameVersion getBrowser() {
		return browser;
	}

	/**
	 * Sets the browser.
	 * 
	 * @param browser
	 *            the new browser
	 */
	public void setBrowser(HarNameVersion browser) {
		this.browser = browser;
	}

	/**
	 * Gets the pages.
	 * 
	 * @return the pages
	 */
	public List<HarPage> getPages() {
		return pages;
	}

	/**
	 * Sets the pages.
	 * 
	 * @param pages
	 *            the new pages
	 */
	public void setPages(List<HarPage> pages) {
		this.pages = pages;
	}

	/**
	 * Gets the entries.
	 * 
	 * @return the entries
	 */
	public List<HarEntry> getEntries() {
		return entries;
	}

	/**
	 * Sets the entries.
	 * 
	 * @param entries
	 *            the new entries
	 */
	public void setEntries(List<HarEntry> entries) {
		this.entries = entries;
	}
}
