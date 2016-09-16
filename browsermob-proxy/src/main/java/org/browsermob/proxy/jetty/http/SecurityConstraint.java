// ========================================================================
// $Id: SecurityConstraint.java,v 1.44 2005/08/13 00:01:24 gregwilkins Exp $
// Copyright 200-2004 Mort Bay Consulting Pty. Ltd.
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
import org.browsermob.proxy.jetty.jetty.servlet.FormAuthenticator;
import org.browsermob.proxy.jetty.log.LogFactory;
import org.browsermob.proxy.jetty.util.LazyList;

import java.io.IOException;
import java.io.Serializable;
import java.security.Principal;
import java.util.Collections;
import java.util.List;

// TODO: Auto-generated Javadoc
/* ------------------------------------------------------------ */
/**
 * Describe an auth and/or data constraint.
 * 
 * @version $Revision: 1.44 $
 * @author Greg Wilkins (gregw)
 */
public class SecurityConstraint implements Cloneable, Serializable {

	/** The log. */
	private static Log log = LogFactory.getLog(SecurityConstraint.class);

	/* ------------------------------------------------------------ */
	/** The Constant __BASIC_AUTH. */
	public final static String __BASIC_AUTH = "BASIC";

	/** The Constant __FORM_AUTH. */
	public final static String __FORM_AUTH = "FORM";

	/** The Constant __DIGEST_AUTH. */
	public final static String __DIGEST_AUTH = "DIGEST";

	/** The Constant __CERT_AUTH. */
	public final static String __CERT_AUTH = "CLIENT_CERT";

	/** The Constant __CERT_AUTH2. */
	public final static String __CERT_AUTH2 = "CLIENT-CERT";

	/* ------------------------------------------------------------ */
	/** The Constant DC_CONFIDENTIAL. */
	public final static int DC_UNSET = -1, DC_NONE = 0, DC_INTEGRAL = 1,
			DC_CONFIDENTIAL = 2;

	/* ------------------------------------------------------------ */
	/** The Constant NONE. */
	public final static String NONE = "NONE";

	/** The Constant ANY_ROLE. */
	public final static String ANY_ROLE = "*";

	/* ------------------------------------------------------------ */
	/* ------------------------------------------------------------ */
	/* ------------------------------------------------------------ */
	/**
	 * Nobody user. The Nobody UserPrincipal is used to indicate a partial state
	 * of authentication. A request with a Nobody UserPrincipal will be allowed
	 * past all authentication constraints - but will not be considered an
	 * authenticated request. It can be used by Authenticators such as
	 * FormAuthenticator to allow access to logon and error pages within an
	 * authenticated URI tree.
	 */
	public static class Nobody implements Principal

	{

		/*
		 * (non-Javadoc)
		 * 
		 * @see java.security.Principal#getName()
		 */
		public String getName() {
			return "Nobody";
		}
	}

	/** The Constant __NOBODY. */
	public final static Nobody __NOBODY = new Nobody();

	/* ------------------------------------------------------------ */
	/** The _name. */
	private String _name;

	/** The _methods. */
	private Object _methods;

	/** The _roles. */
	private Object _roles;

	/** The _data constraint. */
	private int _dataConstraint = DC_UNSET;

	/** The _any role. */
	private boolean _anyRole = false;

	/** The _authenticate. */
	private boolean _authenticate = false;

	/** The _um methods. */
	private transient List _umMethods;

	/** The _um roles. */
	private transient List _umRoles;

	/* ------------------------------------------------------------ */
	/**
	 * Constructor.
	 */
	public SecurityConstraint() {
	}

	/* ------------------------------------------------------------ */
	/**
	 * Conveniance Constructor.
	 * 
	 * @param name
	 *            the name
	 * @param role
	 *            the role
	 */
	public SecurityConstraint(String name, String role) {
		setName(name);
		addRole(role);
	}

	/* ------------------------------------------------------------ */
	/**
	 * Sets the name.
	 * 
	 * @param name
	 *            the new name
	 */
	public void setName(String name) {
		_name = name;
	}

	/* ------------------------------------------------------------ */
	/**
	 * Adds the method.
	 * 
	 * @param method
	 *            the method
	 */
	public synchronized void addMethod(String method) {
		_methods = LazyList.add(_methods, method);
	}

	/* ------------------------------------------------------------ */
	/**
	 * Gets the methods.
	 * 
	 * @return the methods
	 */
	public List getMethods() {
		if (_umMethods == null && _methods != null)
			_umMethods = Collections.unmodifiableList(LazyList
					.getList(_methods));
		return _umMethods;
	}

	/* ------------------------------------------------------------ */
	/**
	 * For method.
	 * 
	 * @param method
	 *            Method name.
	 * @return True if this constraint applies to the method. If no method has
	 *         been set, then the constraint applies to all methods.
	 */
	public boolean forMethod(String method) {
		if (_methods == null)
			return true;
		for (int i = 0; i < LazyList.size(_methods); i++)
			if (LazyList.get(_methods, i).equals(method))
				return true;
		return false;
	}

