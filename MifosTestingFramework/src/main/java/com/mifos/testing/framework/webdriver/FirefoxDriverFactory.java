/*
 * 
 */
package com.mifos.testing.framework.webdriver;

import org.browsermob.proxy.ProxyServer;
import org.openqa.selenium.Proxy;
import org.openqa.selenium.firefox.FirefoxDriver;
import org.openqa.selenium.firefox.FirefoxProfile;
import org.openqa.selenium.firefox.internal.ProfilesIni;
import org.openqa.selenium.io.FileHandler;
import org.openqa.selenium.io.TemporaryFilesystem;
import org.openqa.selenium.remote.CapabilityType;
import org.openqa.selenium.remote.DesiredCapabilities;

import java.io.File;
import java.io.FilenameFilter;
import java.util.HashMap;
import java.util.Map;

// TODO: Auto-generated Javadoc
/**
 * A factory for creating FirefoxDriver objects.
 */
public class FirefoxDriverFactory implements WebDriverFactory {

	/** The Constant profiles. */
	private static final ProfilesIni profiles = new ProfilesIni();

	/** The profile dir. */
	private File profileDir;

	/** The saved profile dir. */
	private File savedProfileDir;

	/** The driver. */
	private FirefoxDriver driver;

	/** The server. */
	private ProxyServer server;

	/*
	 * (non-Javadoc)
	 * 
	 * @see
	 * com.mifos.testing.framework.webdriver.WebDriverFactory#getWebDriver()
	 */
	@Override
	public FirefoxDriver getWebDriver() {
		if (this.driver == null) {
			this.driver = this.createWebDriver();
		}
		return this.driver;
	}

	/**
	 * Creates a new FirefoxDriver object.
	 * 
	 * @return the firefox driver
	 */
	private FirefoxDriver createWebDriver() {

		if (!(System.getProperty("webdriver.firefox.driver.useprofile")
				.equals("false"))) {
			try {

				FirefoxProfile profile = null;

				if (this.savedProfileDir == null) {
					profile = profiles.getProfile(System.getProperty(
							"webdriver.firefox.profile", "default"));

					final String homeDirectory = System
							.getProperty("user.home");
					final File dir = new File(homeDirectory
							+ "/.mozilla/firefox");
					FilenameFilter filter = new FilenameFilter() {
						public boolean accept(File dir, String name) {
							return name.endsWith("default");
						}
					};
					String[] children = dir.list(filter);
					if (children.length > 0) {
						profile = profiles.getProfile(children[0]);
					}

					if (profile == null) {
						profile = new FirefoxProfile();
					}
				} else {
					profile = new FirefoxProfile(this.savedProfileDir);
				}

				this.profileDir = profile.layoutOnDisk();
				this.driver = new FirefoxDriver(profile);
			} catch (Exception e) {
				throw new Error(
						"Error in creating Firefox web-driver using a profile",
						e);
			}
		} else {
			try {

				Map<String, String> options = new HashMap<String, String>();
				Proxy proxy = new Proxy();

				// see if need a proxy configured when not using a profile
				if ((System.getProperty("webdriver.firefox.driver.proxy.url") != null)
						&& (System
								.getProperty("webdriver.firefox.driver.proxy.port") != null)) {
					options.put(
							"httpProxy",
							new String(
									System.getProperty("webdriver.firefox.driver.proxy.url")
											+ ":"
											+ System.getProperty("webdriver.firefox.driver.proxy.port")));
				} else {
					options.put("httpProxy", new String("anl-iron-proxy:80"));
				}

				// if we need to use an embeded proxy turn it on
				if ((!(System.getProperty("embedded.proxy.enabled") == null))
						&& System.getProperty("embedded.proxy.enabled").equals(
								"true")) {
					server = new ProxyServer(4444);
					server.start();
					server.setOptions(options);
					proxy = server.seleniumProxy();
					// server.whitelistRequests("http://*dev*,http://*mifos*".split(","),
					// 200);
					// server.whitelistRequests("http://*,https://*".split(","),
					// 200);
					// server.whitelistRequests("http://www.intwowcher.co.uk,https://secure.intwowcher.co.uk".split(","),
					// 200);

					server.blacklistRequests(
							"https://track\\.searchignite\\.com/.*", 200);
					server.blacklistRequests(
							"http://track\\.searchignite\\.com/.*", 200);
					server.blacklistRequests(
							"https://sandbox\\.coment\\badgeville.\\.com/.*",
							200);
					server.blacklistRequests(
							"http://sandbox\\.coment\\badgeville.\\.com/.*",
							200);
					// sandbox.comet.badgeville.com
				} else {
					proxy.setHttpProxy(options.get("httpProxy"));
				}

				// server.whitelistRequests("http://*dev*,http://*wowcher*".split(","),
				// 200);
				// server.whitelistRequests("http://*,https://*".split(","),
				// 200);
				// server.blacklistRequests("127.0.0.1", 200);
				// server.blacklistRequests("https://track\\.searchignite\\.com/.*",
				// 200);
				// server.blacklistRequests("http://track\\.searchignite\\.com/.*",
				// 200);

				DesiredCapabilities capabilities = new DesiredCapabilities();
				proxy.setFtpProxy(proxy.getHttpProxy());
				proxy.setSslProxy(proxy.getHttpProxy());
				proxy.setHttpsProxy(proxy.getHttpProxy());
			//	proxy.setNoProxy("localhost, 127.0.0.1, www.devwowcher.co.uk, api.devwowcher.co.uk, secure.devwowcher.co.uk, www.intwowcher.co.uk");
				capabilities.setCapability(CapabilityType.PROXY, proxy);
				// capabilities.setCapability(CapabilityType.ACCEPT_SSL_CERTS,true);
				this.driver = new FirefoxDriver(capabilities);

			} catch (Exception e) {
				throw new Error(
						"Error in creating Firefox web-driver without using a profile",
						e);
			}
		}

		return this.driver;
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see
	 * com.mifos.testing.framework.webdriver.WebDriverFactory#quitDriver(boolean
	 * )
	 */
	@Override
	public void quitDriver(boolean saveProfile) {

		if (!(System.getProperty("webdriver.firefox.driver.useprofile")
				.equals("false"))) {
			if (this.driver != null) {
				try {
					if (saveProfile) {
						final File profileDirCopy = TemporaryFilesystem
								.getDefaultTmpFS().createTempDir("userprofile",
										"copy");
						FileHandler.copy(this.profileDir, profileDirCopy);
						this.savedProfileDir = profileDirCopy;
					} else if (this.savedProfileDir != null) {
						this.savedProfileDir.delete();
						this.savedProfileDir = null;
					}

					this.driver.quit();
					this.driver = null;

					if ((!(System.getProperty("embedded.proxy.enabled") == null))
							&& System.getProperty("embedded.proxy.enabled")
									.equals("true")) {
						this.server.stop();
						this.server = null;
					}
				} catch (Exception e) {
					throw new Error(
							"Error in closing Firefox web-driver using profile",
							e);
				}
			}
		} else {
			try {
				this.driver.quit();
				this.driver = null;

				if ((!(System.getProperty("embedded.proxy.enabled") == null))
						&& System.getProperty("embedded.proxy.enabled").equals(
								"true")) {
					this.server.stop();
					this.server = null;
				}

			} catch (Exception e) {
				throw new Error(
						"Error in closing Firefox web-driver without using profile",
						e);
			}
		}

		return;
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see
	 * com.mifos.testing.framework.webdriver.WebDriverFactory#getProxyServer()
	 */
	@Override
	public ProxyServer getProxyServer() {
		return this.server;
	}

}