/*
 * 
 */
package org.browsermob.proxy.http;

import org.browsermob.proxy.util.Log;

import java.util.Set;
import java.util.concurrent.CopyOnWriteArraySet;

// TODO: Auto-generated Javadoc
/**
 * The Class HttpClientInterrupter.
 */
public class HttpClientInterrupter {

	/** The Constant LOG. */
	private static final Log LOG = new Log();

	/** The clients. */
	private static Set<BrowserMobHttpClient> clients = new CopyOnWriteArraySet<BrowserMobHttpClient>();

	static {
		Thread thread = new Thread(new Runnable() {
			@Override
			public void run() {
				while (true) {
					for (BrowserMobHttpClient client : clients) {
						try {
							client.checkTimeout();
						} catch (Exception e) {
							LOG.severe(
									"Unexpected problem while checking timeout on a client",
									e);
						}
					}

					try {
						Thread.sleep(1000);
					} catch (InterruptedException e) {
						// this is OK
					}
				}
			}
		}, "HttpClientInterrupter Thread");
		thread.setDaemon(true);
		thread.start();
	}

	/**
	 * Watch.
	 * 
	 * @param client
	 *            the client
	 */
	public static void watch(BrowserMobHttpClient client) {
		clients.add(client);
	}

	/**
	 * Release.
	 * 
	 * @param client
	 *            the client
	 */
	public static void release(BrowserMobHttpClient client) {
		clients.remove(client);
	}
}
