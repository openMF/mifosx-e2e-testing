//========================================================================
//$Id: LifeCycleListener.java,v 1.1 2004/10/01 14:28:30 gregwilkins Exp $
//Copyright 2004 Mort Bay Consulting Pty. Ltd.
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

package org.browsermob.proxy.jetty.util;

import java.util.EventListener;

// TODO: Auto-generated Javadoc
/**
 * Listener for LifeCycleEvents.
 * 
 * @author gregw
 * 
 */
public interface LifeCycleListener extends EventListener {

	/**
	 * Life cycle starting.
	 * 
	 * @param event
	 *            the event
	 */
	public void lifeCycleStarting(LifeCycleEvent event);

	/**
	 * Life cycle started.
	 * 
	 * @param event
	 *            the event
	 */
	public void lifeCycleStarted(LifeCycleEvent event);

	/**
	 * Life cycle failure.
	 * 
	 * @param event
	 *            the event
	 */
	public void lifeCycleFailure(LifeCycleEvent event);

	/**
	 * Life cycle stopping.
	 * 
	 * @param event
	 *            the event
	 */
	public void lifeCycleStopping(LifeCycleEvent event);

	/**
	 * Life cycle stopped.
	 * 
	 * @param event
	 *            the event
	 */
	public void lifeCycleStopped(LifeCycleEvent event);
}
