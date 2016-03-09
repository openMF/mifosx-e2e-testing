/**
 *
 */
package com.mifos.pages;

import java.awt.AWTException;
import java.awt.Robot;
import java.awt.event.KeyEvent;
import java.io.File;
import java.io.IOException;
//import java.lang.reflect.InvocationTargetException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.UUID;
import java.util.concurrent.TimeUnit;

import org.apache.commons.lang.math.NumberUtils;
import org.junit.Assert;
import org.openqa.selenium.By;
import org.openqa.selenium.JavascriptExecutor;
import org.openqa.selenium.Keys;
import org.openqa.selenium.NoSuchElementException;
import org.openqa.selenium.TimeoutException;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.interactions.Action;
import org.openqa.selenium.interactions.Actions;
import org.openqa.selenium.support.ui.ExpectedConditions;
import org.openqa.selenium.support.ui.FluentWait;
import org.openqa.selenium.support.ui.Select;
import org.openqa.selenium.support.ui.WebDriverWait;

import com.google.common.base.Function;
import com.mifos.testing.framework.data.Resources;
import com.mifos.testing.framework.webdriver.LazyWebElement;
import com.mifos.testing.framework.webdriver.WebDriverAwareWebPage;

// TODO: Auto-generated Javadoc
/**
 * The Class WowcherWebPage.
 *
 */
public class MifosWebPage extends WebDriverAwareWebPage {

	/** The Constant BASE_URL. */
	public final static String BASE_URL = Resources.getInstance().get(
			"site.base-url");

	/** The Constant BASE_URL. */
	public static final String WPS_BASE_URL = Resources.getInstance().get(
			"wps.site.base-url");
	/** The Constant BASE_URL. */
	public static final String HOME_URL = BASE_URL
			+ Resources.getInstance().get("homepage.url");
	public String rowval;

	/**
	 * Gets the resource.
	 *
	 * @param key
	 *            the key
	 * @return the resource for wait
	 */
	public static Long getResourceKey(String key) {
		getWebDriver().manage().timeouts().implicitlyWait(30, TimeUnit.SECONDS);
		String value = Resources.getInstance().get(key);
		Long tempValue = Long.parseLong(value);
		if (tempValue == null) {
			Assert.fail("Key not identified : " + key);
		}
		 
		return tempValue;
	}
	
	/**
	 * Gets the resource.
	 *
	 * @param key
	 *            the key
	 * @return the resource
	 */
	public static String getResource(String key)   {		
		
		getWebDriver().manage().timeouts().implicitlyWait(30, TimeUnit.SECONDS);
		String value = Resources.getInstance().get(key);
		if (value == null) {
			Assert.fail("Key not identified : " + key);
		}if (value.contains("{random}")) {
			value = value.replace("{random}", getShortUUID());
			System.out.println(value);
			
		}
		return value;
		
	}

	/**
	 * Clear all cookies.
	 */
	public void clearAllCookies() {
		WebDriverAwareWebPage.getWebDriver().manage().deleteAllCookies();
	}

	/**
	 * Navigate to url.
	 *
	 * @param url
	 *            the url
	 */
	public static void navigateToUrl(String url) {
		navigateToUrl(url, false);
	}

	/**
	 * Navigate to url.
	 *
	 * @param url
	 *            the url
	 * @param force
	 *            the force
	 */
	public static void navigateToUrl(String url, boolean force) {
		if (!getWebDriver().getCurrentUrl().equals(url) || force == true) {
			getWebDriver().navigate().to(url);
		}
	}

	/**
	 * Open page.
	 *
	 * @return the t
	 */
	// public static <T> T openPage(String url) {
	// getWebDriver().navigate().to(url + "?clearCache=" + getShortUUID());
	// T obj = (T) new Object();
	// return (T) obj;
	// }

	/**
	 * Gets the short uuid.
	 *
	 * @return the short uuid
	 */
	public static String getShortUUID() {
		Long uuid = UUID.randomUUID().getLeastSignificantBits();
		return ((uuid.toString()).substring(8).replace("-", ""));
	}

	/**
	 * Wait for element.
	 *
	 * @param locator
	 *            the locator
	 * @return the web element
	 */
	protected static WebElement waitForElement(final By locator) {
		FluentWait<WebDriver> wait = new FluentWait<WebDriver>(getWebDriver())
				.withTimeout(30, TimeUnit.SECONDS)
				.pollingEvery(500, TimeUnit.MILLISECONDS)
				.ignoring(NoSuchElementException.class);

		WebElement element = wait.until(new Function<WebDriver, WebElement>() {
			public WebElement apply(WebDriver driver) {
				return getWebDriver().findElement(locator);
			}
		});

		return element;
	}

