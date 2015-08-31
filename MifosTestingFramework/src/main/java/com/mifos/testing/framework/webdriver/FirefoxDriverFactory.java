/*
 * 
 */
package com.mifos.testing.framework.webdriver;

import java.util.HashMap;
import java.util.Map;

import org.browsermob.proxy.ProxyServer;
import org.openqa.selenium.Proxy;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.firefox.FirefoxDriver;
import org.openqa.selenium.remote.CapabilityType;
import org.openqa.selenium.remote.DesiredCapabilities;

// TODO: Auto-generated Javadoc
/**
 * A factory for creating FirefoxDriver objects.
 */
public class FirefoxDriverFactory implements WebDriverFactory {

	private static HashMap<Long, WebDriver> driverMap = new HashMap<Long, WebDriver>();

	/** The server. */
	private ProxyServer server;

	/*
	 * (non-Javadoc)
	 * 
	 * @see
	 * com.mifos.testing.framework.webdriver.WebDriverFactory#getWebDriver()
	 */
	@Override
	public WebDriver getWebDriver() {
		Long threadId = Thread.currentThread().getId();
		if (!driverMap.containsKey(threadId)) {
			driverMap.put(threadId, createWebDriver());
		}
		return driverMap.get(threadId);
	}

	/**
	 * Creates a new FirefoxDriver object.
	 * 
	 * @return the firefox driver
	 */
	private WebDriver createWebDriver() {

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
								"true") && server != null) {
					server = new ProxyServer(4444);
					server.start();
					server.setOptions(options);
					proxy = server.seleniumProxy();
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

				System.setProperty("resources.file.path",
						"src\\test\\resources\\mifos.properties");
				System.setProperty("testing.framework.testdata.metadata",
						"mifos-test-metadata.properties");
				
				DesiredCapabilities capabilities = new DesiredCapabilities();
				proxy.setFtpProxy(proxy.getHttpProxy());
				proxy.setSslProxy(proxy.getHttpProxy());
				proxy.setNoProxy("localhost, 127.0.0.1, www.devwowcher.co.uk, api.devwowcher.co.uk, secure.devwowcher.co.uk, www.intwowcher.co.uk");
				capabilities.setCapability(CapabilityType.PROXY, proxy);
				capabilities.setCapability(CapabilityType.ACCEPT_SSL_CERTS,true);
				WebDriver driver = new FirefoxDriver(capabilities);
				return driver;

			} catch (Exception e) {
				throw new Error(
						"Error in creating Firefox web-driver without using a profile",
						e);
			}
//		}

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

			try {
				Long threadId = Thread.currentThread().getId();
				driverMap.get(threadId).quit();
				driverMap.remove(threadId);

				if ((!(System.getProperty("embedded.proxy.enabled") == null))
						&& System.getProperty("embedded.proxy.enabled").equals(
								"true") && driverMap.isEmpty()) {
					this.server.stop();
					this.server = null;
				}

			} catch (Exception e) {
				throw new Error(
						"Error in closing Firefox web-driver without using profile",
						e);
			}
//		}

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