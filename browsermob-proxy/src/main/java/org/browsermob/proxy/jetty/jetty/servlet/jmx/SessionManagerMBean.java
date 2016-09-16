// ========================================================================
// $Id: SessionManagerMBean.java,v 1.4 2004/05/09 20:32:35 gregwilkins Exp $
// Copyright 2003-2004 Mort Bay Consulting Pty. Ltd.
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

import org.browsermob.proxy.jetty.jetty.servlet.SessionManager;
import org.browsermob.proxy.jetty.util.jmx.LifeCycleMBean;

import javax.management.MBeanException;

// TODO: Auto-generated Javadoc
/* ------------------------------------------------------------ */
/**
 * The Class SessionManagerMBean.
 * 
 * @version $Revision: 1.4 $
 * @author Greg Wilkins (gregw)
 */
public class SessionManagerMBean extends LifeCycleMBean {
	/* ------------------------------------------------------------ */
	/**
	 * Instantiates a new session manager m bean.
	 * 
	 * @throws MBeanException
	 *             the m bean exception
	 */
	public SessionManagerMBean() throws MBeanException {
	}

	/* ------------------------------------------------------------ */
	/**
	 * Instantiates a new session manager m bean.
	 * 
	 * @param object
	 *            the object
	 * @throws MBeanException
	 *             the m bean exception
	 */
	public SessionManagerMBean(SessionManager object) throws MBeanException {
		super(object);
	}
}
