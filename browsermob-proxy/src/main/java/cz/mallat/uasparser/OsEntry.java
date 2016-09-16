/*
 * 
 */
package cz.mallat.uasparser;

import java.util.Iterator;
import java.util.List;

// TODO: Auto-generated Javadoc
/**
 * JavaBean that holds the data from the [os] section in the data file.
 * 
 * @author oli
 */
class OsEntry {

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

	/**
	 * Instantiates a new os entry.
	 * 
	 * @param data
	 *            the data
	 */
	public OsEntry(List<String> data) {
		Iterator<String> it = data.iterator();
		this.family = it.next();
		this.name = it.next();
		this.url = it.next();
		this.company = it.next();
		this.companyUrl = it.next();
		this.ico = it.next();
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
	 * Copy to.
	 * 
	 * @param uai
	 *            the uai
	 */
	public void copyTo(UserAgentInfo uai) {
		if (Utils.validString(getFamily()))
			uai.setOsFamily(getFamily());
		if (Utils.validString(getName()))
			uai.setOsName(getName());
		if (Utils.validString(getUrl()))
			uai.setOsUrl(getUrl());
		if (Utils.validString(getCompany()))
			uai.setOsCompany(getCompany());
		if (Utils.validString(getFamily()))
			uai.setOsCompanyUrl(getFamily());
		if (Utils.validString(getIco()))
			uai.setOsIcon(getIco());
	}

}