	/* ------------------------------------------------------------ */
	/**
	 * Adds the role.
	 * 
	 * @param role
	 *            The rolename. If the rolename is '*' all other roles are
	 *            removed and anyRole is set true and subsequent addRole calls
	 *            are ignored. Authenticate is forced true by this call.
	 */
	public synchronized void addRole(String role) {
		_authenticate = true;
		if (ANY_ROLE.equals(role)) {
			_roles = null;
			_umRoles = null;
			_anyRole = true;
		} else if (!_anyRole)
			_roles = LazyList.add(_roles, role);
	}

	/* ------------------------------------------------------------ */
	/**
	 * Checks if is any role.
	 * 
	 * @return True if any user role is permitted.
	 */
	public boolean isAnyRole() {
		return _anyRole;
	}

	/* ------------------------------------------------------------ */
	/**
	 * Gets the roles.
	 * 
	 * @return List of roles for this constraint.
	 */
	public List getRoles() {
		if (_umRoles == null && _roles != null)
			_umRoles = Collections.unmodifiableList(LazyList.getList(_roles));
		return _umRoles;
	}

	/* ------------------------------------------------------------ */
	/**
	 * Checks for role.
	 * 
	 * @param role
	 *            the role
	 * @return True if the constraint contains the role.
	 */
	public boolean hasRole(String role) {
		return LazyList.contains(_roles, role);
	}

	/* ------------------------------------------------------------ */
	/**
	 * Sets the authenticate.
	 * 
	 * @param authenticate
	 *            True if users must be authenticated
	 */
	public void setAuthenticate(boolean authenticate) {
		_authenticate = authenticate;
	}

	/* ------------------------------------------------------------ */
	/**
	 * Gets the authenticate.
	 * 
	 * @return True if the constraint requires request authentication
	 */
	public boolean getAuthenticate() {
		return _authenticate;
	}

	/* ------------------------------------------------------------ */
	/**
	 * Checks if is forbidden.
	 * 
	 * @return True if authentication required but no roles set
	 */
	public boolean isForbidden() {
		return _authenticate && !_anyRole && LazyList.size(_roles) == 0;
	}

	/* ------------------------------------------------------------ */
	/**
	 * Sets the data constraint.
	 * 
	 * @param c
	 *            the new data constraint
	 */
	public void setDataConstraint(int c) {
		if (c < 0 || c > DC_CONFIDENTIAL)
			throw new IllegalArgumentException("Constraint out of range");
		_dataConstraint = c;
	}

	/* ------------------------------------------------------------ */
	/**
	 * Gets the data constraint.
	 * 
	 * @return Data constrain indicator: 0=DC+NONE, 1=DC_INTEGRAL &
	 *         2=DC_CONFIDENTIAL
	 */
	public int getDataConstraint() {
		return _dataConstraint;
	}

	/* ------------------------------------------------------------ */
	/**
	 * Checks for data constraint.
	 * 
	 * @return True if a data constraint has been set.
	 */
	public boolean hasDataConstraint() {
		return _dataConstraint >= DC_NONE;
	}

	/* ------------------------------------------------------------ */
	/*
	 * (non-Javadoc)
	 * 
	 * @see java.lang.Object#clone()
	 */
	public Object clone() throws CloneNotSupportedException {
		SecurityConstraint sc = (SecurityConstraint) super.clone();
		sc._umMethods = null;
		sc._umRoles = null;
		return sc;
	}

	/* ------------------------------------------------------------ */
	/*
	 * (non-Javadoc)
	 * 
	 * @see java.lang.Object#toString()
	 */
	public String toString() {
		return "SC{"
				+ _name
				+ ","
				+ _methods
				+ ","
				+ (_anyRole ? "*" : (_roles == null ? "-" : _roles.toString()))
				+ ","
				+ (_dataConstraint == DC_NONE ? "NONE}"
						: (_dataConstraint == DC_INTEGRAL ? "INTEGRAL}"
								: "CONFIDENTIAL}"));
	}

