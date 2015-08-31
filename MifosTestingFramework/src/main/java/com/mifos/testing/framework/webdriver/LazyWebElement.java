/*
 *
 */
package com.mifos.testing.framework.webdriver;

import java.util.List;
import java.util.concurrent.TimeUnit;

import org.openqa.selenium.By;
import org.openqa.selenium.Dimension;
import org.openqa.selenium.NoSuchElementException;
import org.openqa.selenium.OutputType;
import org.openqa.selenium.Point;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebDriverException;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.ui.ExpectedConditions;
import org.openqa.selenium.support.ui.FluentWait;
import org.openqa.selenium.support.ui.WebDriverWait;

import com.google.common.base.Function;

// TODO: Auto-generated Javadoc
/**
 * The Class LazyWebElement.
 */
public class LazyWebElement implements WebElement {

	/** The locator. */
	By locator;

	/** The timeout. */
	int timeout = 100;

	/** The element. */
	WebElement element = null;

	/** The driver. */
	WebDriver driver;

	/**
	 * Checks if is opened.
	 *
	 * @return true, if is opened
	 */
	public boolean isOpened() {
		return true;
	}

	/**
	 * Instantiates a new lazy web element.
	 *
	 * @param driver
	 *            the driver
	 * @param locator
	 *            the locator
	 */
	public LazyWebElement(WebDriver driver, By locator) {
		this.locator = locator;
		this.driver = driver;
	}

	/**
	 * Instantiates a new lazy web element.
	 *
	 * @param driver
	 *            the driver
	 * @param locator
	 *            the locator
	 * @param timeout
	 *            the timeout
	 */
	public LazyWebElement(WebDriver driver, By locator, int timeout) {
		this.locator = locator;
		this.timeout = timeout;
		this.driver = driver;
	}

	/*
	 * (non-Javadoc)
	 *
	 * @see org.openqa.selenium.WebElement#click()
	 */
	@Override
	public void click() {
		findWebElement();
		element.click();
	}

	/**
	 * Wait and click.
	 */
	public void waitAndClick() {
		waitAndfindWebElement();
		element.click();

	}

	/*
	 * (non-Javadoc)
	 *
	 * @see org.openqa.selenium.WebElement#submit()
	 */
	@Override
	public void submit() {
		findWebElement();
		element.submit();

	}

	/*
	 * (non-Javadoc)
	 *
	 * @see org.openqa.selenium.WebElement#sendKeys(java.lang.CharSequence[])
	 */
	@Override
	public void sendKeys(CharSequence... keysToSend) {
		findWebElement();
		element.sendKeys(keysToSend);

	}

	/*
	 * (non-Javadoc)
	 *
	 * @see org.openqa.selenium.WebElement#clear()
	 */
	@Override
	public void clear() {
		findWebElement();
		element.clear();

	}

	/*
	 * (non-Javadoc)
	 *
	 * @see org.openqa.selenium.WebElement#getTagName()
	 */
	@Override
	public String getTagName() {
		findWebElement();
		return element.getTagName();
	}

	/*
	 * (non-Javadoc)
	 *
	 * @see org.openqa.selenium.WebElement#getAttribute(java.lang.String)
	 */
	@Override
	public String getAttribute(String name) {
		findWebElement();
		return element.getAttribute(name);
	}

	/*
	 * (non-Javadoc)
	 *
	 * @see org.openqa.selenium.WebElement#isSelected()
	 */
	@Override
	public boolean isSelected() {
		findWebElement();
		return element.isSelected();
	}

	/*
	 * (non-Javadoc)
	 *
	 * @see org.openqa.selenium.WebElement#isEnabled()
	 */
	@Override
	public boolean isEnabled() {
		findWebElement();
		return element.isEnabled();
	}

	/*
	 * (non-Javadoc)
	 *
	 * @see org.openqa.selenium.WebElement#getText()
	 */
	@Override
	public String getText() {
		findWebElement();
		return element.getText();
	}

	/*
	 * (non-Javadoc)
	 *
	 * @see org.openqa.selenium.WebElement#findElements(org.openqa.selenium.By)
	 */
	@Override
	public List<WebElement> findElements(By by) {
		findWebElement();
		return element.findElements(by);
	}

	/*
	 * (non-Javadoc)
	 *
	 * @see org.openqa.selenium.WebElement#findElement(org.openqa.selenium.By)
	 */
	@Override
	public WebElement findElement(By by) {
		findWebElement();
		return element.findElement(by);
	}

	/*
	 * (non-Javadoc)
	 *
	 * @see org.openqa.selenium.WebElement#isDisplayed()
	 */
	@Override
	public boolean isDisplayed() {
		findWebElement();
		return element.isDisplayed();
	}

	/*
	 * (non-Javadoc)
	 *
	 * @see org.openqa.selenium.WebElement#getLocation()
	 */
	@Override
	public Point getLocation() {
		findWebElement();
		return element.getLocation();
	}

	/*
	 * (non-Javadoc)
	 *
	 * @see org.openqa.selenium.WebElement#getSize()
	 */
	@Override
	public Dimension getSize() {
		findWebElement();
		return element.getSize();
	}

	/*
	 * (non-Javadoc)
	 *
	 * @see org.openqa.selenium.WebElement#getCssValue(java.lang.String)
	 */
	@Override
	public String getCssValue(String propertyName) {
		findWebElement();
		return element.getCssValue(propertyName);
	}

	/**
	 * Find web element.
	 */
	private void findWebElement() {
		if (element == null) {
			element = waitForElement((locator), timeout);
		}
	}

	/**
	 * Wait and find web element.
	 */
	private void waitAndfindWebElement() {
		if (element == null) {
			element = waitForElementToBeClickable((locator), timeout);
		}
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
	private WebElement waitForElement(final By locator, final int timeout) {
		FluentWait<WebDriver> wait = new FluentWait<WebDriver>(driver)
				.withTimeout(timeout, TimeUnit.SECONDS)
				.pollingEvery(500, TimeUnit.MILLISECONDS)
				.ignoring(NoSuchElementException.class);

		WebElement element = wait.until(new Function<WebDriver, WebElement>() {
			public WebElement apply(WebDriver driver) {
				return driver.findElement(locator);
			}
		});

		return element;
	}

	/**
	 * Wait for element to be clickable.
	 *
	 * @param locator
	 *            the locator
	 * @param timeout
	 *            the timeout
	 * @return the web element
	 */
	private WebElement waitForElementToBeClickable(final By locator, int timeout) {
		WebDriverWait wait = new WebDriverWait(driver, timeout);
		return wait.until(ExpectedConditions.elementToBeClickable(locator));
	}

	/**
	 * Gets the locator.
	 *
	 * @return the locator
	 */
	public By getLocator() {
		return locator;
	}

	@Override
	public <X> X getScreenshotAs(OutputType<X> arg0) throws WebDriverException {
		// TODO Auto-generated method stub
		return null;
	}


}
