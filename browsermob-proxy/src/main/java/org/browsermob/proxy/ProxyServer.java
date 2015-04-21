/*
 * 
 */
package org.browsermob.proxy;

import org.apache.http.HttpRequestInterceptor;
import org.apache.http.HttpResponseInterceptor;
import org.browsermob.core.har.*;
import org.browsermob.core.util.ThreadUtils;
import org.browsermob.proxy.http.BrowserMobHttpClient;
import org.browsermob.proxy.http.RequestInterceptor;
import org.browsermob.proxy.http.ResponseInterceptor;
import org.browsermob.proxy.jetty.http.HttpContext;
import org.browsermob.proxy.jetty.http.HttpListener;
import org.browsermob.proxy.jetty.http.SocketListener;
import org.browsermob.proxy.jetty.jetty.Server;
import org.browsermob.proxy.jetty.util.InetAddrPort;
import org.browsermob.proxy.util.Log;
import org.java_bandwidthlimiter.BandwidthLimiter;
import org.java_bandwidthlimiter.StreamManager;
import org.openqa.selenium.Proxy;

import java.net.InetAddress;
import java.net.UnknownHostException;
import java.util.Date;
import java.util.Map;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicInteger;

// TODO: Auto-generated Javadoc
/**
 * The Class ProxyServer.
 */
public class ProxyServer {

	/** The Constant CREATOR. */
	private static final HarNameVersion CREATOR = new HarNameVersion(
			"BrowserMob Proxy", "2.0");

	/** The Constant LOG. */
	private static final Log LOG = new Log();

	/** The server. */
	private Server server;

	/** The port. */
	private int port = -1;

	/** The client. */
	private BrowserMobHttpClient client;

	/** The stream manager. */
	private StreamManager streamManager;

	/** The current page. */
	private HarPage currentPage;

	/** The handler. */
	private BrowserMobProxyHandler handler;

	/** The page count. */
	private int pageCount = 1;

	/** The request counter. */
	private AtomicInteger requestCounter = new AtomicInteger(0);

	/**
	 * Instantiates a new proxy server.
	 */
	public ProxyServer() {
	}

	/**
	 * Instantiates a new proxy server.
	 * 
	 * @param port
	 *            the port
	 */
	public ProxyServer(int port) {
		this.port = port;
	}

	/**
	 * Start.
	 * 
	 * @throws Exception
	 *             the exception
	 */
	public void start() throws Exception {
		if (port == -1) {
			throw new IllegalStateException("Must set port before starting");
		}

		// create a stream manager that will be capped to 100 Megabits
		// remember that by default it is disabled!
		streamManager = new StreamManager(100 * BandwidthLimiter.OneMbps);

		server = new Server();
		HttpListener listener = new SocketListener(new InetAddrPort(getPort()));
		server.addListener(listener);
		HttpContext context = new HttpContext();
		context.setContextPath("/");
		server.addContext(context);

		handler = new BrowserMobProxyHandler();
		handler.setJettyServer(server);
		handler.setShutdownLock(new Object());
		client = new BrowserMobHttpClient(streamManager, requestCounter);
		client.prepareForBrowser();
		handler.setHttpClient(client);

		context.addHandler(handler);

		server.start();

		setPort(listener.getPort());
	}

	/**
	 * Selenium proxy.
	 * 
	 * @return the org.openqa.selenium. proxy
	 * @throws UnknownHostException
	 *             the unknown host exception
	 */
	public org.openqa.selenium.Proxy seleniumProxy()
			throws UnknownHostException {
		Proxy proxy = new Proxy();
		proxy.setProxyType(Proxy.ProxyType.MANUAL);
		String proxyStr = String.format("%s:%d", InetAddress.getLocalHost()
				.getCanonicalHostName(), getPort());
		proxy.setHttpProxy(proxyStr);
		proxy.setSslProxy(proxyStr);

		return proxy;
	}

	/**
	 * Cleanup.
	 */
	public void cleanup() {
		handler.cleanup();
	}

	/**
	 * Stop.
	 * 
	 * @throws Exception
	 *             the exception
	 */
	public void stop() throws Exception {
		cleanup();
		client.shutdown();
		server.stop();
	}

	/**
	 * Gets the port.
	 * 
	 * @return the port
	 */
	public int getPort() {
		return port;
	}

	/**
	 * Sets the port.
	 * 
	 * @param port
	 *            the new port
	 */
	public void setPort(int port) {
		this.port = port;
	}

