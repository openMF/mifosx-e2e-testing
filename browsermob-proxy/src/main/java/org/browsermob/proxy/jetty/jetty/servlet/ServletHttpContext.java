// ========================================================================
// $Id: ServletHttpContext.java,v 1.27 2005/04/13 16:30:47 janb Exp $
// Copyright 2001-2004 Mort Bay Consulting Pty. Ltd.
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

import org.browsermob.proxy.jetty.http.HttpContext;
import org.browsermob.proxy.jetty.http.HttpException;
import org.browsermob.proxy.jetty.http.HttpRequest;
import org.browsermob.proxy.jetty.http.HttpResponse;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.HashMap;
import java.util.Locale;

// TODO: Auto-generated Javadoc
/* ------------------------------------------------------------ */
/**
 * ServletHttpContext. Extends HttpContext with conveniance methods for adding
 * servlets. Enforces a single ServletHandler per context.
 * 
 * @version $Id: ServletHttpContext.java,v 1.27 2005/04/13 16:30:47 janb Exp $
 * @author Greg Wilkins (gregw)
 */
public class ServletHttpContext extends HttpContext {

	/** The _locale encoding map. */
	private HashMap _localeEncodingMap = new HashMap();

	/** The _servlet handler. */
	private ServletHandler _servletHandler = null;

	/* ------------------------------------------------------------ */
	/**
	 * Constructor.
	 */
	public ServletHttpContext() {
		super();
	}

	/* ------------------------------------------------------------ */
	/**
	 * Gets the servlet context.
	 * 
	 * @return The ServletContext.
	 */
	public ServletContext getServletContext() {
		ServletHandler shandler = getServletHandler();
		if (shandler != null)
			return shandler.getServletContext();
		throw new IllegalStateException();
	}

	/* ------------------------------------------------------------ */
	/**
	 * Get the context ServletHandler. Conveniance method. If no ServletHandler
	 * exists, a new one is added to the context.
	 * 
	 * @return ServletHandler
	 */
	public synchronized ServletHandler getServletHandler() {
		if (_servletHandler == null)
			_servletHandler = (ServletHandler) getHandler(ServletHandler.class);
		if (_servletHandler == null) {
			_servletHandler = new ServletHandler();
			addHandler(_servletHandler);
		}
		return _servletHandler;
	}

	/* ------------------------------------------------------------ */
	/**
	 * Add a servlet to the context. Conveniance method. If no ServletHandler is
	 * found in the context, a new one is added.
	 * 
	 * @param pathSpec
	 *            The pathspec within the context
	 * @param className
	 *            The classname of the servlet.
	 * @return The ServletHolder.
	 * @throws ClassNotFoundException
	 *             the class not found exception
	 * @throws InstantiationException
	 *             the instantiation exception
	 * @throws IllegalAccessException
	 *             the illegal access exception
	 */
	public synchronized ServletHolder addServlet(String pathSpec,
			String className) throws ClassNotFoundException,
			InstantiationException, IllegalAccessException {
		return addServlet(className, pathSpec, className);
	}

	/* ------------------------------------------------------------ */
	/**
	 * Add a servlet to the context. If no ServletHandler is found in the
	 * context, a new one is added.
	 * 
	 * @param name
	 *            The name of the servlet.
	 * @param pathSpec
	 *            The pathspec within the context
	 * @param className
	 *            The classname of the servlet.
	 * @return The ServletHolder.
	 * @throws ClassNotFoundException
	 *             the class not found exception
	 * @throws InstantiationException
	 *             the instantiation exception
	 * @throws IllegalAccessException
	 *             the illegal access exception
	 */
	public synchronized ServletHolder addServlet(String name, String pathSpec,
			String className) throws ClassNotFoundException,
			InstantiationException, IllegalAccessException {
		return getServletHandler().addServlet(name, pathSpec, className, null);
	}

	/* ------------------------------------------------------------ */
	/**
	 * J security check.
	 * 
	 * @param pathInContext
	 *            the path in context
	 * @param request
	 *            the request
	 * @param response
	 *            the response
	 * @return true, if successful
	 * @throws IOException
	 *             Signals that an I/O exception has occurred.
	 */
	protected boolean jSecurityCheck(String pathInContext, HttpRequest request,
			HttpResponse response) throws IOException {
		if (getAuthenticator() instanceof FormAuthenticator
				&& pathInContext.endsWith(FormAuthenticator.__J_SECURITY_CHECK)
				&& getAuthenticator().authenticate(getRealm(), pathInContext,
						request, response) == null)
			return false;
		return true;
	}