	/**
	 * Wait for elements.
	 *
	 * @param locator
	 *            the locator
	 * @return the list
	 */
	protected static List<WebElement> waitForElements(final By locator) {
		FluentWait<WebDriver> wait = new FluentWait<WebDriver>(getWebDriver())
				.withTimeout(30, TimeUnit.SECONDS)
				.pollingEvery(500, TimeUnit.MILLISECONDS)
				.ignoring(NoSuchElementException.class);

		List<WebElement> element = wait
				.until(new Function<WebDriver, List<WebElement>>() {
					public List<WebElement> apply(WebDriver driver) {
						return getWebDriver().findElements(locator);
					}
				});

		return element;
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

	/**
	 * Wait for element to be visible.
	 *
	 * @param locator
	 *            the locator
	 * @return the web element
	 */
	protected static WebElement waitForElementToBeVisible(final By locator) {

		WebDriverWait wait = new WebDriverWait(getWebDriver(), 100);
		WebElement element = null;
		try {
			element = wait.until(ExpectedConditions
					.visibilityOfElementLocated(locator));
			
		} catch (TimeoutException timeout 	) {
			Assert.fail("Not find element " + locator.toString());
		}
		return element;

	}

	/**
	 * Wait for element to be visible.
	 *
	 * @param locator
	 *            the locator
	 * @param text
	 *            the text
	 * @return the web element
	 */
	protected static WebElement waitForElementToBeVisibleWithText(
			final By locator, final String text) {
		WebElement finalElement = null;
		WebDriverWait wait = new WebDriverWait(getWebDriver(), 40);
		Boolean elementAvailable = wait.until(ExpectedConditions
				.invisibilityOfElementWithText(locator, text));
		if (!elementAvailable) {
			return finalElement;
		}
		List<WebElement> elements = getWebDriver().findElements(locator);
		for (WebElement element : elements) {
			if (element.getText().equalsIgnoreCase(text)) {
				finalElement = element;
				break;
			}
		}
		return finalElement;
	}

	/**
	 * Wait for element to be clickable.
	 *
	 * @param locator
	 *            the locator
	 * @return the web element
	 */
	protected static WebElement waitForElementToBeClickable(final By locator) {
		FluentWait<WebDriver> wait = new FluentWait<WebDriver>(getWebDriver())
				.withTimeout(30, TimeUnit.SECONDS)
				.pollingEvery(500, TimeUnit.MILLISECONDS)
				.ignoring(NoSuchElementException.class);

		WebElement element = wait.until(ExpectedConditions
				.elementToBeClickable(locator));

		return element;
	}

	/**
	 * Wait for element to be clickable.
	 *
	 * @param locator
	 *            the locator
	 * @param timeOut
	 *            the time out
	 * @return the web element
	 */
	protected static WebElement waitForElementToBeClickable(final By locator,
			int timeOut) {
		WebDriverWait wait = new WebDriverWait(getWebDriver(), timeOut);
		WebElement element = wait.until(ExpectedConditions
				.elementToBeClickable(locator));

		return element;
	}

	/**
	 * Find element.
	 *
	 * @param locator
	 *            the locator
	 * @return the web element
	 */
	public WebElement findElement(final By locator) {
		return getWebDriver().findElement(locator);
	}

	/**
	 * Find elements.
	 *
	 * @param locator
	 *            the locator
	 * @return the list
	 */
	public List<WebElement> findElements(final By locator) {
		return getWebDriver().findElements(locator);
	}

	/**
	 * Js click.
	 *
	 * @param element
	 *            the element
	 */
	public void JsClick(LazyWebElement element) {
		JavascriptExecutor executor = (JavascriptExecutor) getWebDriver();
		executor.executeScript("arguments[0].click();", element);
	}

	/**
	 * Refresh.
	 */
	public void refresh() {
		navigateToUrl(getWebDriver().getCurrentUrl());
	}

	/**
	 * Refresh clear cache.
	 */
	public void refreshClearCache() {
		String currenturl = getWebDriver().getCurrentUrl();
		if (currenturl.contains("?")) {
			navigateToUrl(currenturl + "&clearCache=" + getShortUUID());
		} else {
			navigateToUrl(currenturl + "?clearCache=" + getShortUUID());
		}

	}

	/**
	 * Submit css values.
	 *
	 * @param items
	 *            the items
	 */
	public void submitCssValues(Map<String, String> items) {
		submitValues(items, "", false, "css");
	}

	/**
	 * Submit css values.
	 *
	 * @param items
	 *            the items
	 */
	public void submitCssValues(Map<String, String> items,boolean clear) {
		submitValues(items, "", clear, "css");
	}

	/**
	 * Submit css value.
	 *
	 * @param key
	 *            the key
	 * @param value
	 *            the value
	 */
	public void submitCssValue(String key, String value) {
		submitValue(key, value, "", false, "css");
	}

	/**
	 * Submit css values.
	 *
	 * @param items
	 *            the items
	 * @param type
	 *            the type
	 */
	public void submitCssValues(Map<String, String> items, String type) {
		submitValues(items, type, false, "css");
	}

	/**
	 * Submit css value.
	 *
	 * @param key
	 *            the key
	 * @param value
	 *            the value
	 * @param type
	 *            the type
	 */
	public void submitCssValue(String key, String value, String type) {
		submitValue(key, value, type, false, "css");
	}

	/**
	 * Submit x path values.
	 *
	 * @param items
	 *            the items
	 */
	public void submitXPathValues(Map<String, String> items) {
		submitValues(items, "", false, "xpath");
	}

	/**
	 * Submit x path value.
	 *
	 * @param key
	 *            the key
	 * @param value
	 *            the value
	 */
	public void submitXPathValue(String key, String value) {
		submitValue(key, value, "", false, "xpath");
	}

	/**
	 * Submit x path values.
	 *
	 * @param items
	 *            the items
	 * @param type
	 *            the type
	 */
	public void submitXPathValues(Map<String, String> items, String type) {
		submitValues(items, type, false, "xpath");
	}

	/**
	 * Submit x path value.
	 *
	 * @param key
	 *            the key
	 * @param value
	 *            the value
	 * @param type
	 *            the type
	 */
	public void submitXPathValue(String key, String value, String type) {
		submitValue(key, value, type, false, "xpath");
	}

	/**
	 * Submit id values.
	 *
	 * @param items
	 *            the items
	 */
	public void submitIDValues(Map<String, String> items) {
		submitValues(items, "", false, "id");
	}

	/**
	 * Submit id values.
	 *
	 * @param items
	 *            the items
	 * @param clear
	 *            the clear
	 */
	public void submitIDValues(Map<String, String> items, boolean clear) {
		submitValues(items, "", clear, "id");
	}

	/**
	 * Submit id value.
	 *
	 * @param key
	 *            the key
	 * @param value
	 *            the value
	 */
	public void submitIDValue(String key, String value) {
		submitValue(key, value, "", false, "id");
	}
	
	/**
	 * @param key
	 * @param value
	 */
	public void insertValues(Map<String, String> loginMap) throws Throwable {
		// TODO Auto-generated method stub
		try {
			for (Map.Entry<String, String> entry : loginMap.entrySet()) {
				insertValues(entry.getKey(), entry.getValue());
			}
		} catch (Exception ioe) {
			ioe.printStackTrace();
		}

	}

	public void insertValues(String key, String value ) {
		insertValues(key, value, "",true);
	}

	/**
	 * Method locates different field type and inserts the value into field
	 * @param key
	 * @param value
	 * @param type
	 * @param clear
	 */
	private void insertValues(String key, String value, String type, boolean clear) {
		// TODO Auto-generated method stub
		try {
			String feldType = getLocatorFieldType(getResource(key));
			switch (feldType) {
			
			case "input":
				try {
					
					if (key.equals("nominalinterestratefrequency")) {
						((JavascriptExecutor) getWebDriver())
								.executeScript("scroll(0,600);");
						Thread.sleep(getResourceKey("smallWait"));
						
					}
					By locator = null;
					locator = getLocator(getResource(key));
					waitForElementToBeVisible(locator);
					LazyWebElement locatorElement = getElement(locator, clear);
					locatorElement.sendKeys(value);
					Thread.sleep(getResourceKey("wait"));
					/*switch (type) {
					case "combobox":
						locatorElement.sendKeys(Keys.RETURN);
						break;
					default:
						break;
					}*/
				} catch (NoSuchElementException exception) {
					Assert.fail("Could not find the " + key);
				}

				break;
			case "button":
				if (key.equals("clickonapprove") || key.equals("clickonModifyApplication")) {
					((JavascriptExecutor) getWebDriver())
							.executeScript("scroll(500,0);");
					Thread.sleep(getResourceKey("mediumWait"));
					
				}
				clickButton(getLocator(getResource(key)));
				Thread.sleep(getResourceKey("wait"));
				if (key.equals("cash") || key.equals("accrualperiodic")||key.equals("accrualupfront") ) {
					((JavascriptExecutor) getWebDriver())
							.executeScript("window.scrollBy(0,250)", "");
					Thread.sleep(getResourceKey("mediumWait"));
					
				}
				
				break;
				
			case "Wait":
				try {
					double wait = Double.parseDouble(value);
					int waitTime = (int) (wait);
					Thread.sleep(waitTime);
				} catch (NumberFormatException e) {
					e.printStackTrace();
				}
				
				break;
			case "datePicker":
				try {
					By locator = null;
					locator = getLocator(getResource(key));
					waitForElementToBeVisible(locator);
					LazyWebElement locatorElement = getElement(locator, clear);

					locatorElement.sendKeys(value);
					Thread.sleep(getResourceKey("wait"));
					locatorElement.sendKeys(Keys.ESCAPE);
					Thread.sleep(getResourceKey("wait"));

				} catch (NoSuchElementException exception) {
					Assert.fail("Could not find the " + key);
				}
			//	clickButton(getLocator(getResource("clickondate")));
				break;
			case "dropDown":
				
//					By scrollToLocator= null;
//					scrollToLocator = getLocator(getResource(key));
////					((JavascriptExecutor)  getWebDriver()).executeScript("arguments[0].scrollIntoView(true);", element1);
//					WebElement element = getWebDriver().findElement(scrollToLocator);
//				    int elementPosition = element.getLocation().getY();
//					String js = String.format("window.scroll(0, %s)", elementPosition-100);
//					((JavascriptExecutor)getWebDriver()).executeScript(js);
				
					clickButton(getLocator(getResource(key)));
					By locator = null;
					locator = getLocator(getResource(key + ".input"));
					waitForElementToBeVisible(locator);
					LazyWebElement locatorElement = getElement(locator, clear);
					locatorElement.sendKeys(value + Keys.TAB);
			//		getElement(getLocator(getResource(key + ".input"))).sendKeys(Keys.TAB);
		
				Thread.sleep(getResourceKey("wait"));

				break;
			case "checkbox":
				boolean checked = value.equals("checked");
				LazyWebElement check = getElement(getResource(key));
				if (check.isSelected() != checked) {
					clickButton(getLocator(getResource(key)));
					Thread.sleep(getResourceKey("smallWait"));
				}

				break;
			case "radiobutton":

				break;
			case "plus":
				if (value.contains("plus")) {
					String[] value1 = value.split(" ");
					clickButton(getResource("frontend.clients.clients.plus"),
							"xpath");
					rowval = value1[1];
				}

				break;
			case "select":
				
				if (key.equals("selectdayofthemonthPattern")) {
					double parseDoubleValue = Double.parseDouble(value);
					int parseIntValue = (int) (parseDoubleValue);
					value = Integer.toString(parseIntValue);
				}							
				try {
					LazyWebElement selectelement = getElement(getResource(key));
					Select statusselect = new Select(selectelement);
					statusselect.selectByVisibleText(value);
					Thread.sleep(getResourceKey("wait"));
				} catch (NoSuchElementException e) {
					Assert.fail("Could not find the " + key);
				}
				/*Assert.assertEquals(value, statusselect
						.getFirstSelectedOption().getText());*/				
				break;
			}
		} catch (Exception e) {
			// TODO: handle exception
		}
	
	}

	/**
	 * Submit id values.
	 *
	 * @param items
	 *            the items
	 * @param type
	 *            the type
	 */
	public void submitIDValues(Map<String, String> items, String type) {
		submitValues(items, type, false, "id");
	}

	/**
	 * Submit id values.
	 *
	 * @param items
	 *            the items
	 * @param type
	 *            the type
	 * @param clear
	 *            the clear
	 */
	public void submitIDValues(Map<String, String> items, String type,
			boolean clear) {
		submitValues(items, type, clear, "id");
	}

	/**
	 * Submit id value.
	 *
	 * @param key
	 *            the key
	 * @param value
	 *            the value
	 * @param type
	 *            the type
	 */
	public void submitIDValue(String key, String value, String type) {
		submitValue(key, value, type, false, "id");
	}

	/**
	 * Submit id value.
	 *
	 * @param key
	 *            the key
	 * @param value
	 *            the value
	 * @param clear
	 *            the clear
	 */
	public void submitIDValue(String key, String value, boolean clear) {
		submitValue(key, value, "", clear, "id");
	}

	/**
	 * Submit name values.
	 *
	 * @param items
	 *            the items
	 */
	public void submitNameValues(Map<String, String> items) {
		submitValues(items, "", false, "name");
	}

	/**
	 * Submit name values.
	 *
	 * @param items
	 *            the items
	 * @param clear
	 *            the clear
	 */
	public void submitNameValues(Map<String, String> items, boolean clear) {
		submitValues(items, "", clear, "name");
	}

	/**
	 * Submit id value.
	 *
	 * @param key
	 *            the key
	 * @param value
	 *            the value
	 */
	public void submitNameValue(String key, String value) {
		submitValue(key, value, "", false, "name");
	}

	/**
	 * Submit id values.
	 *
	 * @param items
	 *            the items
	 * @param type
	 *            the type
	 */
	public void submitNameValues(Map<String, String> items, String type) {
		submitValues(items, type, false, "name");
	}

	/**
	 * Submit id values.
	 *
	 * @param items
	 *            the items
	 * @param type
	 *            the type
	 * @param clear
	 *            the clear
	 */
	public void submitNameValues(Map<String, String> items, String type,
			boolean clear) {
		submitValues(items, type, clear, "name");
	}

	/**
	 * Submit id value.
	 *
	 * @param key
	 *            the key
	 * @param value
	 *            the value
	 * @param type
	 *            the type
	 */
	public void submitNameValue(String key, String value, String type) {
		submitValue(key, value, type, false, "name");
	}

	/**
	 * Submit id value.
	 *
	 * @param key
	 *            the key
	 * @param value
	 *            the value
	 * @param clear
	 *            the clear
	 */
	public void submitNameValue(String key, String value, boolean clear) {
		submitValue(key, value, "", clear, "name");
	}

	/**
	 * Submit values.
	 *
	 * @param items
	 *            the items
	 * @param type
	 *            the type
	 * @param clear
	 *            the clear
	 * @param locatortype
	 *            the locatortype
	 */
	private void submitValues(Map<String, String> items, String type,
			boolean clear, String locatortype) {
		for (Map.Entry<String, String> entry : items.entrySet()) {
			submitValue(entry.getKey(), entry.getValue(), type, clear,
					locatortype);
			
		}
	}

	/**
	 * Submit value.
	 *
	 * @param key
	 *            the key
	 * @param value
	 *            the value
	 * @param type
	 *            the type
	 * @param clear
	 *            the clear
	 * @param locatortype
	 *            the locatortype
	 */
	private void submitValue(String key, String value, String type,
			boolean clear, String locatortype) {
		try {
			By locator = null;
			locator = getLocator(getResource(key), locatortype);
		//	locator = getLocator(getResource(key));
			waitForElementToBeVisible(locator);
			LazyWebElement locatorElement = getElement(locator, clear);

			locatorElement.sendKeys(value);
			System.out
					.println("SubmitValue" + locator.toString() + ":" + value);
			switch (type) {
			case "combobox":
				locatorElement.sendKeys(Keys.RETURN);
				break;
			default:
				break;
			}
		} catch (NoSuchElementException exception) {
			Assert.fail("Could not find the " + key);
		}

	}
	
	/**
	 * Gets the element.
	 *
	 * @param locator
	 *            the locator
	 * @return the element
	 */
	private LazyWebElement getElement(By locator) {
		return getElement(locator, false);
	}

	/**
	 * Gets the element.
	 *
	 * @param locator
	 *            the locator
	 * @param clear
	 *            the clear
	 * @return the element
	 */
	protected LazyWebElement getElement(By locator, boolean clear) {
		LazyWebElement locatorElement = new LazyWebElement(getWebDriver(),
				locator);
		waitForElementToBeVisible(locator);
		if (clear)
			locatorElement.clear();
		return locatorElement;
	}
	
/*	protected LazyWebElement getElement(By locator, boolean clear) {
		LazyWebElement locatorElement = new LazyWebElement(getWebDriver(),
				locator);
		waitForElementToBeVisible(locator);
		if (clear)
			locatorElement.clear();
		return locatorElement;
	}*/

	/**
	 * Gets the element.
	 *
	 * @param locator
	 *            the locator
	 * @param timeout
	 *            the timeout
	 * @return the element
	 */
	protected LazyWebElement getElement(By locator, int timeout) {
		LazyWebElement locatorElement = new LazyWebElement(getWebDriver(),
				locator, timeout);
		return locatorElement;
	}

	/**
	 * Gets the elements.
	 *
	 * @param locator
	 *            the locator
	 * @return the elements
	 */
	protected List<WebElement> getElements(By locator) {
		LazyWebElement locatorElement = new LazyWebElement(getWebDriver(),
				locator);
		waitForElementToBeVisible(locator);
		return locatorElement.findElements(locator);
	}

	/**
	 * Gets the element.
	 *
	 * @param path
	 *            the path
	 * @param locatortype
	 *            the locatortype
	 * @param clear
	 *            the clear
	 * @return the element
	 */
	private LazyWebElement getElement(String locatortype,
			boolean clear) {
		By locator = getLocator(locatortype);
		return getElement(locator, clear);
	}
	/*private LazyWebElement getElement(String path, String locatortype,
			boolean clear) {
		By locator = getLocator(path, locatortype);
		return getElement(locator, clear);
	}*/

	/**
	 * Gets the element.
	 *
	 * @param path
	 *            the path
	 * @param locatortype
	 *            the locatortype
	 * @return the element
	 */
	protected LazyWebElement getElement(String path) {
		return getElement(path, false);
	}
	
/*	protected LazyWebElement getElement(String path, String locatortype) {
		return getElement(path, locatortype, false);
	}
*/
	/**
	 * Gets the web element.
	 *
	 * @param path
	 *            the path
	 * @param locatortype
	 *            the locatortype
	 * @return the web element
	 */
	protected WebElement getWebElement(String path, String locatortype) {
		return getWebElement(getLocator(path, locatortype), false);
	}

	/**
	 * Gets the element.
	 *
	 * @param locator
	 *            the locator
	 * @param clear
	 *            the clear
	 * @return the element
	 */
	protected WebElement getWebElement(By locator, boolean clear) {
		WebElement locatorElement = getWebDriver().findElement(locator);
		waitForElementToBeVisible(locator);
		if (clear)
			locatorElement.clear();
		return locatorElement;
	}

	/**
	 * Gets the web elements.
	 *
	 * @param locator
	 *            the locator
	 * @param clear
	 *            the clear
	 * @return the web elements
	 */
	protected List<WebElement> getWebElements(By locator, boolean clear) {
		List<WebElement> locatorElement = getWebDriver().findElements(locator);
		waitForElementToBeVisible(locator);
		if (clear)
			locatorElement.clear();
		return locatorElement;
	}

	/**
	 * Gets the locator.
	 *
	 * @param path
	 *            the path
	 * @param locatortype
	 *            the locatortype
	 * @param resource
	 *            the resource
	 * @return the locator
	 */
	public static By getLocator(String path, String locatortype,
			Boolean resource) {
		if (resource == false) {
			return getLocator(path, locatortype);
		}
		return getLocator(getResource(path), locatortype);
	}
	/**
	 * Gets the locator.
	 *
	 * @param path
	 *            the path
	 * @param locatortype
	 *            the locatortype
	 * @return the locator
	 */
	public static By getLocator(String path, String locatortype) {
		By locator = null;
		try {
			switch (locatortype.toLowerCase()) {
			case "css":
				locator = By.cssSelector(path);
				break;
			case "xpath":
				locator = By.xpath(path);
				break;
			case "id":
				locator = By.id(path);
				break;
			case "linktext":
				locator = By.linkText(path);
				break;
			default:
				locator = By.name(path);
				break;
			}
		} catch (Exception ex) {
			if (path == null) {
				Assert.fail(path + " element is null");
			}
			Assert.fail("Cannot find element" + path);
		}
		return locator;

	}
	
	//////////////////Selenium/////////////////////////////
	
	public static String getLocatorFieldType(String fieldType) {

		String locatorFieldType = fieldType.split("->")[0];
		return locatorFieldType;
	}
	
	public By getLocator(String logicalname) {
		By by = null;
		// String locator=getResource(logicalname);
		String locatorName = null;
		String locatorValue;
		
			locatorName = logicalname.split("->")[1];
			locatorValue = logicalname.split("->")[2];

			if (locatorName.equalsIgnoreCase("id")) {
				by = By.id(locatorValue);
			} else if (locatorName.equalsIgnoreCase("name")) {
				by = By.name(locatorValue);
			} else if (locatorName.equalsIgnoreCase("xpath")) {
				by = By.xpath(locatorValue);
			} else if (locatorName.equalsIgnoreCase("linktext")) {
				by = By.linkText(locatorValue);
			} else if (locatorName.equalsIgnoreCase("cssselector")) {
				by = By.cssSelector(locatorValue);
			} else if (locatorName.equalsIgnoreCase("class")){
				by = By.className(locatorValue);
			}
			else {
				Assert.fail("Cannot find element" + locatorName);
			}
	
		return by;
	}
	
	public static String clickButton()
	{
		try
		{
			
//			oBrowser.findElement(getLocator(objects)).click();
			
		}catch(Exception e)
		{
			return "Fail";
		}
		return "Pass";
	}
	//////////////////////////////////////////////////

	/**
	 * Gets the text attribute.
	 *
	 * @param path
	 *            the path
	 * @param locatortype
	 *            the locatortype
	 * @param attributevlaue
	 *            the attributevlaue
	 * @return the text attribute
	 */
/*	public String getTextAttribute(String path, String locatortype,
			String attributevlaue) {
		// TODO Auto-generated method stub
		LazyWebElement element = getElement(getResource(path), locatortype);
		return element.getAttribute(attributevlaue);

	}*/

	/**
	 * Gets the text.
	 *
	 * @param path
	 *            the path
	 * @param locatortype
	 *            the locatortype
	 * @return the text
	 */
/*	public String getText(String path, String locatortype) {
		// TODO Auto-generated method stub
		LazyWebElement element = getElement(getResource(path), locatortype);
		return element.getText();
	}*/

	/**
	 * Gets the text.
	 *
	 * @param locator
	 *            the locator
	 * @return the text
	 */
	public String getText(By locator) {
		// TODO Auto-generated method stub
		LazyWebElement element = getElement(locator);
		return element.getText();
	}

	/**
	 * Gets the text match.
	 *
	 * @param path
	 *            the path
	 * @param locatortype
	 *            the locatortype
	 * @param matchtext
	 *            the matchtext
	 * @return the text match
	 */
/*	public boolean getTextMatch(String path, String locatortype,
			String matchtext) {
		// TODO Auto-generated method stub
		LazyWebElement element = getElement(
				replaceGetResources(path, "{value}", matchtext), locatortype);
		return element == null;
	}*/

	public void verifySuccessMessage(String page, String message) {
//		try {

			Assert.assertTrue(validateSame(page, message));
			/*}catch (AssertionError  e) {
			Assert.fail(" Expected result:" + message
					+ " Actual result:" + getText(getLocator(getResource(page))));
		}*/
	}

	public void verifyPartialSuccessMessage(String page, String message,
			String locatortype) {
		Assert.assertTrue(validateContains(page, message, locatortype));
	}
	
	public boolean validateSame(String expected, String value) {
		return getText(getLocator(getResource(expected))).equals(value);
	}

	public String getSingleText(By locator) {
		// TODO Auto-generated method stub
		LazyWebElement element = getElement(locator);
		return element.getText().replace("\n", " ").replace("\r", " ");
	}

	public boolean validateSame(String expected, String value,
			String locatortype) {
		return getSingleText(getLocator(getResource(expected)))
				.equals(value);
	}

	public boolean validateContains(String expected, String value,
			String locatortype) {
		return getSingleText(getLocator(getResource(expected), locatortype))
				.contains(value);
	}

	public boolean validateContains(String expected, String value) {
		return getSingleText(getLocator(getResource(expected), "css"))
				.contains(value);
	}

	/**
	 * Replace get resources.
	 *
	 * @param path
	 *            the path
	 * @param replace
	 *            the replace
	 * @param value
	 *            the value
	 * @return the string
	 */
	public String replaceGetResources(String path, String replace, String value) {
		return getResource(path).replace(replace, value);
	}

	/**
	 * Click submit.
	 */
	public void clickSubmit() {
		clickButton(getLocator("submit", "name"), "Cannot find submit ", 0);
	}

	/**
	 * Click submit.
	 *
	 * @param name
	 *            the name
	 */
	public void clickSubmit(String name) {
		clickButton(getLocator(name, "name"), "Cannot find submit ", 0);
	}

	/**
	 * Click perform search.
	 */
	public void clickPerformSearch() {
		clickPerformSearch("do-search");
	}

	/**
	 * Click perform search.
	 *
	 * @param performsearchid
	 *            the performsearchid
	 */
	public void clickPerformSearch(String performsearchid) {
		clickButton(getLocator(performsearchid, "id"),
				"Cannot find perform search ", 0);
	}

	/**
	 * Click button.
	 *
	 * @param element
	 *            the element
	 */
/*	public void clickButton(String element) {
		clickButton(getLocator(element, "name"), "Cannot find " + element, 0);
	}*/
	
/////////////////////////////////////////////////////////////////////////////////////////////////////////////
	public void clickButton(String element) {
		clickButton(getLocator(element));
	}
	
	/**
	 * Click button.
	 *
	 * @param element
	 *            the element
	 * @param locatortype
	 *            the locatortype
	 */
	public void clickButton(String element, String locatortype) {
		clickButton(getLocator(element, locatortype), "Cannot find " + element,
				100);
	}

	public void clickButton(String element, String locatortype, boolean resource) {
		if (resource) {
			clickButton(getLocator(getResource(element), locatortype),
					"Cannot find " + element, 0);
		} else
			clickButton(element, locatortype);
	}

	/**
	 * Click button.
	 *
	 * @param locator
	 *            the locator
	 */
	public void clickButton(By locator) {
		clickButton(locator, "Cannot find " + locator.toString(), 0);
	}

	/**
	 * Click button.
	 *
	 * @param locator
	 *            the locator
	 * @param timeout
	 *            the timeout
	 */
	public void clickButton(By locator, int timeout) {
		clickButton(locator, "Cannot find " + locator.toString(), timeout);
	}

	/**
	 * Click button.
	 *
	 * @param locator
	 *            the locator
	 * @param message
	 *            the message
	 */
	public void clickButton(By locator, String message) {
		clickButton(locator, message, 0);
	}

	/**
	 * Click button.
	 *
	 * @param element
	 *            the element
	 * @param wait
	 *            the wait
	 */
	public void clickButton(LazyWebElement element, boolean wait) {
		// TODO Auto-generated method stub
		try {
			if (wait) {
				element.waitAndClick();
			}

			else {
				element.click();
			}
		} catch (Exception e) {
			Assert.fail(e.getMessage());
		}
	}

	/**
	 * Click button.
	 *
	 * @param locator
	 *            the locator
	 * @param message
	 *            the message
	 * @param timeout
	 *            the timeout
	 */
	public void clickButton(By locator, String message, int timeout) {
		try {
			waitForElementToBeVisible(locator);
			LazyWebElement element = null;
			if (timeout != 0) {
				element = new LazyWebElement(getWebDriver(), locator, timeout);
			} else {
				element = new LazyWebElement(getWebDriver(), locator);
			}
			clickButton(element, true);
			
		} catch (NoSuchElementException e) {
			Assert.fail(message);
		}
	}

	/**
	 * Click list button.
	 *
	 * @param locator
	 *            the locator
	 * @param text
	 *            the text
	 */
	public void clickListButton(By locator, String text) {
		try {
			WebElement element = waitForElementToBeVisibleWithText(locator,
					text);
			if (element == null) {
				Assert.fail("Not find element " + locator.toString());
			} else {
				element.click();
			}
		} catch (NoSuchElementException e) {
			Assert.fail("Not find element " + locator.toString());
		}
	}

	/**
	 * Checks if is displayed.
	 *
	 * @param locator
	 *            the locator
	 * @param message
	 *            the message
	 */
	public void isDisplayed(By locator, String message) {
		Displayed(locator, message, true);
	}

	/**
	 * Checks if is displayed.
	 *
	 * @param locator
	 *            the locator
	 */
	public void isDisplayed(By locator) {
		isDisplayed(locator, "Could not find " + locator.toString());
	}

	/**
	 * Checks if is displayed.
	 *
	 * @param locator
	 *            the locator
	 * @param message
	 *            the message
	 */
	public void isNotDisplayed(By locator, String message) {
		Displayed(locator, message, false);
	}

	/**
	 * Checks if is displayed.
	 *
	 * @param locator
	 *            the locator
	 */
	public void isNotDisplayed(By locator) {
		isDisplayed(locator, "Found elemet " + locator.toString());
	}

	/**
	 * Checks if is displayed.
	 *
	 * @param locator
	 *            the locator
	 * @param message
	 *            the message
	 * @param expect
	 *            the expect
	 */
	private void Displayed(By locator, String message, Boolean expect) {
		boolean elementVisible = isElementVisible(locator);
		if (expect != elementVisible) {
			Assert.fail(message);
		}
	}

	/**
	 * Checks if is selected.
	 *
	 * @param locator
	 *            the locator
	 * @param message
	 *            the message
	 * @return true, if is selected
	 */
	public boolean isSelected(By locator, String message) {
		try {
			waitForElementToBeVisible(locator);
			LazyWebElement element = new LazyWebElement(getWebDriver(), locator);
			return element.isSelected();
		} catch (NoSuchElementException e) {
			Assert.fail(message);

		}
		return false;
	}

	/**
	 * Click img check box.
	 *
	 * @param locatorsc
	 *            the locatorsc
	 * @param locator
	 *            the locator
	 * @param status
	 *            the status
	 * @param message
	 *            the message
	 */
	public void clickImgCheckBox(By locatorsc, By locator, String status,
			String message) {
		try {
			try {

				LazyWebElement elementsc = getElement(locatorsc);
				elementsc.isDisplayed();
				if (status.equals("disable")) {
					clickButton(locator);
					return;
				}
				return;
			} catch (Exception ex) {
				if (status.equals("enable")) {
					clickButton(locator);
					return;
				}
				return;
			}
		} catch (NoSuchElementException e) {
			Assert.fail(message);
		}
	}

	/**
	 * Click check box.
	 *
	 * @param locator
	 *            the locator
	 * @param status
	 *            the status
	 * @param message
	 *            the message
	 */
	public void clickCheckBox(By locator, String status, String message) {
		try {
			boolean enable = true;
			LazyWebElement element = getElement(locator);
			// exclusive OR to see if it should be clicked
			if (status.equals("disable")) {
				enable = false;
			}
			if (enable ^ element.isSelected()) {
				element.waitAndClick();
			}
		} catch (NoSuchElementException e) {
			Assert.fail(message);
		}
	}

	/**
	 * Gets the row data.
	 *
	 * @param format
	 *            the format
	 * @param rownum
	 *            the rownum
	 * @param formatlast
	 *            the formatlast
	 * @param columnnum
	 *            the columnnum
	 * @return the string
	 */
	public String GetRowData(String format, int rownum, String formatlast,
			int columnnum) {
		String rownumber = String.valueOf(rownum);
		String value = "";
		try {
			System.out.println(By.cssSelector(
					format + "(" + rownumber + ")" + formatlast).toString());
			value = findElement(
					By.cssSelector(format + ":nth-child(" + rownumber + ")"
							+ formatlast + ":nth-child(" + columnnum + ")"))
					.getText();

			// which column number
		} catch (NoSuchElementException e) {
			Assert.fail("Cannot find elemennt row " + rownumber);
		}
		return value;
	}

	/**
	 * Select row.
	 *
	 * @param format
	 *            the format
	 * @param rownum
	 *            the rownum
	 */
	public void selectRow(String format, int rownum) {
		String rownumber = String.valueOf(rownum);
		System.out.println(By.cssSelector(format + "(" + rownumber + ")")
				.toString());
		try {
			clickButton(By.cssSelector(format + "(" + rownumber + ")"));
		} catch (NoSuchElementException e) {
			Assert.fail("Cannot find elemennt row " + rownumber);
		}
	}

	/**
	 * Select row.
	 *
	 * @param format
	 *            the format
	 * @param rownum
	 *            the rownum
	 * @param formatlast
	 *            the formatlast
	 */
	public void selectRow(String format, int rownum, String formatlast) {
		String rownumber = String.valueOf(rownum);
		try {
			System.out.println(By.cssSelector(
					format + "(" + rownumber + ")" + formatlast).toString());
			clickButton(By.cssSelector(format + "(" + rownumber + ")"
					+ formatlast));
		} catch (NoSuchElementException e) {
			Assert.fail("Cannot find elemennt row " + rownumber);
		}
	}

	/**
	 * Wait for any object.
	 *
	 * @param locator
	 *            the locator
	 * @param timeout
	 *            the timeout
	 * @return true, if is element visible
	 */
	// public static void waitForAnyObject(WebElement ele) {
	// {
	//
	// WebElement e = (new WebDriverWait(getWebDriver(), 30))
	// .until(ExpectedConditions.visibilityOf(ele));
	// }
	// }

	/*
	 * (non-Javadoc)
	 *
	 * @see com.wowcher.testing.framework.pages.WebPage#isOpened()
	 */
	public boolean isElementVisible(By locator, int timeout) {
		// TODO Auto-generated method stub
		try {
			LazyWebElement element = null;
			element = getElement(locator, timeout);
			if (element.isDisplayed() == false)
				return false;
			return true;
		} catch (Exception ex) {
			return (false);
		}
	}

	/*
	 * (non-Javadoc)
	 *
	 * @see com.wowcher.testing.framework.pages.WebPage#isOpened()
	 */
	/**
	 * Checks if is element visible.
	 *
	 * @param locator
	 *            the locator
	 * @return true, if is element visible
	 */
	public boolean isElementVisible(By locator) {
		return isElementVisible(locator, 30);
	}



	/**
	 * Comboboxselect.
	 *
	 * @param path
	 *            the path
	 * @param locatortype1
	 *            the locatortype1
	 * @param locatortype2
	 *            the locatortype2
	 */
	public void comboboxselect(String path, String locatortype1,
			String locatortype2) {
		clickButton(getResource(path), locatortype1);
		String varValue = getResource(path + ".value");
		clickButton(getResource(path + ".select").replace("{value}", varValue),
				locatortype2);
	}

	/**
	 * Comboboxselect first.
	 *
	 * @param path
	 *            the path
	 * @param locatortype1
	 *            the locatortype1
	 * @param locatortype2
	 *            the locatortype2
	 */
	public void comboboxselectFirst(String path, String locatortype1,
			String locatortype2) {
		clickButton(getResource(path), locatortype1);
		List<WebElement> elements = getElements(getLocator(
				".x-combo-list-item", "css"));
		String varValue = elements.get(0).getText();
		clickButton(getResource(path + ".select").replace("{value}", varValue),
				locatortype2);
	}

	/**
	 * Comboboxselect.
	 *
	 * @param path
	 *            the path
	 * @param locatortype1
	 *            the locatortype1
	 * @param locatortype2
	 *            the locatortype2
	 * @param value
	 *            the value
	 * @throws InterruptedException
	 *             the interrupted exception
	 */
	public void comboboxselect(String path, String locatortype1,
			String locatortype2, String value) throws InterruptedException {
		clickButton(getResource(path), locatortype1);
		// waitForElementToBeVisible(getLocator("dod-locations", "id", false));
		Thread.sleep(1000);
		clickButton(getResource(path + ".select").replace("{value}", value),
				locatortype2);

	}

	/**
	 * Comboboxselect.
	 *
	 * @param path
	 *            the path
	 * @param locatortype1
	 *            the locatortype1
	 * @param locatortype2
	 *            the locatortype2
	 * @param value
	 *            the value
	 * @param resource
	 *            the resource
	 * @throws InterruptedException
	 *             the interrupted exception
	 */
	public void comboboxselect(String path, String locatortype1,
			String locatortype2, String value, boolean resource)
			throws InterruptedException {
		if (resource) {
			value = getResource(value);
		}
		comboboxselect(path, locatortype1, locatortype2, value);
	}

	/**
	 * Select location.
	 *
	 * @param Location
	 *            the location
	 * @throws InterruptedException
	 *             the interrupted exception
	 */
	public void selectLocation(String Location) throws InterruptedException {
		comboboxselect("frontend.location.selectlocation", "id", "linktext",
				Location);
		Thread.sleep(3000);
	}

	/**
	 * Select drop downvalues.
	 *
	 * @param path
	 *            the path
	 * @param locatorType
	 *            the locator type
	 * @param valuetype
	 *            the valuetype
	 * @param values
	 *            the values
	 */
	public void selectDropDownvalues(String path, String locatorType,
			String valuetype, String values) {/*
		LazyWebElement selectelement = getElement(getResource(path),
				locatorType);
		Select statusselect = new Select(selectelement);
		switch (valuetype.toLowerCase()) {
		case "text":
			statusselect.selectByVisibleText(values);
			break;
		case "value":
			statusselect.selectByValue(values);
			break;
		}
	*/}

	/**
	 * Dragand drop.
	 *
	 * @param source
	 *            the source
	 * @param locatorType1
	 *            the locator type1
	 * @param target
	 *            the target
	 * @param locatorType2
	 *            the locator type2
	 * @param location
	 *            the location
	 */
	public void dragandDrop(String source, String locatorType1, String target,
			String locatorType2, String location) {
		try {
			WebElement From = getWebElement(
					getResource(source).replace("{value}", location),
					locatorType1);
			WebElement To = getWebElement(getResource(target), locatorType2);
			Actions builder = new Actions(getWebDriver());
			// Action dragAndDrop = builder.clickAndHold(From).moveToElement(To)
			// .release(To).build();
			Action dragAndDropDirect = builder.dragAndDrop(From, To).build();
			dragAndDropDirect.perform();

		}

		catch (NoSuchElementException e) {
			Assert.fail("Could not drag and drop to location the ");
		}

	}

	/**
	 * Drag location to deal.
	 *
	 * @param location
	 *            the location
	 * @param dealtype
	 *            the dealtype
	 */
	public void dragLocationToDeal(String location, String dealtype) {
		WebElement target = null;
		List<WebElement> sourcelist = null;
		try {
			Thread.sleep(1000);
		} catch (InterruptedException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		if (dealtype.equals("main")) {
			target = getWebElement(
					getResource("wps.scheduler.deallocationtarget"), "css");
			sourcelist = getWebElements(
					getLocator("wps.scheduler.listlocation", "xpath", true),
					false);
		} else if (dealtype.equals("bonus")) {
			target = getWebElement(getResource("wps.scheduler.dealtobonus"),
					"css");
			sourcelist = getWebElements(
					getLocator("wps.scheduler.listlocation", "xpath", true),
					false);

		} else if (dealtype.equals("maintobonus")) {
			target = getWebElement(getResource("wps.scheduler.dealtobonus"),
					"css");
			sourcelist = getWebElements(
					getLocator(("wps.scheduler.mainlocation"), "xpath", true),
					false);
		} else if (dealtype.equals("bonustomain")) {

		} else if (dealtype.equals("bonusttolist")) {

		} else if (dealtype.equals("maintolist")) {

		}
		target.click();
		Actions builder = new Actions(getWebDriver());

		WebElement element = null;
		for (int i = 0; i < sourcelist.size(); i++) {
			if (sourcelist.get(i).getText().equals(location)) {
				element = sourcelist.get(i);
				break;
			}
		}
		if (element == null) {
			Assert.fail("Cannot find the chosen location to drag and drop");
		}

		Action dragAndDrop = builder.clickAndHold(element)
				.moveToElement(target, 5, 15).doubleClick().build();
		dragAndDrop.perform();
	}

	/**
	 * Change window.
	 *
	 * @param windowname
	 *            the windowname
	 * @param msg
	 *            the msg
	 * @param forceassert
	 *            the forceassert
	 */
	public void changeWindow(String windowname, String msg, boolean forceassert) {
		Set<String> windows = getWebDriver().getWindowHandles();
		int i = 0;
		if (windows.size() > 0) {
			for (String string : windows) {
				i++;
				if (i == Integer.parseInt(windowname)) {
					System.out.println("Before"
							+ getWebDriver().getCurrentUrl());
					getWebDriver().switchTo().window(string);
					System.out
							.println("After" + getWebDriver().getCurrentUrl());
					break;
				} else {
					continue;
				}
			}
		} else {
			if (forceassert)
				Assert.fail(windowname + ":" + msg);
			else
				System.out.println(windowname + ":" + msg);
		}
	}

	/**
	 * Convert to date.
	 *
	 * @param resource
	 *            the resource
	 * @return the string
	 */
	public static String convertToDate(String resource) {
		return convertToDate(resource, "dd MMMM yyyy");
	}

	/**
	 * Convert to date.
	 *
	 * @param resource
	 *            the resource
	 * @param format
	 *            the format
	 * @return the string
	 */
	public static String convertToDate(String resource, String format) {
		// TODO Auto-generated method stub
		if (resource.equals("TODAY")) {
			Date currentdate = new Date();
			SimpleDateFormat df = new SimpleDateFormat(format);
			String todaydate = df.format(currentdate);
			return todaydate;
		} else {
			// replace TODAY
			Date currentdate = new Date();
			String days = resource.replace("TODAY", "");
			Calendar cal = Calendar.getInstance();
			SimpleDateFormat df = new SimpleDateFormat(format);

			try {
				cal.setTime(df.parse(df.format(currentdate)));
			} catch (ParseException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			cal.add(Calendar.DAY_OF_MONTH, Integer.parseInt(days));
			return df.format(cal.getTime());
		}
	}

	/**
	 * Builds the key.
	 *
	 * @param key
	 *            the key
	 * @return the string
	 */
	public static String buildKey(String key) {
		return buildKey(key, "[^a-z0-9]", "");
	}

	/**
	 * Builds the key.
	 *
	 * @param key
	 *            the key
	 * @param regex
	 *            the regex
	 * @param replace
	 *            the replace
	 * @return the string
	 */
	public static String buildKey(String key, String regex, String replace) {
		return key.toLowerCase().replaceAll(regex, replace);
	}

	/**
	 * Download file.
	 *
	 * @return the string
	 * @throws IOException
	 *             Signals that an I/O exception has occurred.
	 */
	public String downloadFile() throws IOException {
		getWebDriver().get(getResource("wps.download.advanceurl"));
		JavascriptExecutor js = (JavascriptExecutor) getWebDriver();
		String prefId = getResource("wps.download.defaultdirectory");
		File tempDir = new File(System.getProperty("user.dir")
				+ getResource("wps.download.setdirectory"));
		if (!tempDir.exists()) {
			tempDir.mkdir();
		}
		String locator = String
				.format(getResource("wps.download.pref"), prefId);
		System.out.println(locator);
		// System.exit(0);
		// if (getElements(getLocator(locator, "xpath")).size() == 0) {
		getWebDriver().get(getResource("wps.download.chromeframe"));
		clickButton(getResource("wps.download.advancedbutton"), "xpath");
		// }
		String tmpDirEscapedPath = tempDir.getCanonicalPath().replace("\\",
				"\\\\");
		js.executeScript(String.format(
				"Preferences.setStringPref('%s', '%s', true)", prefId,
				tmpDirEscapedPath));
		return tmpDirEscapedPath;

	}

	/**
	 * Gets the row field value.
	 *
	 * @param format
	 *            the format
	 * @param row
	 *            the row
	 * @param column
	 *            the column
	 * @return the row field value
	 */
	public String getRowFieldValue(String format, String row, String column) {
		return format.replace("{r}", row).replace("{i}", column);
	}

	public void openNewTab() throws AWTException {
		// TODO Auto-generated method stub
		/*
		 * JavascriptExecutor executor = (JavascriptExecutor) getWebDriver();
		 * executor.executeScript("window.open('');");
		 */

		Robot varRobot = new Robot();
		varRobot.keyPress(KeyEvent.VK_CONTROL);
		varRobot.keyPress(KeyEvent.VK_T);
		varRobot.keyRelease(KeyEvent.VK_CONTROL);
		varRobot.keyRelease(KeyEvent.VK_T);

		changeWindow("2", "Not able to open the window", true);
	}



	//@Override
	public boolean isOpened() {
		// TODO Auto-generated method stub
		return false;
	}

}