	/**
	 * Gets the har.
	 * 
	 * @return the har
	 */
	public Har getHar() {
		// Wait up to 5 seconds for all active requests to cease before
		// returning the HAR.
		// This helps with race conditions but won't cause deadlocks should a
		// request hang
		// or error out in an unexpected way (which of course would be a bug!)
		boolean success = ThreadUtils.waitFor(new ThreadUtils.WaitCondition() {
			@Override
			public boolean checkCondition(long elapsedTimeInMs) {
				return requestCounter.get() == 0;
			}
		}, TimeUnit.SECONDS, 5);

		if (!success) {
			LOG.warn("Waited 5 seconds for requests to cease before returning HAR; giving up!");
		}

		return client.getHar();
	}

	/**
	 * New har.
	 * 
	 * @param initialPageRef
	 *            the initial page ref
	 * @return the har
	 */
	public Har newHar(String initialPageRef) {
		pageCount = 1;

		Har oldHar = getHar();

		Har har = new Har(new HarLog(CREATOR));
		client.setHar(har);
		newPage(initialPageRef);

		return oldHar;
	}

	/**
	 * New page.
	 * 
	 * @param pageRef
	 *            the page ref
	 */
	public void newPage(String pageRef) {
		if (pageRef == null) {
			pageRef = "Page " + pageCount;
		}

		client.setHarPageRef(pageRef);
		currentPage = new HarPage(pageRef);
		client.getHar().getLog().addPage(currentPage);

		pageCount++;
	}

	/**
	 * End page.
	 */
	public void endPage() {
		if (currentPage == null) {
			return;
		}

		currentPage.getPageTimings().setOnLoad(
				new Date().getTime()
						- currentPage.getStartedDateTime().getTime());
		client.setHarPageRef(null);
		currentPage = null;
	}

	/**
	 * Sets the retry count.
	 * 
	 * @param count
	 *            the new retry count
	 */
	public void setRetryCount(int count) {
		client.setRetryCount(count);
	}

	/**
	 * Remap host.
	 * 
	 * @param source
	 *            the source
	 * @param target
	 *            the target
	 */
	public void remapHost(String source, String target) {
		client.remapHost(source, target);
	}

	/**
	 * Adds the request interceptor.
	 * 
	 * @param i
	 *            the i
	 */
	@Deprecated
	public void addRequestInterceptor(HttpRequestInterceptor i) {
		client.addRequestInterceptor(i);
	}

	/**
	 * Adds the request interceptor.
	 * 
	 * @param interceptor
	 *            the interceptor
	 */
	public void addRequestInterceptor(RequestInterceptor interceptor) {
		client.addRequestInterceptor(interceptor);
	}

	/**
	 * Adds the response interceptor.
	 * 
	 * @param i
	 *            the i
	 */
	@Deprecated
	public void addResponseInterceptor(HttpResponseInterceptor i) {
		client.addResponseInterceptor(i);
	}

	/**
	 * Adds the response interceptor.
	 * 
	 * @param interceptor
	 *            the interceptor
	 */
	public void addResponseInterceptor(ResponseInterceptor interceptor) {
		client.addResponseInterceptor(interceptor);
	}

	/**
	 * Gets the stream manager.
	 * 
	 * @return the stream manager
	 */
	public StreamManager getStreamManager() {
		return streamManager;
	}

	// use getStreamManager().setDownstreamKbps instead
	/**
	 * Sets the downstream kbps.
	 * 
	 * @param downstreamKbps
	 *            the new downstream kbps
	 */
	@Deprecated
	public void setDownstreamKbps(long downstreamKbps) {
		streamManager.setDownstreamKbps(downstreamKbps);
		streamManager.enable();
	}

	// use getStreamManager().setUpstreamKbps instead
	/**
	 * Sets the upstream kbps.
	 * 
	 * @param upstreamKbps
	 *            the new upstream kbps
	 */
	@Deprecated
	public void setUpstreamKbps(long upstreamKbps) {
		streamManager.setUpstreamKbps(upstreamKbps);
		streamManager.enable();
	}

	// use getStreamManager().setLatency instead
	/**
	 * Sets the latency.
	 * 
	 * @param latency
	 *            the new latency
	 */
	@Deprecated
	public void setLatency(long latency) {
		streamManager.setLatency(latency);
		streamManager.enable();
	}

	/**
	 * Sets the request timeout.
	 * 
	 * @param requestTimeout
	 *            the new request timeout
	 */
	public void setRequestTimeout(int requestTimeout) {
		client.setRequestTimeout(requestTimeout);
	}

