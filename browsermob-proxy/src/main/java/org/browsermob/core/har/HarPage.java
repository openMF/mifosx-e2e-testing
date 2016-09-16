/*
 * 
 */
package org.browsermob.core.har;

import org.browsermob.core.json.ISO8601DateFormatter;
import org.codehaus.jackson.map.annotate.JsonSerialize;

import java.util.Date;

// TODO: Auto-generated Javadoc
/**
 * The Class HarPage.
 */
@JsonSerialize(include = JsonSerialize.Inclusion.NON_NULL)
public class HarPage {

	/** The id. */
	private String id;

	/** The started date time. */
	private Date startedDateTime;

	/** The title. */
	private String title = "";

	/** The page timings. */
	private HarPageTimings pageTimings = new HarPageTimings();

	/**
	 * Instantiates a new har page.
	 */
	public HarPage() {
	}

	/**
	 * Instantiates a new har page.
	 * 
	 * @param id
	 *            the id
	 */
	public HarPage(String id) {
		this.id = id;
		startedDateTime = new Date();
	}

	/**
	 * Gets the id.
	 * 
	 * @return the id
	 */
	public String getId() {
		return id;
	}

	/**
	 * Sets the id.
	 * 
	 * @param id
	 *            the new id
	 */
	public void setId(String id) {
		this.id = id;
	}

	/**
	 * Gets the started date time.
	 * 
	 * @return the started date time
	 */
	@JsonSerialize(using = ISO8601DateFormatter.class)
	public Date getStartedDateTime() {
		return startedDateTime;
	}

	/**
	 * Sets the started date time.
	 * 
	 * @param startedDateTime
	 *            the new started date time
	 */
	public void setStartedDateTime(Date startedDateTime) {
		this.startedDateTime = startedDateTime;
	}

	/**
	 * Gets the title.
	 * 
	 * @return the title
	 */
	public String getTitle() {
		return title;
	}

	/**
	 * Sets the title.
	 * 
	 * @param title
	 *            the new title
	 */
	public void setTitle(String title) {
		this.title = title;
	}

	/**
	 * Gets the page timings.
	 * 
	 * @return the page timings
	 */
	public HarPageTimings getPageTimings() {
		return pageTimings;
	}

	/**
	 * Sets the page timings.
	 * 
	 * @param pageTimings
	 *            the new page timings
	 */
	public void setPageTimings(HarPageTimings pageTimings) {
		this.pageTimings = pageTimings;
	}
}
