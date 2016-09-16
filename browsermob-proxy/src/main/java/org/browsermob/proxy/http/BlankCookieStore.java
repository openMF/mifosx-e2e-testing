/*
 * 
 */
package org.browsermob.proxy.http;

import org.apache.http.client.CookieStore;
import org.apache.http.cookie.Cookie;
import org.browsermob.core.har.HarCookie;

import java.util.Collections;
import java.util.Date;
import java.util.List;

// TODO: Auto-generated Javadoc
/**
 * The Class BlankCookieStore.
 */
public class BlankCookieStore implements CookieStore {

	/*
	 * (non-Javadoc)
	 * 
	 * @see
	 * org.apache.http.client.CookieStore#addCookie(org.apache.http.cookie.Cookie
	 * )
	 */
	@Override
	public void addCookie(Cookie cookie) {
		HarCookie hc = new HarCookie();
		hc.setDomain(cookie.getDomain());
		hc.setExpires(cookie.getExpiryDate());
		hc.setName(cookie.getName());
		hc.setValue(cookie.getValue());
		hc.setPath(cookie.getPath());
		RequestInfo.get().getEntry().getResponse().getCookies().add(hc);
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see org.apache.http.client.CookieStore#getCookies()
	 */
	@Override
	public List<Cookie> getCookies() {
		return Collections.emptyList();
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see org.apache.http.client.CookieStore#clearExpired(java.util.Date)
	 */
	@Override
	public boolean clearExpired(Date date) {
		return false;
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see org.apache.http.client.CookieStore#clear()
	 */
	@Override
	public void clear() {
	}
}
