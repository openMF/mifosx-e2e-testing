// ========================================================================
// $Id: Holder.java,v 1.18 2005/08/13 00:01:27 gregwilkins Exp $
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

import org.apache.commons.logging.Log;
import org.browsermob.proxy.jetty.http.HttpContext;
import org.browsermob.proxy.jetty.http.HttpHandler;
import org.browsermob.proxy.jetty.log.LogFactory;
import org.browsermob.proxy.jetty.util.LifeCycle;

import java.io.Serializable;
import java.util.*;

// TODO: Auto-generated Javadoc
/* --------------------------------------------------------------------- */
/**
 * The Class Holder.
 * 
 * @version $Id: Holder.java,v 1.18 2005/08/13 00:01:27 gregwilkins Exp $
 * @author Greg Wilkins
 */
public class Holder extends AbstractMap implements LifeCycle, Serializable {

	/** The log. */
	private static Log log = LogFactory.getLog(Holder.class);

	/* ---------------------------------------------------------------- */
	/** The _http handler. */
	protected HttpHandler _httpHandler;

	/** The _name. */
	protected String _name;

	/** The _display name. */
	protected String _displayName;

	/** The _class name. */
	protected String _className;

	/** The _init params. */
	protected Map _initParams;

	/** The _class. */
	protected transient Class _class;

	/* ---------------------------------------------------------------- */
	/**
	 * Constructor for Serialization.
	 */
	protected Holder() {
	}

	/* ---------------------------------------------------------------- */
	/**
	 * Instantiates a new holder.
	 * 
	 * @param httpHandler
	 *            the http handler
	 * @param name
	 *            the name
	 * @param className
	 *            the class name
	 */
	protected Holder(HttpHandler httpHandler, String name, String className) {
		if (name == null || name.length() == 0)
			throw new IllegalArgumentException("No name for " + className);

		if (className == null || className.length() == 0)
			throw new IllegalArgumentException("No classname");

		_httpHandler = httpHandler;
		_className = className;
		_name = name;
		_displayName = name;
	}

	/* ------------------------------------------------------------ */
	/**
	 * Gets the name.
	 * 
	 * @return the name
	 */
	public String getName() {
		return _name;
	}

	/* ------------------------------------------------------------ */
	/**
	 * Sets the display name.
	 * 
	 * @param name
	 *            the new display name
	 */
	public void setDisplayName(String name) {
		_name = name;
	}

	/* ------------------------------------------------------------ */
	/**
	 * Gets the display name.
	 * 
	 * @return the display name
	 */
	public String getDisplayName() {
		return _name;
	}

	/* ------------------------------------------------------------ */
	/**
	 * Gets the class name.
	 * 
	 * @return the class name
	 */
	public String getClassName() {
		return _className;
	}

	/* ------------------------------------------------------------ */
	/**
	 * Gets the http handler.
	 * 
	 * @return the http handler
	 */
	public HttpHandler getHttpHandler() {
		return _httpHandler;
	}

	/* ------------------------------------------------------------ */
	/**
	 * Gets the http context.
	 * 
	 * @return the http context
	 */
	public HttpContext getHttpContext() {
		if (_httpHandler != null)
			return _httpHandler.getHttpContext();
		return null;
	}

	/* ------------------------------------------------------------ */
	/**
	 * Sets the init parameter.
	 * 
	 * @param param
	 *            the param
	 * @param value
	 *            the value
	 */
	public void setInitParameter(String param, String value) {
		put(param, value);
	}

	/* ---------------------------------------------------------------- */
	/**
	 * Gets the inits the parameter.
	 * 
	 * @param param
	 *            the param
	 * @return the inits the parameter
	 */
	public String getInitParameter(String param) {
		if (_initParams == null)
			return null;
		return (String) _initParams.get(param);
	}

	/* ---------------------------------------------------------------- */
	/**
	 * Gets the inits the parameters.
	 * 
	 * @return the inits the parameters
	 */
	public Map getInitParameters() {
		return _initParams;
	}

	/* ------------------------------------------------------------ */
	/**
	 * Gets the inits the parameter names.
	 * 
	 * @return the inits the parameter names
	 */
	public Enumeration getInitParameterNames() {
		if (_initParams == null)
			return Collections.enumeration(Collections.EMPTY_LIST);
		return Collections.enumeration(_initParams.keySet());
	}

	/* ------------------------------------------------------------ */
	/**
	 * Map entrySet method. FilterHolder implements the Map interface as a
	 * configuration conveniance. The methods are mapped to the filter
	 * properties.
	 * 
	 * @return The entrySet of the initParameter map
	 */
	public synchronized Set entrySet() {
		if (_initParams == null)
			_initParams = new HashMap(3);
		return _initParams.entrySet();
	}

	/* ------------------------------------------------------------ */
	/**
	 * Map put method. FilterHolder implements the Map interface as a
	 * configuration conveniance. The methods are mapped to the filter
	 * properties.
	 * 
	 * @param name
	 *            the name
	 * @param value
	 *            the value
	 * @return the object
	 */
	public synchronized Object put(Object name, Object value) {
		if (_initParams == null)
			_initParams = new HashMap(3);
		return _initParams.put(name, value);
	}

	/* ------------------------------------------------------------ */
	/**
	 * Map get method. FilterHolder implements the Map interface as a
	 * configuration conveniance. The methods are mapped to the filter
	 * properties.
	 * 
	 * @param name
	 *            the name
	 * @return the object
	 */
	public synchronized Object get(Object name) {
		if (_initParams == null)
			return null;
		return _initParams.get(name);
	}

	/* ------------------------------------------------------------ */
	/*
	 * (non-Javadoc)
	 * 
	 * @see org.browsermob.proxy.jetty.util.LifeCycle#start()
	 */
	public void start() throws Exception {
		_class = _httpHandler.getHttpContext().loadClass(_className);
		if (log.isDebugEnabled())
			log.debug("Started holder of " + _class);
	}

	/* ------------------------------------------------------------ */
	/**
	 * New instance.
	 * 
	 * @return the object
	 * @throws InstantiationException
	 *             the instantiation exception
	 * @throws IllegalAccessException
	 *             the illegal access exception
	 */
	public synchronized Object newInstance() throws InstantiationException,
			IllegalAccessException {
		if (_class == null)
			throw new InstantiationException("No class for " + this);
		return _class.newInstance();
	}

	/* ------------------------------------------------------------ */
	/*
	 * (non-Javadoc)
	 * 
	 * @see org.browsermob.proxy.jetty.util.LifeCycle#isStarted()
	 */
	public boolean isStarted() {
		return _class != null;
	}

	/* ------------------------------------------------------------ */
	/*
	 * (non-Javadoc)
	 * 
	 * @see org.browsermob.proxy.jetty.util.LifeCycle#stop()
	 */
	public void stop() {
		_class = null;
	}

	/* ------------------------------------------------------------ */
	/*
	 * (non-Javadoc)
	 * 
	 * @see java.util.AbstractMap#toString()
	 */
	public String toString() {
		return _name;
	}

}
