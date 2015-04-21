/*
 * 
 */
package cz.mallat.uasparser;

import java.util.Iterator;
import java.util.List;

// TODO: Auto-generated Javadoc
/**
 * JavaBean that holds the data from the [robots] section in the data file.
 * 
 * @author oli
 */
class RobotEntry {

	/** The user agent string. */
	private String userAgentString;

	/** The family. */
	private String family;

	/** The name. */
	private String name;

	/** The url. */
	private String url;

	/** The company. */
	private String company;

	/** The company url. */
	private String companyUrl;

	/** The ico. */
	private String ico;

	/** The os id. */
	private String osId;

	/** The info url. */
	private String infoUrl;

	/**
	 * Instantiates a new robot entry.
	 * 
	 * @param data
	 *            the data
	 */
	public RobotEntry(List<String> data) {
		Iterator<String> it = data.iterator();
		this.userAgentString = it.next();
		this.family = it.next();
		this.name = it.next();
		this.url = it.next();
		this.company = it.next();
		this.companyUrl = it.next();
		this.ico = it.next();
		this.osId = it.next();
		this.infoUrl = it.next();
	}

	/**
	 * Gets the user agent string.
	 * 
	 * @return the user agent string
	 */
	public String getUserAgentString() {
		return userAgentString;
	}

	/**
	 * Sets the user agent string.
	 * 
	 * @param userAgentString
	 *            the new user agent string
	 */
	public void setUserAgentString(String userAgentString) {
		this.userAgentString = userAgentString;
	}

	/**
	 * Gets the family.
	 * 
	 * @return the family
	 */
	public String getFamily() {
		return family;
	}

	/**
	 * Sets the family.
	 * 
	 * @param family
	 *            the new family
	 */
	public void setFamily(String family) {
		this.family = family;
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
	 * Gets the url.
	 * 
	 * @return the url
	 */
	public String getUrl() {
		return url;
	}

	/**
	 * Sets the url.
	 * 
	 * @param url
	 *            the new url
	 */
	public void setUrl(String url) {
		this.url = url;
	}

	/**
	 * Gets the company.
	 * 
	 * @return the company
	 */
	public String getCompany() {
		return company;
	}

	/**
	 * Sets the company.
	 * 
	 * @param company
	 *            the new company
	 */
	public void setCompany(String company) {
		this.company = company;
	}

	/**
	 * Gets the company url.
	 * 
	 * @return the company url
	 */
	public String getCompanyUrl() {
		return companyUrl;
	}

	/**
	 * Sets the company url.
	 * 
	 * @param companyUrl
	 *            the new company url
	 */
	public void setCompanyUrl(String companyUrl) {
		this.companyUrl = companyUrl;
	}

	/**
	 * Gets the ico.
	 * 
	 * @return the ico
	 */
	public String getIco() {
		return ico;
	}

	/**
	 * Sets the ico.
	 * 
	 * @param ico
	 *            the new ico
	 */
	public void setIco(String ico) {
		this.ico = ico;
	}

	/**
	 * Gets the os id.
	 * 
	 * @return the os id
	 */
	public String getOsId() {
		return osId;
	}

	/**
	 * Sets the os id.
	 * 
	 * @param osId
	 *            the new os id
	 */
	public void setOsId(String osId) {
		this.osId = osId;
	}

	/**
	 * Gets the info url.
	 * 
	 * @return the info url
	 */
	public String getInfoUrl() {
		return infoUrl;
	}

	/**
	 * Sets the info url.
	 * 
	 * @param infoUrl
	 *            the new info url
	 */
	public void setInfoUrl(String infoUrl) {
		this.infoUrl = infoUrl;
	}

	/**
	 * Copy to.
	 * 
	 * @param uai
	 *            the uai
	 */
	public void copyTo(UserAgentInfo uai) {
		if (Utils.validString(getFamily()))
			uai.setUaFamily(getFamily());
		if (Utils.validString(getName()))
			uai.setUaName(getName());
		if (Utils.validString(getUrl()))
			uai.setUaUrl(getUrl());
		if (Utils.validString(getCompany()))
			uai.setUaCompany(getCompany());
		if (Utils.validString(getCompanyUrl()))
			uai.setUaCompanyUrl(getCompanyUrl());
		if (Utils.validString(getIco()))
			uai.setUaIcon(getIco());
		if (Utils.validString(getInfoUrl()))
			uai.setUaInfoUrl(UASparser.INFO_URL + getInfoUrl());
	}

}