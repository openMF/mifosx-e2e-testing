// ========================================================================
// $Id: HashUserRealm.java,v 1.29 2005/08/13 00:01:24 gregwilkins Exp $
// Copyright 1996-2004 Mort Bay Consulting Pty. Ltd.
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
import org.browsermob.proxy.jetty.util.Password;
import org.browsermob.proxy.jetty.util.Resource;

import java.io.Externalizable;
import java.io.IOException;
import java.io.PrintStream;
import java.security.Principal;
import java.util.*;

// TODO: Auto-generated Javadoc
/* ------------------------------------------------------------ */
/**
 * HashMapped User Realm.
 * 
 * An implementation of UserRealm that stores users and roles in-memory in
 * HashMaps.
 * <P>
 * Typically these maps are populated by calling the load() method or passing a
 * properties resource to the constructor. The format of the properties file is:
 * 
 * <PRE>
 *  username: password [,rolename ...]
 * </PRE>
 * 
 * Passwords may be clear text, obfuscated or checksummed. The class
 * com.mortbay.Util.Password should be used to generate obfuscated passwords or
 * password checksums.
 * 
 * If DIGEST Authentication is used, the password must be in a recoverable
 * format, either plain text or OBF:.
 * 
 * The HashUserRealm also implements SSORealm but provides no implementation of
 * SSORealm. Instead setSSORealm may be used to provide a delegate SSORealm
 * implementation.
 * 
 * @see Password
 * @version $Id: HashUserRealm.java,v 1.29 2005/08/13 00:01:24 gregwilkins Exp $
 * @author Greg Wilkins (gregw)
 */
