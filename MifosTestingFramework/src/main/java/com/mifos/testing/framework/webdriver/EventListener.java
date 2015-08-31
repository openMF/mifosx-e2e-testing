/*
 * 
 */
package com.mifos.testing.framework.webdriver;

import org.apache.commons.io.FileUtils;
import org.openqa.selenium.*;
import org.openqa.selenium.support.events.WebDriverEventListener;

import java.io.File;
import java.io.IOException;

// TODO: Auto-generated Javadoc
/**
 * The listener interface for receiving event events. The class that is
 * interested in processing a event event implements this interface, and the
 * object created with that class is registered with a component using the
 * component's <code>addEventListener<code> method. When
 * the event event occurs, that object's appropriate
 * method is invoked.
 * 
 * @see EventEvent
 */
public class EventListener implements WebDriverEventListener {

	
	@Override
	public void afterChangeValueOf(WebElement arg0, WebDriver arg1) {
		// TODO Auto-generated method stub

	}

		@Override
	public void afterClickOn(WebElement arg0, WebDriver arg1) {
		// TODO Auto-generated method stub

	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see
	 * org.openqa.selenium.support.events.WebDriverEventListener#afterFindBy
	 * (org.openqa.selenium.By, org.openqa.selenium.WebElement,
	 * org.openqa.selenium.WebDriver)
	 */
	@Override
	public void afterFindBy(By arg0, WebElement arg1, WebDriver arg2) {
		arg1.sendKeys(Keys.ARROW_DOWN);
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see
	 * org.openqa.selenium.support.events.WebDriverEventListener#afterNavigateBack
	 * (org.openqa.selenium.WebDriver)
	 */
	@Override
	public void afterNavigateBack(WebDriver arg0) {
		// TODO Auto-generated method stub

	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see org.openqa.selenium.support.events.WebDriverEventListener#
	 * afterNavigateForward(org.openqa.selenium.WebDriver)
	 */
	@Override
	public void afterNavigateForward(WebDriver arg0) {
		// TODO Auto-generated method stub

	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see
	 * org.openqa.selenium.support.events.WebDriverEventListener#afterNavigateTo
	 * (java.lang.String, org.openqa.selenium.WebDriver)
	 */
	@Override
	public void afterNavigateTo(String arg0, WebDriver arg1) {
		// TODO Auto-generated method stub

	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see
	 * org.openqa.selenium.support.events.WebDriverEventListener#afterScript
	 * (java.lang.String, org.openqa.selenium.WebDriver)
	 */
	@Override
	public void afterScript(String arg0, WebDriver arg1) {
		// TODO Auto-generated method stub

	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see
	 * org.openqa.selenium.support.events.WebDriverEventListener#beforeChangeValueOf
	 * (org.openqa.selenium.WebElement, org.openqa.selenium.WebDriver)
	 */
	@Override
	public void beforeChangeValueOf(WebElement arg0, WebDriver arg1) {
		// TODO Auto-generated method stub

	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see
	 * org.openqa.selenium.support.events.WebDriverEventListener#beforeClickOn
	 * (org.openqa.selenium.WebElement, org.openqa.selenium.WebDriver)
	 */
	@Override
	public void beforeClickOn(WebElement arg0, WebDriver arg1) {
		// TODO Auto-generated method stub

	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see
	 * org.openqa.selenium.support.events.WebDriverEventListener#beforeFindBy
	 * (org.openqa.selenium.By, org.openqa.selenium.WebElement,
	 * org.openqa.selenium.WebDriver)
	 */
	@Override
	public void beforeFindBy(By arg0, WebElement arg1, WebDriver arg2) {
		// TODO Auto-generated method stub

	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see
	 * org.openqa.selenium.support.events.WebDriverEventListener#beforeNavigateBack
	 * (org.openqa.selenium.WebDriver)
	 */
	@Override
	public void beforeNavigateBack(WebDriver arg0) {
		// TODO Auto-generated method stub

	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see org.openqa.selenium.support.events.WebDriverEventListener#
	 * beforeNavigateForward(org.openqa.selenium.WebDriver)
	 */
	@Override
	public void beforeNavigateForward(WebDriver arg0) {
		// TODO Auto-generated method stub

	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see
	 * org.openqa.selenium.support.events.WebDriverEventListener#beforeNavigateTo
	 * (java.lang.String, org.openqa.selenium.WebDriver)
	 */
	@Override
	public void beforeNavigateTo(String arg0, WebDriver arg1) {
		// TODO Auto-generated method stub

	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see
	 * org.openqa.selenium.support.events.WebDriverEventListener#beforeScript
	 * (java.lang.String, org.openqa.selenium.WebDriver)
	 */
	@Override
	public void beforeScript(String arg0, WebDriver arg1) {
		// TODO Auto-generated method stub

	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see
	 * org.openqa.selenium.support.events.WebDriverEventListener#onException
	 * (java.lang.Throwable, org.openqa.selenium.WebDriver)
	 */
	@Override
	public void onException(Throwable e, WebDriver driver) {

		File source = ((TakesScreenshot) driver)
				.getScreenshotAs(OutputType.FILE);

		String path = "./target/screenshots/";

		// if (!(System.getProperty("screenshot.folder").equals(null)) ){
		// path = System.getProperty("screenshot.folder");
		// }

		path = path + source.getName();

		try {
			FileUtils.copyFile(source, new File(path));
		} catch (IOException e2) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		System.setProperty("screenshottaken", "true");

	}

}
