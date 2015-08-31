/**
 *
 */
package com.mifos.domainobjects;

import java.util.UUID;

public class PageUtils {

	/**
	 *
	 */
	public PageUtils() {
		// TODO Auto-generated constructor stub
	}

	/**
	 * Gets the short uuid.
	 * 
	 * @return the short uuid
	 */
	public String getShortUUID() {
		Long uuid = UUID.randomUUID().getLeastSignificantBits();
		return ((uuid.toString()).substring(8).replace("-", ""));
	}
}