	/* ------------------------------------------------------------ */
	/**
	 * Check security contraints.
	 * 
	 * @param constraints
	 *            the constraints
	 * @param authenticator
	 *            the authenticator
	 * @param realm
	 *            the realm
	 * @param pathInContext
	 *            the path in context
	 * @param request
	 *            the request
	 * @param response
	 *            the response
	 * @return false if the request has failed a security constraint or the
	 *         authenticator has already sent a response.
	 * @throws HttpException
	 *             the http exception
	 * @throws IOException
	 *             Signals that an I/O exception has occurred.
	 */
	public static boolean check(List constraints, Authenticator authenticator,
			UserRealm realm, String pathInContext, HttpRequest request,
			HttpResponse response) throws HttpException, IOException {
		// Combine data and auth constraints
		int dataConstraint = DC_NONE;
		Object roles = null;
		boolean unauthenticated = false;
		boolean forbidden = false;

		for (int c = 0; c < constraints.size(); c++) {
			SecurityConstraint sc = (SecurityConstraint) constraints.get(c);

			// Check the method applies
			if (!sc.forMethod(request.getMethod()))
				continue;

			// Combine data constraints.
			if (dataConstraint > DC_UNSET && sc.hasDataConstraint()) {
				if (sc.getDataConstraint() > dataConstraint)
					dataConstraint = sc.getDataConstraint();
			} else
				dataConstraint = DC_UNSET; // ignore all other data constraints

			// Combine auth constraints.
			if (!unauthenticated && !forbidden) {
				if (sc.getAuthenticate()) {
					if (sc.isAnyRole()) {
						roles = ANY_ROLE;
					} else {
						List scr = sc.getRoles();
						if (scr == null || scr.size() == 0) {
							forbidden = true;
							break;
						} else {
							if (roles != ANY_ROLE) {
								roles = LazyList.addCollection(roles, scr);
							}
						}
					}
				} else
					unauthenticated = true;
			}
		}

		// Does this forbid everything?
		if (forbidden
				&& (!(authenticator instanceof FormAuthenticator) || !((FormAuthenticator) authenticator)
						.isLoginOrErrorPage(pathInContext))) {
			HttpContext.sendContextError(response,
					HttpResponse.__403_Forbidden, null);
			return false;
		}

		// Handle data constraint
		if (dataConstraint > DC_NONE) {
			HttpConnection connection = request.getHttpConnection();
			HttpListener listener = connection.getListener();

			switch (dataConstraint) {
			case SecurityConstraint.DC_INTEGRAL:
				if (listener.isIntegral(connection))
					break;

				if (listener.getIntegralPort() > 0) {
					String url = listener.getIntegralScheme() + "://"
							+ request.getHost() + ":"
							+ listener.getIntegralPort() + request.getPath();
					if (request.getQuery() != null)
						url += "?" + request.getQuery();
					response.setContentLength(0);
					response.sendRedirect(url);
				} else
					HttpContext.sendContextError(response,
							HttpResponse.__403_Forbidden, null);
				return false;

			case SecurityConstraint.DC_CONFIDENTIAL:
				if (listener.isConfidential(connection))
					break;

				if (listener.getConfidentialPort() > 0) {
					String url = listener.getConfidentialScheme() + "://"
							+ request.getHost() + ":"
							+ listener.getConfidentialPort()
							+ request.getPath();
					if (request.getQuery() != null)
						url += "?" + request.getQuery();

					response.setContentLength(0);
					response.sendRedirect(url);
				} else
					HttpContext.sendContextError(response,
							HttpResponse.__403_Forbidden, null);
				return false;

			default:
				HttpContext.sendContextError(response,
						HttpResponse.__403_Forbidden, null);
				return false;
			}
		}

		// Does it fail a role check?
		if (!unauthenticated && roles != null) {
			if (realm == null) {
				HttpContext.sendContextError(response,
						HttpResponse.__500_Internal_Server_Error,
						"Configuration error");
				return false;
			}

			Principal user = null;

			// Handle pre-authenticated request
			if (request.getAuthType() != null && request.getAuthUser() != null) {
				// TODO - is this still needed???
				user = request.getUserPrincipal();
				if (user == null)
					user = realm.authenticate(request.getAuthUser(), null,
							request);
				if (user == null && authenticator != null)
					user = authenticator.authenticate(realm, pathInContext,
							request, response);
			} else if (authenticator != null) {
				// User authenticator.
				user = authenticator.authenticate(realm, pathInContext,
						request, response);
			} else {
				// don't know how authenticate
				log.warn("Mis-configured Authenticator for "
						+ request.getPath());
				HttpContext.sendContextError(response,
						HttpResponse.__500_Internal_Server_Error,
						"Configuration error");
			}

			// If we still did not get a user
			if (user == null)
				return false; // Auth challenge or redirection already sent
			else if (user == __NOBODY)
				return true; // The Nobody user indicates authentication in
								// transit.

			if (roles != ANY_ROLE) {
				boolean inRole = false;
				for (int r = LazyList.size(roles); r-- > 0;) {
					if (realm.isUserInRole(user,
							(String) LazyList.get(roles, r))) {
						inRole = true;
						break;
					}
				}

				if (!inRole) {
					log.warn("AUTH FAILURE: role for " + user.getName());
					if ("BASIC".equalsIgnoreCase(authenticator.getAuthMethod()))
						((BasicAuthenticator) authenticator).sendChallenge(
								realm, response);
					else
						HttpContext.sendContextError(response,
								HttpResponse.__403_Forbidden,
								"User not in required role");
					return false; // role failed.
				}
			}
		} else {
			request.setUserPrincipal(HttpRequest.__NOT_CHECKED);
		}

		return true;
	}

}
