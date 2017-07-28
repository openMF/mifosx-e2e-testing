/*
 * 
 */
package org.browsermob.proxy;

import junit.framework.Assert;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.impl.cookie.BasicClientCookie;
import org.browsermob.core.har.Har;
import org.browsermob.core.har.HarCookie;
import org.browsermob.core.har.HarEntry;
import org.browsermob.proxy.util.IOUtils;
import org.junit.Test;

import java.io.IOException;

// TODO: Auto-generated Javadoc
/**
 * The Class CookieTest.
 */
public class CookieTest extends DummyServerTest {

	/**
	 * Test no double cookies.
	 * 
	 * @throws IOException
	 *             Signals that an I/O exception has occurred.
	 */
	@Test
	public void testNoDoubleCookies() throws IOException {
		proxy.setCaptureContent(true);
		proxy.newHar("Test");

		// set the cookie on the server side
		IOUtils.readFully(client
				.execute(new HttpGet("http://127.0.0.1:8080/cookie/"))
				.getEntity().getContent());

		String body = IOUtils.readFully(client
				.execute(new HttpGet("http://127.0.0.1:8080/echo/"))
				.getEntity().getContent());
		int first = body.indexOf("foo=bar");
		int last = body.lastIndexOf("foo=bar");
		Assert.assertTrue("foo=bar cookie not found", first != -1);
		Assert.assertEquals("Multiple foo=bar cookies found", first, last);
	}

	/**
	 * Test cookies are captured when set.
	 * 
	 * @throws IOException
	 *             Signals that an I/O exception has occurred.
	 */
	@Test
	public void testCookiesAreCapturedWhenSet() throws IOException {
		proxy.setCaptureContent(true);
		proxy.newHar("Test");

		// set the cookie on the server side
		IOUtils.readFully(client
				.execute(new HttpGet("http://127.0.0.1:8080/cookie/"))
				.getEntity().getContent());

		Har har = proxy.getHar();
		HarEntry entry = har.getLog().getEntries().get(0);
		HarCookie cookie = entry.getResponse().getCookies().get(0);
		Assert.assertEquals("foo", cookie.getName());
		Assert.assertEquals("bar", cookie.getValue());
	}

	/**
	 * Test cookies are captured when requested.
	 * 
	 * @throws IOException
	 *             Signals that an I/O exception has occurred.
	 */
	@Test
	public void testCookiesAreCapturedWhenRequested() throws IOException {
		proxy.setCaptureContent(true);
		proxy.newHar("Test");

		BasicClientCookie cookie = new BasicClientCookie("foo", "bar");
		cookie.setDomain("127.0.0.1");
		cookie.setPath("/");
		client.getCookieStore().addCookie(cookie);

		// set the cookie on the server side
		String body = IOUtils.readFully(client
				.execute(new HttpGet("http://127.0.0.1:8080/echo/"))
				.getEntity().getContent());
		System.out.println(body);

		Har har = proxy.getHar();
		HarEntry entry = har.getLog().getEntries().get(0);
		HarCookie harCookie = entry.getRequest().getCookies().get(0);
		Assert.assertEquals("foo", harCookie.getName());
		Assert.assertEquals("bar", harCookie.getValue());
	}

}
