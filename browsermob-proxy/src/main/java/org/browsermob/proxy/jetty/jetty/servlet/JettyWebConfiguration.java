//========================================================================
//$Id: JettyWebConfiguration.java,v 1.4 2005/11/18 17:54:05 gregwilkins Exp $
//Copyright 2000-2004 Mort Bay Consulting Pty. Ltd.
//------------------------------------------------------------------------
//Licensed under the Apache License, Version 2.0 (the "License");
//you may not use this file except in compliance with the License.
//You may obtain a copy of the License at 
//http://www.apache.org/licenses/LICENSE-2.0
//Unless required by applicable law or agreed to in writing, software
//distributed under the License is distributed on an "AS IS" BASIS,
//WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
//See the License for the specific language governing permissions and
//limitations under the License.
//========================================================================

package org.browsermob.proxy.jetty.jetty.servlet;

import org.apache.commons.logging.Log;
import org.browsermob.proxy.jetty.jetty.servlet.WebApplicationContext.Configuration;
import org.browsermob.proxy.jetty.log.LogFactory;
import org.browsermob.proxy.jetty.util.Resource;
import org.browsermob.proxy.jetty.xml.XmlConfiguration;

// TODO: Auto-generated Javadoc
/**
 * JettyWebConfiguration.
 * 
 * @author janb
 * @version $Revision: 1.4 $ $Date: 2005/11/18 17:54:05 $
 */
public class JettyWebConfiguration implements Configuration {

	/** The log. */
	private static Log log = LogFactory.getLog(JettyWebConfiguration.class);

	/** The _context. */
	private WebApplicationContext _context;

	/**
	 * Sets the web application context.
	 * 
	 * @param context
	 *            the new web application context
	 * @see org.browsermob.proxy.jetty.jetty.servlet.WebApplicationContext.Configuration#setWebApplicationContext(org.browsermob.proxy.jetty.jetty.servlet.WebApplicationContext)
	 */
	public void setWebApplicationContext(WebApplicationContext context) {
		_context = context;
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see
	 * org.browsermob.proxy.jetty.jetty.servlet.WebApplicationContext.Configuration
	 * #getWebApplicationContext()
	 */
	public WebApplicationContext getWebApplicationContext() {
		return _context;
	}

	/**
	 * configureClassPath Not used.
	 * 
	 * @throws Exception
	 *             the exception
	 * @see org.browsermob.proxy.jetty.jetty.servlet.WebApplicationContext.Configuration#configureClassPath()
	 */
	public void configureClassPath() throws Exception {
	}

	/**
	 * configureDefaults Not used.
	 * 
	 * @throws Exception
	 *             the exception
	 * @see org.browsermob.proxy.jetty.jetty.servlet.WebApplicationContext.Configuration#configureDefaults()
	 */
	public void configureDefaults() throws Exception {
	}

	/**
	 * configureWebApp Apply web-jetty.xml configuration
	 * 
	 * @throws Exception
	 *             the exception
	 * @see org.browsermob.proxy.jetty.jetty.servlet.WebApplicationContext.Configuration#configureWebApp()
	 */
	public void configureWebApp() throws Exception {
		// cannot configure if the _context is already started
		if (_context.isStarted()) {
			if (log.isDebugEnabled()) {
				log.debug("Cannot configure webapp after it is started");
			}
			;
			return;
		}

		if (log.isDebugEnabled())
			log.debug("Configuring web-jetty.xml");

		Resource webInf = getWebApplicationContext().getWebInf();
		// handle any WEB-INF descriptors
		if (webInf != null && webInf.isDirectory()) {
			// do jetty.xml file
			Resource jetty = webInf.addPath("web-jetty.xml");
			if (!jetty.exists())
				jetty = webInf.addPath("jetty-web.xml");
			if (!getWebApplicationContext().isIgnoreWebJetty()
					&& jetty.exists()) {

				// Give permission to see Jetty classes
				String[] old_server_classes = _context.getServerClasses();
				String[] server_classes = new String[1 + (old_server_classes == null ? 0
						: old_server_classes.length)];
				server_classes[0] = "-org.browsermob.proxy.jetty.";
				if (server_classes != null)
					System.arraycopy(old_server_classes, 0, server_classes, 1,
							old_server_classes.length);

				try {
					_context.setServerClasses(server_classes);
					if (log.isDebugEnabled())
						log.debug("Configure: " + jetty);

					XmlConfiguration jetty_config = new XmlConfiguration(
							jetty.getURL());
					jetty_config.configure(getWebApplicationContext());
				} finally {
					if (_context.getServerClasses() == server_classes)
						_context.setServerClasses(old_server_classes);
				}
			}
		}

	}
}
