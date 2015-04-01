/**
 *
 */
package com.mifos.steps;

import java.io.File;
import java.io.FileFilter;
import java.io.IOException;
import java.util.Arrays;

import org.apache.commons.io.FileUtils;
import org.apache.commons.io.comparator.LastModifiedFileComparator;
import org.apache.commons.io.filefilter.FileFileFilter;
import org.openqa.selenium.OutputType;
import org.openqa.selenium.TakesScreenshot;
import org.openqa.selenium.TimeoutException;

import com.mifos.testing.framework.webdriver.WebDriverAwareWebPage;

import cucumber.api.Scenario;
import cucumber.api.java.After;
import cucumber.api.java.Before;

/**
 *
 *
 */
public class BaseSteps {

	/** The Constant SYS_PROP_WEB_DRIVER_FACTORY_CLASS_NAME. */
	private static final String SYS_PROP_WEB_DRIVER_FACTORY_CLASS_NAME = "webdriver.factory.class.name";

	/** The Constant driverClassName. */

	private static final String driverClassName = "com.mifos.testing.framework.webdriver.FirefoxDriverFactory"; //System.getProperty(SYS_PROP_WEB_DRIVER_FACTORY_CLASS_NAME);//// 

	//FirefoxDriverFactory
	//ChromeDriverFactory
	// //////////////////////////////////Before and
	// After/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
	// Gets run only once before the test class
	/**
	 * Start tests.
	 *
	 * @param s
	 *            the s
	 */
	@Before
	public void startTests(Scenario s) {
		
		try {
		if (!(WebDriverAwareWebPage.isWebDriverInitialised())) {

			if (driverClassName == null) {
				throw new Error(
						"System property "
								+ SYS_PROP_WEB_DRIVER_FACTORY_CLASS_NAME
								+ " must be set to reflect web-driver factory class name to be used");
			}
			WebDriverAwareWebPage.initialiseWebDriver(driverClassName);
		}
		
			if (!((WebDriverAwareWebPage.getWebDriver().getClass().toString()
					.contains("android")))) {
				
				WebDriverAwareWebPage.getWebDriver().manage().window().maximize();
				
			}
		}catch (TimeoutException e) {
			System.out.println("Dead Dead Dead");
			e.printStackTrace();
			
		}
		
		
		WebDriverAwareWebPage.getWebDriver().manage().deleteAllCookies();
		// We need to check uf the feature has changed. This is needed to check
		// if test data needs to be setup
	}

	/**
	 * Do screenshot after tests.
	 *
	 * @param scenario
	 *            the scenario
	 */
	@After
	public void doScreenshotAfterTests(Scenario scenario) {

		// We should check if the screenshot was taken as a result of a
		// webdriver exception.
		if (scenario.isFailed()) {

			String path = "./target/screenshots/";
			File screenshot = null;
			byte[] screenshotbytes = null;

			if (!((System.getProperty("screenshottaken")) == null)) {
				File directory = new File(path);
				File[] files = directory
						.listFiles((FileFilter) FileFileFilter.FILE);
				Arrays.sort(files,
						LastModifiedFileComparator.LASTMODIFIED_REVERSE);
				screenshot = files[0];

				try {
					screenshotbytes = FileUtils.readFileToByteArray(screenshot);
				} catch (IOException e) {
					e.printStackTrace();
				}

			} else {
				screenshot = ((TakesScreenshot) WebDriverAwareWebPage
						.getWebDriver()).getScreenshotAs(OutputType.FILE);
				screenshotbytes = ((TakesScreenshot) WebDriverAwareWebPage
						.getWebDriver()).getScreenshotAs(OutputType.BYTES);
				path = path + screenshot.getName();

				try {
					FileUtils.copyFile(screenshot, new File(path));
				} catch (IOException e) {
					e.printStackTrace();
				}
			}
			scenario.embed(screenshotbytes, "image/png");

			}
		try {
			if (WebDriverAwareWebPage.isWebDriverInitialised()) {
				WebDriverAwareWebPage.uninitialiseWebDriver();
			}
		} catch (Exception e) {

		}
	}
}
