// ========================================================================
// $Id: FilterHolder.java,v 1.31 2005/04/07 09:15:33 gregwilkins Exp $
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

import org.browsermob.proxy.jetty.http.HttpHandler;

import javax.servlet.Filter;
import javax.servlet.FilterConfig;
import javax.servlet.ServletContext;
import java.util.Enumeration;

// TODO: Auto-generated Javadoc
/* --------------------------------------------------------------------- */
/**
 * The Class FilterHolder.
 * 
 * @version $Id: FilterHolder.java,v 1.31 2005/04/07 09:15:33 gregwilkins Exp $
 * @author Greg Wilkins
 */
public class FilterHolder extends Holder {
	/* ------------------------------------------------------------ */

	/** The _filter. */
	private transient Filter _filter;

	/** The _config. */
	private transient Config _config;

	/* ---------------------------------------------------------------- */
	/**
	 * Constructor for Serialization.
	 */
	public FilterHolder() {
	}

	/* ---------------------------------------------------------------- */
	/**
	 * Instantiates a new filter holder.
	 * 
	 * @param httpHandler
	 *            the http handler
	 * @param name
	 *            the name
	 * @param className
	 *            the class name
	 */
	public FilterHolder(HttpHandler httpHandler, String name, String className) {
		super(httpHandler, name, className);
	}

	/* ------------------------------------------------------------ */
	/*
	 * (non-Javadoc)
	 * 
	 * @see org.browsermob.proxy.jetty.jetty.servlet.Holder#start()
	 */
	public void start() throws Exception {
		super.start();

		if (!javax.servlet.Filter.class.isAssignableFrom(_class)) {
			super.stop();
			throw new IllegalStateException(_class
					+ " is not a javax.servlet.Filter");
		}

		_filter = (Filter) newInstance();
		_config = new Config();
		_filter.init(_config);
	}

	/* ------------------------------------------------------------ */
	/*
	 * (non-Javadoc)
	 * 
	 * @see org.browsermob.proxy.jetty.jetty.servlet.Holder#stop()
	 */
	public void stop() {
		if (_filter != null)
			_filter.destroy();
		_filter = null;
		_config = null;
		super.stop();
	}

	/* ------------------------------------------------------------ */
	/**
	 * Gets the filter.
	 * 
	 * @return the filter
	 */
	public Filter getFilter() {
		return _filter;
	}

	/* ------------------------------------------------------------ */
	/*
	 * (non-Javadoc)
	 * 
	 * @see org.browsermob.proxy.jetty.jetty.servlet.Holder#toString()
	 */
	public String toString() {
		return getName();
	}

	/* ------------------------------------------------------------ */
	/* ------------------------------------------------------------ */
	/* ------------------------------------------------------------ */
	/**
	 * The Class Config.
	 */
	class Config implements FilterConfig {
		/* ------------------------------------------------------------ */
		/*
		 * (non-Javadoc)
		 * 
		 * @see javax.servlet.FilterConfig#getFilterName()
		 */
		public String getFilterName() {
			return FilterHolder.this.getName();
		}

		/* ------------------------------------------------------------ */
		/*
		 * (non-Javadoc)
		 * 
		 * @see javax.servlet.FilterConfig#getServletContext()
		 */
		public ServletContext getServletContext() {
			return ((WebApplicationHandler) _httpHandler).getServletContext();
		}

		/* -------------------------------------------------------- */
		/*
		 * (non-Javadoc)
		 * 
		 * @see javax.servlet.FilterConfig#getInitParameter(java.lang.String)
		 */
		public String getInitParameter(String param) {
			return FilterHolder.this.getInitParameter(param);
		}

		/* -------------------------------------------------------- */
		/*
		 * (non-Javadoc)
		 * 
		 * @see javax.servlet.FilterConfig#getInitParameterNames()
		 */
		public Enumeration getInitParameterNames() {
			return FilterHolder.this.getInitParameterNames();
		}
	}

}