	/* ------------------------------------------------------------ */
	/*
	 * (non-Javadoc)
	 * 
	 * @see
	 * org.browsermob.proxy.jetty.http.HttpContext#checkSecurityConstraints(
	 * java.lang.String, org.browsermob.proxy.jetty.http.HttpRequest,
	 * org.browsermob.proxy.jetty.http.HttpResponse)
	 */
	public boolean checkSecurityConstraints(String pathInContext,
			HttpRequest request, HttpResponse response) throws HttpException,
			IOException {
		if (!super.checkSecurityConstraints(pathInContext, request, response)
				|| !jSecurityCheck(pathInContext, request, response))
			return false;

		return true;
	}

	/* ------------------------------------------------------------ */
	/**
	 * Adds the locale encoding.
	 * 
	 * @param locale
	 *            the locale
	 * @param encoding
	 *            the encoding
	 */
	public void addLocaleEncoding(String locale, String encoding) {
		_localeEncodingMap.put(locale, encoding);
	}

	/* ------------------------------------------------------------ */
	/**
	 * Get the character encoding for a locale. The full locale name is first
	 * looked up in the map of encodings. If no encoding is found, then the
	 * locale language is looked up.
	 * 
	 * @param locale
	 *            a <code>Locale</code> value
	 * @return a <code>String</code> representing the character encoding for the
	 *         locale or null if none found.
	 */
	public String getLocaleEncoding(Locale locale) {
		String encoding = (String) _localeEncodingMap.get(locale.toString());
		if (encoding == null)
			encoding = (String) _localeEncodingMap.get(locale.getLanguage());
		return encoding;
	}

	/* ------------------------------------------------------------ */
	/*
	 * (non-Javadoc)
	 * 
	 * @see org.browsermob.proxy.jetty.http.HttpContext#toString()
	 */
	public String toString() {
		return "Servlet" + super.toString();
	}

	/* ------------------------------------------------------------ */
	/*
	 * send servlet response error
	 */
	/*
	 * (non-Javadoc)
	 * 
	 * @see
	 * org.browsermob.proxy.jetty.http.HttpContext#sendError(org.browsermob.
	 * proxy.jetty.http.HttpResponse, int, java.lang.String)
	 */
	public void sendError(HttpResponse response, int code, String msg)
			throws IOException {
		Object wrapper = response.getWrapper();
		if (wrapper != null && wrapper instanceof HttpServletResponse)
			((HttpServletResponse) wrapper).sendError(code, msg);
		else
			super.sendError(response, code, msg);
	}

	/* ------------------------------------------------------------ */
	/*
	 * (non-Javadoc)
	 * 
	 * @see org.browsermob.proxy.jetty.http.HttpContext#destroy()
	 */
	public void destroy() {
		super.destroy();
		if (_localeEncodingMap != null)
			_localeEncodingMap.clear();
		_localeEncodingMap = null;
	}

	/* ------------------------------------------------------------ */
	/*
	 * @see
	 * org.browsermob.proxy.jetty.http.HttpContext#enterContextScope(org.browsermob
	 * .proxy.jetty.http.HttpRequest,
	 * org.browsermob.proxy.jetty.http.HttpResponse)
	 */
	/*
	 * (non-Javadoc)
	 * 
	 * @see
	 * org.browsermob.proxy.jetty.http.HttpContext#enterContextScope(org.browsermob
	 * .proxy.jetty.http.HttpRequest,
	 * org.browsermob.proxy.jetty.http.HttpResponse)
	 */
	public Object enterContextScope(HttpRequest request, HttpResponse response) {
		// Make sure servlet wrappers exist for request/response objects
		ServletHttpRequest srequest = (ServletHttpRequest) request.getWrapper();
		ServletHttpResponse sresponse = (ServletHttpResponse) response
				.getWrapper();
		if (srequest == null) {
			// Build the request and response.
			srequest = new ServletHttpRequest(getServletHandler(), null,
					request);
			sresponse = new ServletHttpResponse(srequest, response);
			request.setWrapper(srequest);
			response.setWrapper(sresponse);
		}

		return super.enterContextScope(request, response);
	}

	/* ------------------------------------------------------------ */
	/*
	 * @see org.browsermob.proxy.jetty.util.Container#doStop()
	 */
	/*
	 * (non-Javadoc)
	 * 
	 * @see org.browsermob.proxy.jetty.http.HttpContext#doStop()
	 */
	protected void doStop() throws Exception {
		super.doStop();
		_servletHandler = null;
	}
}
