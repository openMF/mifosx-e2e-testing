/*
 * 
 */
package com.mifos.testing.framework.webdriver;

import org.browsermob.proxy.ProxyServer;
import org.openqa.selenium.WebDriver;

// TODO: Auto-generated Javadoc
/**
 * A factory for creating WebDriver objects.
 */
public interface WebDriverFactory {

	/**
	 * Gets the web driver.
	 * 
	 * @return the web driver
	 */
	WebDriver getWebDriver();

	/**
	 * Quit driver.
	 * 
	 * @param saveProfile
	 *            the save profile
	 */
	void quitDriver(boolean saveProfile);

	// ProxyServer getProxyServer();

	/**
	 * Gets the proxy server.
	 * 
	 * @return the proxy server
	 */
	ProxyServer getProxyServer();

}