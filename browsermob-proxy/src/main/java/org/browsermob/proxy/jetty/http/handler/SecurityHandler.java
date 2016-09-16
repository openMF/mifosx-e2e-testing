// ========================================================================
// $Id: SecurityHandler.java,v 1.32 2005/08/13 00:01:26 gregwilkins Exp $
// Copyright 199-2004 Mort Bay Consulting Pty. Ltd.
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

package org.browsermob.proxy.jetty.http.handler;

import org.apache.commons.logging.Log;
import org.browsermob.proxy.jetty.http.*;
import org.browsermob.proxy.jetty.log.LogFactory;

import java.io.IOException;

// TODO: Auto-generated Javadoc
/* ------------------------------------------------------------ */
/**
 * Handler to enforce SecurityConstraints.
 * 
 * @version $Id: SecurityHandler.java,v 1.32 2005/08/13 00:01:26 gregwilkins Exp
 *          $
 * @author Greg Wilkins (gregw)
 */
public class SecurityHandler extends AbstractHttpHandler {

	/** The log. */
	private static Log log = LogFactory.getLog(SecurityHandler.class);

	/* ------------------------------------------------------------ */
	/** The _auth method. */
	private String _authMethod = SecurityConstraint.__BASIC_AUTH;

	/* ------------------------------------------------------------ */
	/**
	 * Gets the auth method.
	 * 
	 * @return the auth method
	 */
	public String getAuthMethod() {
		return _authMethod;
	}

	/* ------------------------------------------------------------ */
	/**
	 * Sets the auth method.
	 * 
	 * @param method
	 *            the new auth method
	 */
	public void setAuthMethod(String method) {
		if (isStarted() && _authMethod != null && !_authMethod.equals(method))
			throw new IllegalStateException("Handler started");
		_authMethod = method;
	}

	/* ------------------------------------------------------------ */
	/*
	 * (non-Javadoc)
	 * 
	 * @see org.browsermob.proxy.jetty.http.handler.AbstractHttpHandler#start()
	 */
	public void start() throws Exception {
		if (getHttpContext().getAuthenticator() == null) {
			// Find out the Authenticator.
			if (SecurityConstraint.__BASIC_AUTH.equalsIgnoreCase(_authMethod))
				getHttpContext().setAuthenticator(new BasicAuthenticator());
			else if (SecurityConstraint.__CERT_AUTH
					.equalsIgnoreCase(_authMethod))
				getHttpContext()
						.setAuthenticator(new ClientCertAuthenticator());
			else
				log.warn("Unknown Authentication method:" + _authMethod);
		}

		super.start();
	}

	/* ------------------------------------------------------------ */
	/*
	 * (non-Javadoc)
	 * 
	 * @see org.browsermob.proxy.jetty.http.HttpHandler#handle(java.lang.String,
	 * java.lang.String, org.browsermob.proxy.jetty.http.HttpRequest,
	 * org.browsermob.proxy.jetty.http.HttpResponse)
	 */
	public void handle(String pathInContext, String pathParams,
			HttpRequest request, HttpResponse response) throws HttpException,
			IOException {
		getHttpContext().checkSecurityConstraints(pathInContext, request,
				response);
	}

}
