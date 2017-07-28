// ========================================================================
// $Id: HttpContextMBean.java,v 1.17 2005/08/13 00:01:26 gregwilkins Exp $
// Copyright 1999-2004 Mort Bay Consulting Pty. Ltd.
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

package org.browsermob.proxy.jetty.http.jmx;

import org.apache.commons.logging.Log;
import org.browsermob.proxy.jetty.http.HttpContext;
import org.browsermob.proxy.jetty.log.LogFactory;
import org.browsermob.proxy.jetty.util.LifeCycleEvent;
import org.browsermob.proxy.jetty.util.LifeCycleListener;
import org.browsermob.proxy.jetty.util.LogSupport;
import org.browsermob.proxy.jetty.util.jmx.LifeCycleMBean;

import javax.management.MBeanException;
import javax.management.MBeanServer;
import javax.management.ObjectName;
import java.util.HashMap;

// TODO: Auto-generated Javadoc
/* ------------------------------------------------------------ */
/**
 * The Class HttpContextMBean.
 * 
 * @version $Revision: 1.17 $
 * @author Greg Wilkins (gregw)
 */
public class HttpContextMBean extends LifeCycleMBean {

	/** The log. */
	private static Log log = LogFactory.getLog(HttpContextMBean.class);

	/** The _http context. */
	private HttpContext _httpContext;

	/** The _rl map. */
	private HashMap _rlMap = new HashMap(3);

	/** The _handler map. */
	private HashMap _handlerMap = new HashMap();

	/* ------------------------------------------------------------ */
	/**
	 * Constructor.
	 * 
	 * @throws MBeanException
	 *             the m bean exception
	 */
	public HttpContextMBean() throws MBeanException {
	}

	/* ------------------------------------------------------------ */
	/*
	 * (non-Javadoc)
	 * 
	 * @see
	 * org.browsermob.proxy.jetty.util.jmx.LifeCycleMBean#defineManagedResource
	 * ()
	 */
	protected void defineManagedResource() {
		super.defineManagedResource();

		defineAttribute("virtualHosts");
		defineAttribute("hosts");
		defineAttribute("contextPath");

		defineAttribute("handlers", READ_ONLY, ON_MBEAN);
		defineAttribute("requestLog", READ_ONLY, ON_MBEAN);

		defineAttribute("classPath");

		defineAttribute("realm");
		defineAttribute("realmName");

		defineAttribute("redirectNullPath");
		defineAttribute("resourceBase");
		defineAttribute("maxCachedFileSize");
		defineAttribute("maxCacheSize");
		defineOperation("flushCache", IMPACT_ACTION);
		defineOperation("getResource", new String[] { STRING }, IMPACT_ACTION);

		defineAttribute("welcomeFiles");
		defineOperation("addWelcomeFile", new String[] { STRING }, IMPACT_INFO);
		defineOperation("removeWelcomeFile", new String[] { STRING },
				IMPACT_INFO);

		defineAttribute("mimeMap");
		defineOperation("setMimeMapping", new String[] { STRING, STRING },
				IMPACT_ACTION);

		defineAttribute("statsOn");
		defineAttribute("statsOnMs");
		defineOperation("statsReset", IMPACT_ACTION);
		defineAttribute("requests");
		defineAttribute("requestsActive");
		defineAttribute("requestsActiveMax");
		defineAttribute("responses1xx");
		defineAttribute("responses2xx");
		defineAttribute("responses3xx");
		defineAttribute("responses4xx");
		defineAttribute("responses5xx");

		defineOperation("stop", new String[] { "java.lang.Boolean.TYPE" },
				IMPACT_ACTION);

		defineOperation("destroy", IMPACT_ACTION);

		defineOperation("setInitParameter", new String[] { STRING, STRING },
				IMPACT_ACTION);
		defineOperation("getInitParameter", new String[] { STRING },
				IMPACT_INFO);
		defineOperation("getInitParameterNames", NO_PARAMS, IMPACT_INFO);

		defineOperation("setAttribute", new String[] { STRING, OBJECT },
				IMPACT_ACTION);
		defineOperation("getAttribute", new String[] { STRING }, IMPACT_INFO);
		defineOperation("getAttributeNames", NO_PARAMS, IMPACT_INFO);
		defineOperation("removeAttribute", new String[] { STRING },
				IMPACT_ACTION);

		defineOperation("addHandler",
				new String[] { "org.browsermob.proxy.jetty.http.HttpHandler" },
				IMPACT_ACTION);
		defineOperation("addHandler", new String[] { INT,
				"org.browsermob.proxy.jetty.http.HttpHandler" }, IMPACT_ACTION);
		defineOperation("removeHandler", new String[] { INT }, IMPACT_ACTION);

		_httpContext = (HttpContext) getManagedResource();

		_httpContext.addEventListener(new LifeCycleListener() {

			public void lifeCycleStarting(LifeCycleEvent event) {
			}

			public void lifeCycleStarted(LifeCycleEvent event) {
				getHandlers();
			}

			public void lifeCycleFailure(LifeCycleEvent event) {
			}

			public void lifeCycleStopping(LifeCycleEvent event) {
			}

			public void lifeCycleStopped(LifeCycleEvent event) {
				destroyHandlers();
			}

		});
	}

	/* ------------------------------------------------------------ */
	/*
	 * (non-Javadoc)
	 * 
	 * @see
	 * org.browsermob.proxy.jetty.util.jmx.ModelMBeanImpl#newObjectName(javax
	 * .management.MBeanServer)
	 */
	protected ObjectName newObjectName(MBeanServer server) {
		ObjectName oName = super.newObjectName(server);
		String context = _httpContext.getContextPath();
		if (context.length() == 0)
			context = "/";
		try {
			oName = new ObjectName(oName + ",context=" + context);
		} catch (Exception e) {
			log.warn(LogSupport.EXCEPTION, e);
		}
		return oName;
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
			getHandlers();
	}

	/* ------------------------------------------------------------ */
	/*
	 * (non-Javadoc)
	 * 
	 * @see org.browsermob.proxy.jetty.util.jmx.ModelMBeanImpl#postDeregister()
	 */
	public void postDeregister() {
		_httpContext = null;
		destroyComponentMBeans(_handlerMap);
		super.postDeregister();
	}

	/* ------------------------------------------------------------ */
	/**
	 * Gets the handlers.
	 * 
	 * @return the handlers
	 */
	public ObjectName[] getHandlers() {
		return getComponentMBeans(_httpContext.getHandlers(), _handlerMap);
	}

	/**
	 * Destroy handlers.
	 */
	public void destroyHandlers() {
		destroyComponentMBeans(_handlerMap);
	}

	/* ------------------------------------------------------------ */
	/**
	 * Gets the request log.
	 * 
	 * @return the request log
	 */
	public ObjectName getRequestLog() {
		Object o = _httpContext.getRequestLog();
		if (o == null)
			return null;

		ObjectName[] on = getComponentMBeans(new Object[] { o }, _rlMap);
		if (on.length > 0)
			return on[0];
		return null;
	}

}
