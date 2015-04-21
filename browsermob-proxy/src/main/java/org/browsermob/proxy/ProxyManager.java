/*
 * 
 */
package org.browsermob.proxy;

import com.google.inject.Inject;
import com.google.inject.Singleton;
import com.google.inject.Provider;

import java.util.Hashtable;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.atomic.AtomicInteger;

// TODO: Auto-generated Javadoc
/**
 * The Class ProxyManager.
 */
@Singleton
public class ProxyManager {

	/** The port counter. */
	private AtomicInteger portCounter = new AtomicInteger(9090);

	/** The proxy server provider. */
	private Provider<ProxyServer> proxyServerProvider;

	/** The proxies. */
	private Map<Integer, ProxyServer> proxies = new ConcurrentHashMap<Integer, ProxyServer>();

	/**
	 * Instantiates a new proxy manager.
	 * 
	 * @param proxyServerProvider
	 *            the proxy server provider
	 */
	@Inject
	public ProxyManager(Provider<ProxyServer> proxyServerProvider) {
		this.proxyServerProvider = proxyServerProvider;
	}

	/**
	 * Creates the.
	 * 
	 * @param options
	 *            the options
	 * @param port
	 *            the port
	 * @return the proxy server
	 * @throws Exception
	 *             the exception
	 */
	public ProxyServer create(Map<String, String> options, int port)
			throws Exception {
		ProxyServer proxy = proxyServerProvider.get();
		proxy.setPort(port);
		proxy.start();
		proxy.setOptions(options);
		proxies.put(port, proxy);
		return proxy;
	}

	/**
	 * Creates the.
	 * 
	 * @param options
	 *            the options
	 * @return the proxy server
	 * @throws Exception
	 *             the exception
	 */
	public ProxyServer create(Map<String, String> options) throws Exception {
		int port = portCounter.incrementAndGet();
		ProxyServer proxy = proxyServerProvider.get();

		proxy.setPort(port);
		proxy.start();
		proxy.setOptions(options);

		proxies.put(port, proxy);

		return proxy;
	}

	/**
	 * Gets the.
	 * 
	 * @param port
	 *            the port
	 * @return the proxy server
	 */
	public ProxyServer get(int port) {
		return proxies.get(port);
	}

	/**
	 * Delete.
	 * 
	 * @param port
	 *            the port
	 * @throws Exception
	 *             the exception
	 */
	public void delete(int port) throws Exception {
		ProxyServer proxy = proxies.remove(port);
		proxy.stop();
	}
}
