// ========================================================================
// $Id: HashSSORealm.java,v 1.6 2005/08/13 00:01:24 gregwilkins Exp $
// Copyright 2003-2004 Mort Bay Consulting Pty. Ltd.
// ------------------------------------------------------------------------
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at 
// http://www.apache.org/licenses/LICENSE-2.0
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.
// ========================================================================

package org.browsermob.proxy.jetty.http;

import org.apache.commons.logging.Log;
import org.browsermob.proxy.jetty.log.LogFactory;
import org.browsermob.proxy.jetty.util.Credential;

import javax.servlet.http.Cookie;
import java.security.Principal;
import java.security.SecureRandom;
import java.util.HashMap;
import java.util.Random;

// TODO: Auto-generated Javadoc
/**
 * The Class HashSSORealm.
 */
public class HashSSORealm implements SSORealm {

	/** The log. */
	private static Log log = LogFactory.getLog(HashSSORealm.class);

	/* ------------------------------------------------------------ */
	/** The Constant SSO_COOKIE_NAME. */
	public static final String SSO_COOKIE_NAME = "SSO_ID";

	/** The _sso id2 principal. */
	private HashMap _ssoId2Principal = new HashMap();

	/** The _sso username2 id. */
	private HashMap _ssoUsername2Id = new HashMap();

	/** The _sso principal2 credential. */
	private HashMap _ssoPrincipal2Credential = new HashMap();

	/** The _random. */
	private transient Random _random = new SecureRandom();

	/* ------------------------------------------------------------ */
	/*
	 * (non-Javadoc)
	 * 
	 * @see
	 * org.browsermob.proxy.jetty.http.SSORealm#getSingleSignOn(org.browsermob
	 * .proxy.jetty.http.HttpRequest,
	 * org.browsermob.proxy.jetty.http.HttpResponse)
	 */
	public Credential getSingleSignOn(HttpRequest request, HttpResponse response) {
		String ssoID = null;
		Cookie[] cookies = request.getCookies();
		for (int i = 0; i < cookies.length; i++) {
			if (cookies[i].getName().equals(SSO_COOKIE_NAME)) {
				ssoID = cookies[i].getValue();
				break;
			}
		}
		if (log.isDebugEnabled())
			log.debug("get ssoID=" + ssoID);

		Principal principal = null;
		Credential credential = null;
		synchronized (_ssoId2Principal) {
			principal = (Principal) _ssoId2Principal.get(ssoID);
			credential = (Credential) _ssoPrincipal2Credential.get(principal);
		}

		if (log.isDebugEnabled())
			log.debug("SSO principal=" + principal);

		if (principal != null && credential != null) {
			if (response.getHttpContext().getRealm().reauthenticate(principal)) {
				request.setUserPrincipal(principal);
				request.setAuthUser(principal.getName());
				return credential;
			} else {
				synchronized (_ssoId2Principal) {
					_ssoId2Principal.remove(ssoID);
					_ssoPrincipal2Credential.remove(principal);
					_ssoUsername2Id.remove(principal.getName());
				}
			}
		}
		return null;
	}

	/* ------------------------------------------------------------ */
	/*
	 * (non-Javadoc)
	 * 
	 * @see
	 * org.browsermob.proxy.jetty.http.SSORealm#setSingleSignOn(org.browsermob
	 * .proxy.jetty.http.HttpRequest,
	 * org.browsermob.proxy.jetty.http.HttpResponse, java.security.Principal,
	 * org.browsermob.proxy.jetty.util.Credential)
	 */
	public void setSingleSignOn(HttpRequest request, HttpResponse response,
			Principal principal, Credential credential) {

		String ssoID = null;

		synchronized (_ssoId2Principal) {
			// Create new SSO ID
			while (true) {
				ssoID = Long.toString(Math.abs(_random.nextLong()),
						30 + (int) (System.currentTimeMillis() % 7));
				if (!_ssoId2Principal.containsKey(ssoID))
					break;
			}

			if (log.isDebugEnabled())
				log.debug("set ssoID=" + ssoID);
			_ssoId2Principal.put(ssoID, principal);
			_ssoPrincipal2Credential.put(principal, credential);
			_ssoUsername2Id.put(principal.getName(), ssoID);
		}

		Cookie cookie = new Cookie(SSO_COOKIE_NAME, ssoID);
		cookie.setPath("/");
		response.addSetCookie(cookie);
	}

	/* ------------------------------------------------------------ */
	/*
	 * (non-Javadoc)
	 * 
	 * @see
	 * org.browsermob.proxy.jetty.http.SSORealm#clearSingleSignOn(java.lang.
	 * String)
	 */
	public void clearSingleSignOn(String username) {
		synchronized (_ssoId2Principal) {
			Object ssoID = _ssoUsername2Id.remove(username);
			Object principal = _ssoId2Principal.remove(ssoID);
			_ssoPrincipal2Credential.remove(principal);
		}
	}
}
