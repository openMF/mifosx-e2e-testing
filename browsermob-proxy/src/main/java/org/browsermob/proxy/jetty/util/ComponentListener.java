//========================================================================
//$Id: ComponentListener.java,v 1.1 2004/10/01 14:28:30 gregwilkins Exp $
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
 * The listener interface for receiving component events. The class that is
 * interested in processing a component event implements this interface, and the
 * object created with that class is registered with a component using the
 * component's <code>addComponentListener<code> method. When
 * the component event occurs, that object's appropriate
 * method is invoked.
 * 
 * @see ComponentEvent
 */
public interface ComponentListener extends EventListener {

	/**
	 * Adds the component.
	 * 
	 * @param event
	 *            the event
	 */
	public void addComponent(ComponentEvent event);

	/**
	 * Removes the component.
	 * 
	 * @param event
	 *            the event
	 */
	public void removeComponent(ComponentEvent event);
}