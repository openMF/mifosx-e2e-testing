/*
 *
 */
package com.mifos.testing.framework.webdriver;

import org.browsermob.proxy.ProxyServer;
import org.openqa.selenium.Proxy;
import org.openqa.selenium.chrome.ChromeDriver;
import org.openqa.selenium.chrome.ChromeOptions;
import org.openqa.selenium.remote.CapabilityType;
import org.openqa.selenium.remote.DesiredCapabilities;
import org.openqa.selenium.support.events.EventFiringWebDriver;

import java.io.File;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.TimeUnit;

// TODO: Auto-generated Javadoc
/**
 * A factory for creating ChromeDriver objects.
 */
public class ChromeDriverFactory implements WebDriverFactory {

	/** The driver. */
	private EventFiringWebDriver driver;

	/** The server. */
	private ProxyServer server;

	/** The screenshot. */
	File screenshot = null;

	/** The screenshotbytes. */
	byte[] screenshotbytes = null;

	/*
	 * (non-Javadoc)
	 *
	 * @see
	 * com.mifos.testing.framework.webdriver.WebDriverFactory#getWebDriver()
	 */
	@Override
	public EventFiringWebDriver getWebDriver() {
		if (this.driver == null) {
			try {
				Map<String, String> options = new HashMap<String, String>();
				Proxy proxy = new Proxy();

				if ((System.getProperty("webdriver.chrome.driver.proxy.url") != null)
						&& (System
								.getProperty("webdriver.chrome.driver.proxy.port") != null)) {

					options.put(
							"httpProxy",
							new String(
									System.getProperty("webdriver.chrome.driver.proxy.url")
											+ ":"
											+ System.getProperty("webdriver.chrome.driver.proxy.port")));

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

				DesiredCapabilities capabilities = new DesiredCapabilities();
				proxy.setFtpProxy(proxy.getHttpProxy());
				proxy.setSslProxy(proxy.getHttpProxy());
				proxy.setHttpsProxy(proxy.getHttpProxy());
				proxy.setNoProxy("localhost;127.0.0.1;www.devwowcher.co.uk;api.devwowcher.co.uk;secure.devwowcher.co.uk;www.devwowcher.co.uk:8081;www.intwowcher.co.uk;*");
				capabilities.setCapability(CapabilityType.PROXY, proxy);
				capabilities.setCapability(CapabilityType.ACCEPT_SSL_CERTS,
						true);

				// TODO: make this configurable in the run configuration and add
				// to other driver factories
				// LoggingPreferences logs = new LoggingPreferences();
				// logs.enable(LogType.DRIVER, Level.ALL);
				// capabilities.setCapability(CapabilityType.LOGGING_PREFS,
				// logs);

				ChromeOptions chromeOptions = new ChromeOptions();
				chromeOptions.addArguments("--test-type");
				Map<String, Object> prefs = new HashMap<String, Object>();
				prefs.put("profile.default_content_settings.popups", 0);
				prefs.put("browser.download.dir", "src\\test\\downloads\\");
				chromeOptions.setExperimentalOptions("prefs", prefs);

				capabilities.setCapability(ChromeOptions.CAPABILITY,
						chromeOptions);

				System.setProperty("webdriver.chrome.driver",
						"c:\\ChromeDriver\\chromedriver.exe");
				System.setProperty("webdriver.factory.class.name",
						"com.mifos.testing.framework.webdriver.ChromeDriverFactory");
				System.setProperty("resources.file.path",
						"src\\test\\resources\\mifos.properties");
				System.setProperty("testing.framework.testdata.metadata",
						"mifos-test-metadata.properties");

				this.driver = new EventFiringWebDriver(new ChromeDriver(
						capabilities));
				this.driver.manage().timeouts()
						.implicitlyWait(10, TimeUnit.SECONDS);

				// see if configured to use screenshot on exception
				// If so the set up folder name if present and register the
				// listener
				if (!(System.getProperty("screenshot.enabled") == null)) {
					if (System.getProperty("screenshot.enabled").equals("true")) {

						EventListener myListener = new EventListener();

						this.driver.register(myListener);
					}
				}

			} catch (Exception e) {
				throw new Error("Error in creating chrome web-driver", e);
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

			throw new Error("Error when quiting webdriver and proxy server", e);
		}

		return;
	}

	/*
	 * (non-Javadoc)
	 *
	 * @see
	 * com.mifos.testing.framework.webdriver.WebDriverFactory#getProxyServer()
	 */
	public ProxyServer getProxyServer() {
		return this.server;
	}

	/**
	 * Take screenshot.
	 */
	public void takeScreenshot() {

	}

}