/*
 * 
 */
package org.browsermob.proxy.http;

import org.apache.http.Header;
import org.apache.http.HttpRequest;
import org.browsermob.core.har.HarCookie;
import org.browsermob.core.har.HarNameValuePair;

import java.util.List;

import static com.google.common.collect.Lists.newLinkedList;

// TODO: Auto-generated Javadoc
/**
 * A very basic cookie parser.
 * 
 * @author dgomez
 */
public class CookieHeadersParser {

	/**
	 * Gets the cookies.
	 * 
	 * @param request
	 *            the request
	 * @return the cookies
	 */
	public List<HarCookie> getCookies(HttpRequest request) {
		List<HarCookie> cookies = newLinkedList();
		for (Header hdr : request.getHeaders("Cookie")) {
			String[] pairs = hdr.getValue().split("; ");
			for (String p : pairs) {
				HarNameValuePair pair = nameValuePair(p);
				HarCookie cookie = new HarCookie();
				cookie.setName(pair.getName());
				cookie.setValue(pair.getValue());
				cookies.add(cookie);
			}
		}
		return cookies;
	}

	/**
	 * Name value pair.
	 * 
	 * @param data
	 *            the data
	 * @return the har name value pair
	 */
	private HarNameValuePair nameValuePair(String data) {
		int eqIdx = data.indexOf("=");
		if (eqIdx > 0) {
			String name = data.substring(0, eqIdx);
			String val = data.substring(eqIdx + 1);
			return new HarNameValuePair(name, val);
		} else
			return new HarNameValuePair(data, "");
	}

}