public class HashUserRealm extends HashMap implements UserRealm, SSORealm,
		Externalizable {

	/** The log. */
	private static Log log = LogFactory.getLog(HashUserRealm.class);

	/**
	 * HttpContext Attribute to set to activate SSO.
	 */
	public static final String __SSO = "org.browsermob.proxy.jetty.http.SSO";

	/* ------------------------------------------------------------ */
	/** The _realm name. */
	private String _realmName;

	/** The _config. */
	private String _config;

	/** The _roles. */
	protected HashMap _roles = new HashMap(7);

	/** The _sso realm. */
	private SSORealm _ssoRealm;

	/* ------------------------------------------------------------ */
	/**
	 * Constructor.
	 */
	public HashUserRealm() {
	}

	/* ------------------------------------------------------------ */
	/**
	 * Constructor.
	 * 
	 * @param name
	 *            Realm Name
	 */
	public HashUserRealm(String name) {
		_realmName = name;
	}

	/* ------------------------------------------------------------ */
	/**
	 * Constructor.
	 * 
	 * @param name
	 *            Realm name
	 * @param config
	 *            Filename or url of user properties file.
	 * @throws IOException
	 *             Signals that an I/O exception has occurred.
	 */
	public HashUserRealm(String name, String config) throws IOException {
		_realmName = name;
		load(config);
	}

	/* ------------------------------------------------------------ */
	/*
	 * (non-Javadoc)
	 * 
	 * @see java.io.Externalizable#writeExternal(java.io.ObjectOutput)
	 */
	public void writeExternal(java.io.ObjectOutput out)
			throws java.io.IOException {
		out.writeObject(_realmName);
		out.writeObject(_config);
	}

	/* ------------------------------------------------------------ */
	/*
	 * (non-Javadoc)
	 * 
	 * @see java.io.Externalizable#readExternal(java.io.ObjectInput)
	 */
	public void readExternal(java.io.ObjectInput in)
			throws java.io.IOException, ClassNotFoundException {
		_realmName = (String) in.readObject();
		_config = (String) in.readObject();
		if (_config != null)
			load(_config);
	}

	/* ------------------------------------------------------------ */
	/**
	 * Load realm users from properties file. The property file maps usernames
	 * to password specs followed by an optional comma separated list of role
	 * names.
	 * 
	 * @param config
	 *            Filename or url of user properties file.
	 * @throws IOException
	 *             Signals that an I/O exception has occurred.
	 */
	public void load(String config) throws IOException {
		_config = config;
		if (log.isDebugEnabled())
			log.debug("Load " + this + " from " + config);
		Properties properties = new Properties();
		Resource resource = Resource.newResource(config);
		properties.load(resource.getInputStream());

		Iterator iter = properties.entrySet().iterator();
		while (iter.hasNext()) {
			Map.Entry entry = (Map.Entry) iter.next();

			String username = entry.getKey().toString().trim();
			String credentials = entry.getValue().toString().trim();
			String roles = null;
			int c = credentials.indexOf(',');
			if (c > 0) {
				roles = credentials.substring(c + 1).trim();
				credentials = credentials.substring(0, c).trim();
			}

			if (username != null && username.length() > 0
					&& credentials != null && credentials.length() > 0) {
				put(username, credentials);
				if (roles != null && roles.length() > 0) {
					StringTokenizer tok = new StringTokenizer(roles, ", ");
					while (tok.hasMoreTokens())
						addUserToRole(username, tok.nextToken());
				}
			}
		}
	}

	/* ------------------------------------------------------------ */
	/**
	 * Sets the name.
	 * 
	 * @param name
	 *            The realm name
	 */
	public void setName(String name) {
		_realmName = name;
	}

	/* ------------------------------------------------------------ */
	/**
	 * Gets the name.
	 * 
	 * @return The realm name.
	 */
	public String getName() {
		return _realmName;
	}

	/* ------------------------------------------------------------ */
	/*
	 * (non-Javadoc)
	 * 
	 * @see
	 * org.browsermob.proxy.jetty.http.UserRealm#getPrincipal(java.lang.String)
	 */
	public Principal getPrincipal(String username) {
		return (Principal) super.get(username);
	}

	/* ------------------------------------------------------------ */
	/*
	 * (non-Javadoc)
	 * 
	 * @see
	 * org.browsermob.proxy.jetty.http.UserRealm#authenticate(java.lang.String,
	 * java.lang.Object, org.browsermob.proxy.jetty.http.HttpRequest)
	 */
	public Principal authenticate(String username, Object credentials,
			HttpRequest request) {
		KnownUser user;
		synchronized (this) {
			user = (KnownUser) super.get(username);
		}
		if (user == null)
			return null;

		if (user.authenticate(credentials))
			return user;

		return null;
	}

	/* ------------------------------------------------------------ */
	/*
	 * (non-Javadoc)
	 * 
	 * @see
	 * org.browsermob.proxy.jetty.http.UserRealm#disassociate(java.security.
	 * Principal)
	 */
	public void disassociate(Principal user) {
	}

	/* ------------------------------------------------------------ */
	/*
	 * (non-Javadoc)
	 * 
	 * @see
	 * org.browsermob.proxy.jetty.http.UserRealm#pushRole(java.security.Principal
	 * , java.lang.String)
	 */
	public Principal pushRole(Principal user, String role) {
		if (user == null)
			user = new User();

		return new WrappedUser(user, role);
	}

	/* ------------------------------------------------------------ */
	/*
	 * (non-Javadoc)
	 * 
	 * @see
	 * org.browsermob.proxy.jetty.http.UserRealm#popRole(java.security.Principal
	 * )
	 */
	public Principal popRole(Principal user) {
		WrappedUser wu = (WrappedUser) user;
		return wu.getUserPrincipal();
	}

	/* ------------------------------------------------------------ */
	/**
	 * Put user into realm.
	 * 
	 * @param name
	 *            User name
	 * @param credentials
	 *            String password, Password or UserPrinciple instance.
	 * @return Old UserPrinciple value or null
	 */
	public synchronized Object put(Object name, Object credentials) {
		if (credentials instanceof Principal)
			return super.put(name.toString(), credentials);

		if (credentials instanceof Password)
			return super.put(name, new KnownUser(name.toString(),
					(Password) credentials));
		if (credentials != null)
			return super.put(
					name,
					new KnownUser(name.toString(), Credential
							.getCredential(credentials.toString())));
		return null;
	}

	/* ------------------------------------------------------------ */
	/**
	 * Add a user to a role.
	 * 
	 * @param userName
	 *            the user name
	 * @param roleName
	 *            the role name
	 */
	public synchronized void addUserToRole(String userName, String roleName) {
		HashSet userSet = (HashSet) _roles.get(roleName);
		if (userSet == null) {
			userSet = new HashSet(11);
			_roles.put(roleName, userSet);
		}
		userSet.add(userName);
	}

	/* -------------------------------------------------------- */
	/*
	 * (non-Javadoc)
	 * 
	 * @see
	 * org.browsermob.proxy.jetty.http.UserRealm#reauthenticate(java.security
	 * .Principal)
	 */
	public boolean reauthenticate(Principal user) {
		return ((User) user).isAuthenticated();
	}

	/* ------------------------------------------------------------ */
	/**
	 * Check if a user is in a role.
	 * 
	 * @param user
	 *            The user, which must be from this realm
	 * @param roleName
	 *            the role name
	 * @return True if the user can act in the role.
	 */
	public synchronized boolean isUserInRole(Principal user, String roleName) {
		if (user instanceof WrappedUser)
			return ((WrappedUser) user).isUserInRole(roleName);

		if (user == null || ((User) user).getUserRealm() != this)
			return false;

		HashSet userSet = (HashSet) _roles.get(roleName);
		return userSet != null && userSet.contains(user.getName());
	}

	/* ------------------------------------------------------------ */
	/*
	 * (non-Javadoc)
	 * 
	 * @see
	 * org.browsermob.proxy.jetty.http.UserRealm#logout(java.security.Principal)
	 */
	public void logout(Principal user) {
	}

	/* ------------------------------------------------------------ */
	/*
	 * (non-Javadoc)
	 * 
	 * @see java.util.AbstractMap#toString()
	 */
	public String toString() {
		return "Realm[" + _realmName + "]";
	}

	/* ------------------------------------------------------------ */
	/**
	 * Dump.
	 * 
	 * @param out
	 *            the out
	 */
	public void dump(PrintStream out) {
		out.println(this + ":");
		out.println(super.toString());
		out.println(_roles);
	}

	/* ------------------------------------------------------------ */
	/**
	 * Gets the sSO realm.
	 * 
	 * @return The SSORealm to delegate single sign on requests to.
	 */
	public SSORealm getSSORealm() {
		return _ssoRealm;
	}

	/* ------------------------------------------------------------ */
	/**
	 * Set the SSORealm. A SSORealm implementation may be set to enable support
	 * for SSO.
	 * 
	 * @param ssoRealm
	 *            The SSORealm to delegate single sign on requests to.
	 */
	public void setSSORealm(SSORealm ssoRealm) {
		_ssoRealm = ssoRealm;
	}

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
		if (_ssoRealm != null)
			return _ssoRealm.getSingleSignOn(request, response);
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
		if (_ssoRealm != null)
			_ssoRealm.setSingleSignOn(request, response, principal, credential);
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
		if (_ssoRealm != null)
			_ssoRealm.clearSingleSignOn(username);
	}

	/* ------------------------------------------------------------ */
	/* ------------------------------------------------------------ */
	/* ------------------------------------------------------------ */
	/**
	 * The Class User.
	 */
	private class User implements Principal {

		/** The roles. */
		List roles = null;

		/* ------------------------------------------------------------ */
		/**
		 * Gets the user realm.
		 * 
		 * @return the user realm
		 */
		private UserRealm getUserRealm() {
			return HashUserRealm.this;
		}

		/*
		 * (non-Javadoc)
		 * 
		 * @see java.security.Principal#getName()
		 */
		public String getName() {
			return "Anonymous";
		}

		/**
		 * Checks if is authenticated.
		 * 
		 * @return true, if is authenticated
		 */
		public boolean isAuthenticated() {
			return false;
		}

		/*
		 * (non-Javadoc)
		 * 
		 * @see java.lang.Object#toString()
		 */
		public String toString() {
			return getName();
		}
	}

	/* ------------------------------------------------------------ */
	/* ------------------------------------------------------------ */
	/* ------------------------------------------------------------ */
	/**
	 * The Class KnownUser.
	 */
	private class KnownUser extends User {

		/** The _user name. */
		private String _userName;

		/** The _cred. */
		private Credential _cred;

		/* -------------------------------------------------------- */
		/**
		 * Instantiates a new known user.
		 * 
		 * @param name
		 *            the name
		 * @param credential
		 *            the credential
		 */
		KnownUser(String name, Credential credential) {
			_userName = name;
			_cred = credential;
		}

		/* -------------------------------------------------------- */
		/**
		 * Authenticate.
		 * 
		 * @param credentials
		 *            the credentials
		 * @return true, if successful
		 */
		boolean authenticate(Object credentials) {
			return _cred != null && _cred.check(credentials);
		}

		/* ------------------------------------------------------------ */
		/*
		 * (non-Javadoc)
		 * 
		 * @see org.browsermob.proxy.jetty.http.HashUserRealm.User#getName()
		 */
		public String getName() {
			return _userName;
		}

		/* -------------------------------------------------------- */
		/*
		 * (non-Javadoc)
		 * 
		 * @see
		 * org.browsermob.proxy.jetty.http.HashUserRealm.User#isAuthenticated()
		 */
		public boolean isAuthenticated() {
			return true;
		}
	}

	/* ------------------------------------------------------------ */
	/* ------------------------------------------------------------ */
	/* ------------------------------------------------------------ */
	/**
	 * The Class WrappedUser.
	 */
	private class WrappedUser extends User {

		/** The user. */
		private Principal user;

		/** The role. */
		private String role;

		/**
		 * Instantiates a new wrapped user.
		 * 
		 * @param user
		 *            the user
		 * @param role
		 *            the role
		 */
		WrappedUser(Principal user, String role) {
			this.user = user;
			this.role = role;
		}

		/**
		 * Gets the user principal.
		 * 
		 * @return the user principal
		 */
		Principal getUserPrincipal() {
			return user;
		}

		/*
		 * (non-Javadoc)
		 * 
		 * @see org.browsermob.proxy.jetty.http.HashUserRealm.User#getName()
		 */
		public String getName() {
			return "role:" + role;
		}

		/*
		 * (non-Javadoc)
		 * 
		 * @see
		 * org.browsermob.proxy.jetty.http.HashUserRealm.User#isAuthenticated()
		 */
		public boolean isAuthenticated() {
			return true;
		}

		/**
		 * Checks if is user in role.
		 * 
		 * @param role
		 *            the role
		 * @return true, if is user in role
		 */
		public boolean isUserInRole(String role) {
			return this.role.equals(role);
		}
	}
}
