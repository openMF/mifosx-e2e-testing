/*
 * 
 */
package org.browsermob.proxy.http;

import org.apache.http.conn.ssl.X509HostnameVerifier;

import javax.net.ssl.SSLException;
import javax.net.ssl.SSLSession;
import javax.net.ssl.SSLSocket;
import java.io.IOException;
import java.security.cert.X509Certificate;

// TODO: Auto-generated Javadoc
/**
 * Our own implementation of the AllowAllHostnameVerifier class. The one that
 * ships with HttpClient doesn't actually allow all host names. In particular,
 * it fails to work when an upstream proxy is present.
 * 
 * http://javaskeleton.blogspot.com/2010/07/avoiding-peer-not-authenticated-with
 * .html was a very helpful resource in tracking down SSL problems with
 * HttpClient.
 */
public class AllowAllHostnameVerifier implements X509HostnameVerifier {

	/*
	 * (non-Javadoc)
	 * 
	 * @see
	 * org.apache.http.conn.ssl.X509HostnameVerifier#verify(java.lang.String,
	 * javax.net.ssl.SSLSocket)
	 */
	@Override
	public void verify(String string, SSLSocket ssls) throws IOException {
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see
	 * org.apache.http.conn.ssl.X509HostnameVerifier#verify(java.lang.String,
	 * java.security.cert.X509Certificate)
	 */
	@Override
	public void verify(String string, X509Certificate xc) throws SSLException {
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see
	 * org.apache.http.conn.ssl.X509HostnameVerifier#verify(java.lang.String,
	 * java.lang.String[], java.lang.String[])
	 */
	@Override
	public void verify(String string, String[] strings, String[] strings1)
			throws SSLException {
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see javax.net.ssl.HostnameVerifier#verify(java.lang.String,
	 * javax.net.ssl.SSLSession)
	 */
	@Override
	public boolean verify(String string, SSLSession ssls) {
		return true;
	}
}
