/*
 * 
 */
package org.browsermob.proxy;

import org.junit.After;
import org.junit.Before;
import org.junit.Test;

import static org.hamcrest.CoreMatchers.equalTo;
import static org.hamcrest.CoreMatchers.not;
import static org.junit.Assert.assertThat;

// TODO: Auto-generated Javadoc
/**
 * The Class ProxyServerTest.
 */
public class ProxyServerTest {

	/** The server. */
	private ProxyServer server = new ProxyServer(0);

	/**
	 * Start server.
	 * 
	 * @throws Exception
	 *             the exception
	 */
	@Before
	public void startServer() throws Exception {
		server.start();
	}

	/**
	 * Stop server.
	 * 
	 * @throws Exception
	 *             the exception
	 */
	@After
	public void stopServer() throws Exception {
		server.stop();
	}

	/**
	 * Port allocation.
	 * 
	 * @throws Exception
	 *             the exception
	 */
	@Test
	public void portAllocation() throws Exception {
		System.out.println(server.getPort());
		assertThat(server.getPort(), not(equalTo(0)));
	}
}
