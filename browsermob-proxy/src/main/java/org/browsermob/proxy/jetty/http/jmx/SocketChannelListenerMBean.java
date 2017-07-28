// ========================================================================
// $Id: SocketChannelListenerMBean.java,v 1.5 2004/05/09 20:32:14 gregwilkins Exp $
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

import org.browsermob.proxy.jetty.util.jmx.ThreadPoolMBean;

import javax.management.MBeanException;

// TODO: Auto-generated Javadoc
/* ------------------------------------------------------------ */
/**
 * The Class SocketChannelListenerMBean.
 * 
 * @version $Revision: 1.5 $
 * @author Greg Wilkins (gregw)
 */
public class SocketChannelListenerMBean extends ThreadPoolMBean {
	/* ------------------------------------------------------------ */
	/**
	 * Constructor.
	 * 
	 * @throws MBeanException
	 *             the m bean exception
	 */
	public SocketChannelListenerMBean() throws MBeanException {
		super();
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
		defineAttribute("maxReadTimeMs");
		defineAttribute("lingerTimeSecs");
		defineAttribute("lowOnResources");
		defineAttribute("outOfResources");
		defineAttribute("defaultScheme");
	}
}
