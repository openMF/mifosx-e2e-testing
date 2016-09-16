/*
 * 
 */
package org.browsermob.proxy;

import org.apache.http.HttpHost;
import org.apache.http.conn.params.ConnRoutePNames;
import org.apache.http.impl.client.DefaultHttpClient;
import org.junit.After;
import org.junit.Before;

// TODO: Auto-generated Javadoc
/**
 * The Class DummyServerTest.
 */
public class DummyServerTest {

	/** The dummy. */
	protected DummyServer dummy = new DummyServer(8080);

	/** The proxy. */
	protected ProxyServer proxy = new ProxyServer(8081);

	/** The client. */
	protected DefaultHttpClient client = new DefaultHttpClient();

	/**
	 * Start server.
	 * 
	 * @throws Exception
	 *             the exception
	 */
	@Before
	public void startServer() throws Exception {
		dummy.start();
		proxy.start();

		HttpHost proxyHost = new HttpHost("127.0.0.1", 8081, "http");
		client.getParams().setParameter(ConnRoutePNames.DEFAULT_PROXY,
				proxyHost);
	}

	/**
	 * Stop server.
	 * 
	 * @throws Exception
	 *             the exception
	 */
	@After
	public void stopServer() throws Exception {
		proxy.stop();
		dummy.stop();
	}

}
