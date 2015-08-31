/*
 *
 */
package com.mifos.testing.framework.webdriver;

import java.util.concurrent.TimeUnit;

import org.browsermob.proxy.ProxyServer;
import org.openqa.selenium.By;
import org.openqa.selenium.NoSuchElementException;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.ui.ExpectedConditions;
import org.openqa.selenium.support.ui.FluentWait;
import org.openqa.selenium.support.ui.WebDriverWait;
import com.google.common.base.Function;
import com.mifos.testing.framework.pages.BookmarkableWebPage;

// TODO: Auto-generated Javadoc
/**
 * Abstract implementation of
 * {@link com.mifos.testing.fra1/28/2015mework.pages.WebPage WebPage}. This class
 * extends {@link AbstractWebPage} and provides Selenium Web-Driver environment
 * to sub-classes.
 *
 * @see <a
 *      href="http://seleniumhq.org/projects/webdriver/">http://seleniumhq.org/projects/webdriver/</a>
 */
public abstract class WebDriverAwareWebPage{

	/** Web-Driver factory instance. */
	private static WebDriverFactory driverFactory;

	/** The server. */
	private static ProxyServer server;

	/**
	 * Instantiates the web-driver as per the given driver factory class name.
	 *
	 * @see WebDriverFactory
	 */

	// TODO might break the data loader on override
	public WebDriverAwareWebPage() {

		WebDriverWait wait = new WebDriverWait(getWebDriver(), 10);
		wait.until(ExpectedConditions.presenceOfElementLocated(By
				.cssSelector("body")));
		
	}

	/**
	 * Initialise web driver.
	 *
	 * @param factoryClassName
	 *            the factory class name
	 */
	public static synchronized void initialiseWebDriver(String factoryClassName) {

		if (!(driverFactory == null || factoryClassName == null || driverFactory
				.getClass().getName().equals(factoryClassName))) {
			throw new IllegalArgumentException(
					"Web-Driver Factory instance has already been initialised: "
							+ driverFactory.getClass().getName());
		}

		try {
			if (driverFactory == null) {
				driverFactory = (WebDriverFactory) Class.forName(
						factoryClassName).newInstance();
			}
			WebDriver driver = driverFactory.getWebDriver();
			driver.manage().timeouts().implicitlyWait(30, TimeUnit.SECONDS);
			server = driverFactory.getProxyServer();
		} catch (Exception e) {
			throw new Error(
					"Error in initialising webdriver instance using factory: "
							+ factoryClassName, e);
		}

		return;
	}

	/**
	 * Cleans up the web-driver instance.
	 */
	public static synchronized void uninitialiseWebDriver() {
		uninitialiseWebDriver(false);
		return;
	}

	/**
	 * Cleans up the web-driver instance.
	 *
	 * @param saveBrowserProfile
	 *            <code>true</code> if current browser profile is to be
	 *            persisted for next browser session, <code>false</code>
	 *            otherwise
	 */
	public static synchronized void uninitialiseWebDriver(
			boolean saveBrowserProfile) {
		if (!isWebDriverInitialised()) {
			throw new IllegalStateException("Web-Driver is not yet initialised");
		}

		driverFactory.quitDriver(saveBrowserProfile);

		return;
	}

	/**
	 * Returns whether the web-driver instance is initialised and ready to be
	 * used.
	 *
	 * @return <code>true</code> if web-driver instance has been initialised,
	 *         <code>false</code> otherwise
	 *
	 * @see #initialiseWebDriver(String)
	 * @see #uninitialiseWebDriver()
	 */
	public static synchronized boolean isWebDriverInitialised() {
		return driverFactory != null  && driverFactory.getWebDriver() != null;
	}

	/**
	 * Returns web-driver instance.
	 *
	 * @return Web-Driver instance
	 *
	 * @throws IllegalStateException
	 *             If the web-driver is not yet initialised
	 *
	 * @see #isWebDriverInitialised()
	 */
	public static synchronized WebDriver getWebDriver()
			throws IllegalStateException {
		if (!isWebDriverInitialised()) {
			throw new IllegalStateException(
					"Driver instance not yet initialised");
		}
		return driverFactory.getWebDriver();
	}

	/**
	 * Gets the proxy server.
	 *
	 * @return the proxy server
	 */
	public static synchronized ProxyServer getProxyServer() {

		return server;
	}

	/*
	 * Helper methods which use WebDriver instance to achieve some
	 * functionality.
	 */

	/**
	 * Default implementation for {@link BookmarkableWebPage#open()}. Although
	 * this class does not implement {@link BookmarkableWebPage}, it provides
	 * this default implementation for the use of sub-classes which may choose
	 * to implement the interface.
	 *
	 * @return <code>true</code> if the page was successfully opened,
	 *         <code>false</code> otherwise
	 *
	 * @throws UnsupportedOperationException
	 *             If the Page class for the current instance is not
	 *             implementing interface {@link BookmarkableWebPage}
	 *
	 * @see #isOpened()
	 */
	// public boolean open() throws UnsupportedOperationException {
	public boolean open() throws UnsupportedOperationException {
		synchronized (this.getClass()) {
			if (!isWebDriverInitialised()) {
				throw new IllegalStateException(
						"Web-Driver is not yet initialised");
			}

			if (this instanceof BookmarkableWebPage) {
				getWebDriver().get(((BookmarkableWebPage) this).getUrl());
				return true;
			}

			throw new UnsupportedOperationException(
					"Page "
							+ this.getClass().getName()
							+ " is not a bookmarkable page and cannot be opened directly.");
		}
	}

	/**
	 * Maximise window.
	 */
	public void maximiseWindow() {
		driverFactory.getWebDriver().manage().window().maximize();
	}

	/**
	 * Wait for element.
	 *
	 * @param locator
	 *            the locator
	 * @param timeout
	 *            the timeout
	 * @return the web element
	 */
	protected static WebElement waitForElement(final By locator,
			final int timeout) {
		FluentWait<WebDriver> wait = new FluentWait<WebDriver>(getWebDriver())
				.withTimeout(timeout, TimeUnit.SECONDS)
				.pollingEvery(500, TimeUnit.MILLISECONDS)
				.ignoring(NoSuchElementException.class);

		WebElement element = wait.until(new Function<WebDriver, WebElement>() {
			public WebElement apply(WebDriver driver) {
				return getWebDriver().findElement(locator);
			}
		});

		return element;
	}



}