	/**
	 * Sets the socket operation timeout.
	 * 
	 * @param readTimeout
	 *            the new socket operation timeout
	 */
	public void setSocketOperationTimeout(int readTimeout) {
		client.setSocketOperationTimeout(readTimeout);
	}

	/**
	 * Sets the connection timeout.
	 * 
	 * @param connectionTimeout
	 *            the new connection timeout
	 */
	public void setConnectionTimeout(int connectionTimeout) {
		client.setConnectionTimeout(connectionTimeout);
	}

	/**
	 * Auto basic authorization.
	 * 
	 * @param domain
	 *            the domain
	 * @param username
	 *            the username
	 * @param password
	 *            the password
	 */
	public void autoBasicAuthorization(String domain, String username,
			String password) {
		client.autoBasicAuthorization(domain, username, password);
	}

	/**
	 * Rewrite url.
	 * 
	 * @param match
	 *            the match
	 * @param replace
	 *            the replace
	 */
	public void rewriteUrl(String match, String replace) {
		client.rewriteUrl(match, replace);
	}

	/**
	 * Blacklist requests.
	 * 
	 * @param pattern
	 *            the pattern
	 * @param responseCode
	 *            the response code
	 */
	public void blacklistRequests(String pattern, int responseCode) {
		client.blacklistRequests(pattern, responseCode);
	}

	/**
	 * Whitelist requests.
	 * 
	 * @param patterns
	 *            the patterns
	 * @param responseCode
	 *            the response code
	 */
	public void whitelistRequests(String[] patterns, int responseCode) {
		client.whitelistRequests(patterns, responseCode);
	}

	/**
	 * Adds the header.
	 * 
	 * @param name
	 *            the name
	 * @param value
	 *            the value
	 */
	public void addHeader(String name, String value) {
		client.addHeader(name, value);
	}

	/**
	 * Sets the capture headers.
	 * 
	 * @param captureHeaders
	 *            the new capture headers
	 */
	public void setCaptureHeaders(boolean captureHeaders) {
		client.setCaptureHeaders(captureHeaders);
	}

	/**
	 * Sets the capture content.
	 * 
	 * @param captureContent
	 *            the new capture content
	 */
	public void setCaptureContent(boolean captureContent) {
		client.setCaptureContent(captureContent);
	}

	/**
	 * Sets the capture binary content.
	 * 
	 * @param captureBinaryContent
	 *            the new capture binary content
	 */
	public void setCaptureBinaryContent(boolean captureBinaryContent) {
		client.setCaptureBinaryContent(captureBinaryContent);
	}

	/**
	 * Clear dns cache.
	 */
	public void clearDNSCache() {
		client.clearDNSCache();
	}

	/**
	 * Sets the dNS cache timeout.
	 * 
	 * @param timeout
	 *            the new dNS cache timeout
	 */
	public void setDNSCacheTimeout(int timeout) {
		client.setDNSCacheTimeout(timeout);
	}

	/**
	 * Wait for network traffic to stop.
	 * 
	 * @param quietPeriodInMs
	 *            the quiet period in ms
	 * @param timeoutInMs
	 *            the timeout in ms
	 */
	public void waitForNetworkTrafficToStop(final long quietPeriodInMs,
			long timeoutInMs) {
		long start = System.currentTimeMillis();
		boolean result = ThreadUtils.waitFor(new ThreadUtils.WaitCondition() {
			@Override
			public boolean checkCondition(long elapsedTimeInMs) {
				Date lastCompleted = null;
				Har har = client.getHar();
				if (har == null || har.getLog() == null) {
					return true;
				}

				for (HarEntry entry : har.getLog().getEntries()) {
					// if there is an active request, just stop looking
					if (entry.getResponse().getStatus() < 0) {
						return false;
					}

					Date end = new Date(entry.getStartedDateTime().getTime()
							+ entry.getTime());
					if (lastCompleted == null) {
						lastCompleted = end;
					} else if (end.after(lastCompleted)) {
						lastCompleted = end;
					}
				}

				return lastCompleted != null
						&& System.currentTimeMillis() - lastCompleted.getTime() >= quietPeriodInMs;
			}
		}, TimeUnit.MILLISECONDS, timeoutInMs);
		long end = System.currentTimeMillis();
		long time = (end - start);

		if (!result) {
			throw new RuntimeException("Timed out after " + timeoutInMs
					+ " ms while waiting for network traffic to stop");
		}
	}

	/**
	 * Sets the options.
	 * 
	 * @param options
	 *            the options
	 */
	public void setOptions(Map<String, String> options) {
		if (options.containsKey("httpProxy")) {
			client.setHttpProxy(options.get("httpProxy"));

		}
	}
}
