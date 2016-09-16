// ========================================================================
// $Id: ServletHandlerMBean.java,v 1.8 2005/08/13 00:01:27 gregwilkins Exp $
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

package org.browsermob.proxy.jetty.jetty.servlet.jmx;

import org.apache.commons.logging.Log;
import org.browsermob.proxy.jetty.http.jmx.HttpHandlerMBean;
import org.browsermob.proxy.jetty.jetty.servlet.ServletHandler;
import org.browsermob.proxy.jetty.jetty.servlet.SessionManager;
import org.browsermob.proxy.jetty.log.LogFactory;

import javax.management.MBeanException;
import javax.management.ObjectName;
import java.util.HashMap;

// TODO: Auto-generated Javadoc
/* ------------------------------------------------------------ */
/**
 * The Class ServletHandlerMBean.
 * 
 * @version $Revision: 1.8 $
 * @author Greg Wilkins (gregw)
 */
public class ServletHandlerMBean extends HttpHandlerMBean {
	/* ------------------------------------------------------------ */
	/** The Constant log. */
	private static final Log log = LogFactory.getLog(ServletHandlerMBean.class);

	/** The _servlet handler. */
	private ServletHandler _servletHandler;

	/** The _servlet map. */
	private HashMap _servletMap = new HashMap();

	/* ------------------------------------------------------------ */
	/**
	 * Constructor.
	 * 
	 * @throws MBeanException
	 *             the m bean exception
	 */
	public ServletHandlerMBean() throws MBeanException {
	}

	/* ------------------------------------------------------------ */
	/*
	 * (non-Javadoc)
	 * 
	 * @see
	 * org.browsermob.proxy.jetty.http.jmx.HttpHandlerMBean#defineManagedResource
	 * ()
	 */
	protected void defineManagedResource() {
		super.defineManagedResource();
		defineAttribute("usingCookies");
		defineAttribute("servlets", READ_ONLY, ON_MBEAN);
		defineAttribute("sessionManager", READ_ONLY, ON_MBEAN);
		_servletHandler = (ServletHandler) getManagedResource();
	}

	/* ------------------------------------------------------------ */
	/**
	 * Gets the session manager.
	 * 
	 * @return the session manager
	 */
	public ObjectName getSessionManager() {
		SessionManager sm = _servletHandler.getSessionManager();
		if (sm == null)
			return null;
		ObjectName[] on = getComponentMBeans(new Object[] { sm }, null);
		return on[0];
	}

	/* ------------------------------------------------------------ */
	/**
	 * Gets the servlets.
	 * 
	 * @return the servlets
	 */
	public ObjectName[] getServlets() {
		return getComponentMBeans(_servletHandler.getServlets(), _servletMap);
	}

	/* ------------------------------------------------------------ */
	/*
	 * (non-Javadoc)
	 * 
	 * @see
	 * org.browsermob.proxy.jetty.util.jmx.ModelMBeanImpl#postRegister(java.
	 * lang.Boolean)
	 */
	public void postRegister(Boolean ok) {
		super.postRegister(ok);
		if (ok.booleanValue())
			getSessionManager();
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see org.browsermob.proxy.jetty.util.jmx.ModelMBeanImpl#postDeregister()
	 */
	public void postDeregister() {
		destroyComponentMBeans(_servletMap);
		super.postDeregister();
	}
}
