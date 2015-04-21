/*
 * 
 */
package cz.mallat.uasparser;

// TODO: Auto-generated Javadoc
/**
 * JavaBean that returns the data to the calling user from UAParser.parse()
 * 
 * @author oli
 * 
 */
public class UserAgentInfo {

	/** The typ. */
	private String typ;

	/** The ua family. */
	private String uaFamily;

	/** The ua name. */
	private String uaName;

	/** The ua url. */
	private String uaUrl;

	/** The ua company. */
	private String uaCompany;

	/** The ua company url. */
	private String uaCompanyUrl;

	/** The ua icon. */
	private String uaIcon;

	/** The ua info url. */
	private String uaInfoUrl;

	/** The os family. */
	private String osFamily;

	/** The os name. */
	private String osName;

	/** The os url. */
	private String osUrl;

	/** The os company. */
	private String osCompany;

	/** The os company url. */
	private String osCompanyUrl;

	/** The os icon. */
	private String osIcon;

	/**
	 * Instantiates a new user agent info.
	 */
	public UserAgentInfo() {
		this.typ = "unknown";
		this.uaFamily = "unknown";
		this.uaName = "unknown";
		this.uaUrl = "unknown";
		this.uaCompany = "unknown";
		this.uaCompanyUrl = "unknown";
		this.uaIcon = "unknown";
		this.uaInfoUrl = "unknown";
		this.osFamily = "unknown";
		this.osName = "unknown";
		this.osUrl = "unknown";
		this.osCompany = "unknown";
		this.osCompanyUrl = "unknown";
		this.osIcon = "unknown";
	}

	/**
	 * Gets the typ.
	 * 
	 * @return the typ
	 */
	public String getTyp() {
		return typ;
	}

	/**
	 * Sets the typ.
	 * 
	 * @param typ
	 *            the new typ
	 */
	public void setTyp(String typ) {
		this.typ = typ;
	}

	/**
	 * Gets the ua family.
	 * 
	 * @return the ua family
	 */
	public String getUaFamily() {
		return uaFamily;
	}

	/**
	 * Sets the ua family.
	 * 
	 * @param uaFamily
	 *            the new ua family
	 */
	public void setUaFamily(String uaFamily) {
		this.uaFamily = uaFamily;
	}

	/**
	 * Gets the ua name.
	 * 
	 * @return the ua name
	 */
	public String getUaName() {
		return uaName;
	}

	/**
	 * Sets the ua name.
	 * 
	 * @param uaName
	 *            the new ua name
	 */
	public void setUaName(String uaName) {
		this.uaName = uaName;
	}

	/**
	 * Gets the ua url.
	 * 
	 * @return the ua url
	 */
	public String getUaUrl() {
		return uaUrl;
	}

	/**
	 * Sets the ua url.
	 * 
	 * @param uaUrl
	 *            the new ua url
	 */
	public void setUaUrl(String uaUrl) {
		this.uaUrl = uaUrl;
	}

	/**
	 * Gets the ua company.
	 * 
	 * @return the ua company
	 */
	public String getUaCompany() {
		return uaCompany;
	}

	/**
	 * Sets the ua company.
	 * 
	 * @param uaCompany
	 *            the new ua company
	 */
	public void setUaCompany(String uaCompany) {
		this.uaCompany = uaCompany;
	}

	/**
	 * Gets the ua company url.
	 * 
	 * @return the ua company url
	 */
	public String getUaCompanyUrl() {
		return uaCompanyUrl;
	}

	/**
	 * Sets the ua company url.
	 * 
	 * @param uaCompanyUrl
	 *            the new ua company url
	 */
	public void setUaCompanyUrl(String uaCompanyUrl) {
		this.uaCompanyUrl = uaCompanyUrl;
	}

	/**
	 * Gets the ua icon.
	 * 
	 * @return the ua icon
	 */
	public String getUaIcon() {
		return uaIcon;
	}

	/**
	 * Sets the ua icon.
	 * 
	 * @param uaIcon
	 *            the new ua icon
	 */
	public void setUaIcon(String uaIcon) {
		this.uaIcon = uaIcon;
	}

	/**
	 * Gets the os family.
	 * 
	 * @return the os family
	 */
	public String getOsFamily() {
		return osFamily;
	}

	/**
	 * Sets the os family.
	 * 
	 * @param osFamily
	 *            the new os family
	 */
	public void setOsFamily(String osFamily) {
		this.osFamily = osFamily;
	}

	/**
	 * Gets the os name.
	 * 
	 * @return the os name
	 */
	public String getOsName() {
		return osName;
	}

	/**
	 * Sets the os name.
	 * 
	 * @param osName
	 *            the new os name
	 */
	public void setOsName(String osName) {
		this.osName = osName;
	}

	/**
	 * Gets the os url.
	 * 
	 * @return the os url
	 */
	public String getOsUrl() {
		return osUrl;
	}

	/**
	 * Sets the os url.
	 * 
	 * @param osUrl
	 *            the new os url
	 */
	public void setOsUrl(String osUrl) {
		this.osUrl = osUrl;
	}

	/**
	 * Gets the os company.
	 * 
	 * @return the os company
	 */
	public String getOsCompany() {
		return osCompany;
	}

	/**
	 * Sets the os company.
	 * 
	 * @param osCompany
	 *            the new os company
	 */
	public void setOsCompany(String osCompany) {
		this.osCompany = osCompany;
	}

	/**
	 * Gets the os company url.
	 * 
	 * @return the os company url
	 */
	public String getOsCompanyUrl() {
		return osCompanyUrl;
	}

	/**
	 * Sets the os company url.
	 * 
	 * @param osCompanyUrl
	 *            the new os company url
	 */
	public void setOsCompanyUrl(String osCompanyUrl) {
		this.osCompanyUrl = osCompanyUrl;
	}

	/**
	 * Gets the os icon.
	 * 
	 * @return the os icon
	 */
	public String getOsIcon() {
		return osIcon;
	}

	/**
	 * Sets the os icon.
	 * 
	 * @param osIcon
	 *            the new os icon
	 */
	public void setOsIcon(String osIcon) {
		this.osIcon = osIcon;
	}

	/**
	 * Gets the ua info url.
	 * 
	 * @return the ua info url
	 */
	public String getUaInfoUrl() {
		return uaInfoUrl;
	}

	/**
	 * Sets the ua info url.
	 * 
	 * @param uaInfoUrl
	 *            the new ua info url
	 */
	public void setUaInfoUrl(String uaInfoUrl) {
		this.uaInfoUrl = uaInfoUrl;
	}

}