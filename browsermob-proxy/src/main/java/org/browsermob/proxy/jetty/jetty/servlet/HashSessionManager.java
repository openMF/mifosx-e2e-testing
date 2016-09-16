// ========================================================================
// $Id: HashSessionManager.java,v 1.16 2004/05/09 20:32:27 gregwilkins Exp $
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

package org.browsermob.proxy.jetty.jetty.servlet;

import javax.servlet.http.HttpServletRequest;
import java.util.HashMap;
import java.util.Map;
import java.util.Random;

// TODO: Auto-generated Javadoc
/* ------------------------------------------------------------ */
/**
 * An in-memory implementation of SessionManager.
 * 
 * @version $Id: HashSessionManager.java,v 1.16 2004/05/09 20:32:27 gregwilkins
 *          Exp $
 * @author Greg Wilkins (gregw)
 */
public class HashSessionManager extends AbstractSessionManager {
	/* ------------------------------------------------------------ */
	/**
	 * Instantiates a new hash session manager.
	 */
	public HashSessionManager() {
		super();
	}

	/* ------------------------------------------------------------ */
	/**
	 * Instantiates a new hash session manager.
	 * 
	 * @param random
	 *            the random
	 */
	public HashSessionManager(Random random) {
		super(random);
	}

	/* ------------------------------------------------------------ */
	/*
	 * (non-Javadoc)
	 * 
	 * @see
	 * org.browsermob.proxy.jetty.jetty.servlet.AbstractSessionManager#newSession
	 * (javax.servlet.http.HttpServletRequest)
	 */
	protected AbstractSessionManager.Session newSession(
			HttpServletRequest request) {
		return new Session(request);
	}

	/* ------------------------------------------------------------ */
	/* ------------------------------------------------------------ */
	/* ------------------------------------------------------------ */
	/**
	 * The Class Session.
	 */
	protected class Session extends AbstractSessionManager.Session {
		/* ------------------------------------------------------------- */
		/**
		 * Instantiates a new session.
		 * 
		 * @param request
		 *            the request
		 */
		protected Session(HttpServletRequest request) {
			super(request);
		}

		/* ------------------------------------------------------------ */
		/*
		 * (non-Javadoc)
		 * 
		 * @see
		 * org.browsermob.proxy.jetty.jetty.servlet.AbstractSessionManager.Session
		 * #newAttributeMap()
		 */
		protected Map newAttributeMap() {
			return new HashMap(3);
		}
	}

}
