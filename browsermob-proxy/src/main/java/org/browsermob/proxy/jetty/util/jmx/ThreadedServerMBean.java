// ========================================================================
// $Id: ThreadedServerMBean.java,v 1.9 2004/10/27 23:09:17 gregwilkins Exp $
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

package org.browsermob.proxy.jetty.util.jmx;

import org.browsermob.proxy.jetty.util.ThreadedServer;

import javax.management.MBeanException;

// TODO: Auto-generated Javadoc
/* ------------------------------------------------------------ */
/**
 * The Class ThreadedServerMBean.
 * 
 * @version $Revision: 1.9 $
 * @author Greg Wilkins (gregw)
 */
public class ThreadedServerMBean extends ThreadPoolMBean {
	/* ------------------------------------------------------------ */
	/**
	 * Instantiates a new threaded server m bean.
	 * 
	 * @throws MBeanException
	 *             the m bean exception
	 */
	public ThreadedServerMBean() throws MBeanException {
		super();
	}

	/* ------------------------------------------------------------ */
	/**
	 * Instantiates a new threaded server m bean.
	 * 
	 * @param object
	 *            the object
	 * @throws MBeanException
	 *             the m bean exception
	 */
	public ThreadedServerMBean(ThreadedServer object) throws MBeanException {
		super(object);
	}

	/* ------------------------------------------------------------ */
	/*
	 * (non-Javadoc)
	 * 
	 * @see
	 * org.browsermob.proxy.jetty.util.jmx.ThreadPoolMBean#defineManagedResource
	 * ()
	 */
	protected void defineManagedResource() {
		super.defineManagedResource();

		defineAttribute("host");
		defineAttribute("port");
		defineAttribute("tcpNoDelay");
		defineAttribute("lingerTimeSecs");
		defineAttribute("acceptQueueSize");
		defineAttribute("acceptorThreads");
	}
}
