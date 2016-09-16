/*
 * 
 */
package cz.mallat.uasparser;

import java.util.Iterator;
import java.util.List;

// TODO: Auto-generated Javadoc
/**
 * JavaBean that holds the data from the [browser] section in the data file.
 * 
 * @author oli
 */
class BrowserEntry {

	/** The type. */
	private Long type;

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

	/** The info url. */
	private String infoUrl;

	/**
	 * Instantiates a new browser entry.
	 * 
	 * @param data
	 *            the data
	 */
	public BrowserEntry(List<String> data) {
		Iterator<String> it = data.iterator();
		this.type = Long.parseLong(it.next());
		this.family = it.next();
		this.url = it.next();
		this.company = it.next();
		this.companyUrl = it.next();
		this.ico = it.next();
		this.infoUrl = it.next();
		// this.name stays empty, will be filled with family + version
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
	 * Gets the type.
	 * 
	 * @return the type
	 */
	public Long getType() {
		return type;
	}

	/**
	 * Sets the type.
	 * 
	 * @param type
	 *            the new type
	 */
	public void setType(Long type) {
		this.type = type;
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
	 * @param browserVersionInfo
	 *            the browser version info
	 */
	public void copyTo(UserAgentInfo uai, String browserVersionInfo) {
		if (Utils.validString(getFamily())) {
			uai.setUaFamily(getFamily());
			uai.setUaName(uai.getUaFamily()
					+ (browserVersionInfo != null
							&& !browserVersionInfo.isEmpty() ? " "
							+ browserVersionInfo : ""));
		}
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