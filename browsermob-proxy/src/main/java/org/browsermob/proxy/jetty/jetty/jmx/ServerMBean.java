// ========================================================================
// $Id: ServerMBean.java,v 1.12 2005/09/16 12:06:59 gregwilkins Exp $
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

package org.browsermob.proxy.jetty.jetty.jmx;

import org.apache.commons.logging.Log;
import org.browsermob.proxy.jetty.http.jmx.HttpServerMBean;
import org.browsermob.proxy.jetty.jetty.Server;
import org.browsermob.proxy.jetty.log.LogFactory;
import org.browsermob.proxy.jetty.util.LogSupport;

import javax.management.InstanceNotFoundException;
import javax.management.MBeanException;
import javax.management.MBeanServer;
import javax.management.ObjectName;
import java.io.IOException;

// TODO: Auto-generated Javadoc
/* ------------------------------------------------------------ */
/**
 * JettyServer MBean. This Model MBean class provides the mapping for HttpServer
 * management methods. It also registers itself as a membership listener of the
 * HttpServer, so it can create and destroy MBean wrappers for listeners and
 * contexts.
 * 
 * @version $Revision: 1.12 $
 * @author Greg Wilkins (gregw)
 */
public class ServerMBean extends HttpServerMBean {

	/** The log. */
	private static Log log = LogFactory.getLog(ServerMBean.class);

	/** The _jetty server. */
	private Server _jettyServer;

	/** The _configuration. */
	private String _configuration;

	/* ------------------------------------------------------------ */
	/**
	 * Constructor.
	 * 
	 * @param jettyServer
	 *            the jetty server
	 * @throws MBeanException
	 *             the m bean exception
	 * @throws InstanceNotFoundException
	 *             the instance not found exception
	 */
	public ServerMBean(Server jettyServer) throws MBeanException,
			InstanceNotFoundException {
		super(jettyServer);
	}

	/* ------------------------------------------------------------ */
	/**
	 * Constructor.
	 * 
	 * @throws MBeanException
	 *             the m bean exception
	 * @throws InstanceNotFoundException
	 *             the instance not found exception
	 */
	public ServerMBean() throws MBeanException, InstanceNotFoundException {
		this(new Server());
	}

	/* ------------------------------------------------------------ */
	/**
	 * Constructor.
	 * 
	 * @param configuration
	 *            URL or File to jetty.xml style configuration file
	 * @throws IOException
	 *             Signals that an I/O exception has occurred.
	 * @throws MBeanException
	 *             the m bean exception
	 * @throws InstanceNotFoundException
	 *             the instance not found exception
	 */
	public ServerMBean(String configuration) throws IOException,
			MBeanException, InstanceNotFoundException {
		this(new Server());
		_configuration = configuration;
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
		return uniqueObjectName(server, getDefaultDomain() + ":Server=");
	}

	/* ------------------------------------------------------------ */
	/*
	 * (non-Javadoc)
	 * 
	 * @see
	 * org.browsermob.proxy.jetty.http.jmx.HttpServerMBean#defineManagedResource
	 * ()
	 */
	protected void defineManagedResource() {
		super.defineManagedResource();

		defineAttribute("configuration");
		defineAttribute("rootWebApp");
		defineAttribute("webApplicationConfigurationClassNames");
		defineOperation("addWebApplication", new String[] { "java.lang.String",
				"java.lang.String" }, IMPACT_ACTION);

		defineOperation("addWebApplication", new String[] { "java.lang.String",
				"java.lang.String", "java.lang.String" }, IMPACT_ACTION);
		defineOperation("addWebApplications", new String[] {
				"java.lang.String", "java.lang.String" }, IMPACT_ACTION);
		_jettyServer = (Server) getManagedResource();
	}

	/* ------------------------------------------------------------ */
	/**
	 * Post register.
	 * 
	 * @param ok
	 *            the ok
	 */
	public void postRegister(Boolean ok) {
		super.postRegister(ok);

		if (ok.booleanValue()) {
			if (_configuration != null) {
				try {
					_jettyServer.configure(_configuration);
					_jettyServer.start();
				} catch (Exception e) {
					log.warn(LogSupport.EXCEPTION, e);
				}
			}
		}
	}

	/* ------------------------------------------------------------ */
	/*
	 * (non-Javadoc)
	 * 
	 * @see org.browsermob.proxy.jetty.http.jmx.HttpServerMBean#postDeregister()
	 */
	public void postDeregister() {
		_configuration = null;
		try {
			if (null != _jettyServer)
				_jettyServer.stop();
		} catch (Exception e) {
			log.warn(e);
		} finally {
			super.postDeregister();
		}

	}
}
