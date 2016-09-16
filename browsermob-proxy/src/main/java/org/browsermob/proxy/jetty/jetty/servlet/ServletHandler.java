// ========================================================================
// $Id: ServletHandler.java,v 1.133 2006/03/15 14:43:00 gregwilkins Exp $
// Copyright 199-2004 Mort Bay Consulting Pty. Ltd.
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
import org.browsermob.proxy.jetty.http.*;
import org.browsermob.proxy.jetty.log.LogFactory;
import org.browsermob.proxy.jetty.util.*;

import javax.servlet.*;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.MalformedURLException;
import java.net.URL;
import java.util.*;

// TODO: Auto-generated Javadoc
/* --------------------------------------------------------------------- */
/**
 * Servlet HttpHandler. This handler maps requests to servlets that implement
 * the javax.servlet.http.HttpServlet API.
 * <P>
 * This handler does not implement the full J2EE features and is intended to be
 * used when a full web application is not required. Specifically filters and
 * request wrapping are not supported.
 * <P>
 * If a SessionManager is not added to the handler before it is initialized,
 * then a HashSessionManager with a standard java.util.Random generator is
 * created.
 * <P>
 * 
 * @see org.browsermob.proxy.jetty.jetty.servlet.WebApplicationHandler
 * @version $Id: ServletHandler.java,v 1.133 2006/03/15 14:43:00 gregwilkins Exp
 *          $
 * @author Greg Wilkins
 */
public class ServletHandler extends Container implements HttpHandler {

	/** The log. */
	private static Log log = LogFactory.getLog(ServletHandler.class);

	/* ------------------------------------------------------------ */
	/** The Constant __DEFAULT_SERVLET. */
	public static final String __DEFAULT_SERVLET = "default";

	/** The Constant __J_S_CONTEXT_TEMPDIR. */
	public static final String __J_S_CONTEXT_TEMPDIR = "javax.servlet.context.tempdir";

	/** The Constant __J_S_ERROR_EXCEPTION. */
	public static final String __J_S_ERROR_EXCEPTION = "javax.servlet.error.exception";

	/** The Constant __J_S_ERROR_EXCEPTION_TYPE. */
	public static final String __J_S_ERROR_EXCEPTION_TYPE = "javax.servlet.error.exception_type";

	/** The Constant __J_S_ERROR_MESSAGE. */
	public static final String __J_S_ERROR_MESSAGE = "javax.servlet.error.message";

	/** The Constant __J_S_ERROR_REQUEST_URI. */
	public static final String __J_S_ERROR_REQUEST_URI = "javax.servlet.error.request_uri";

	/** The Constant __J_S_ERROR_SERVLET_NAME. */
	public static final String __J_S_ERROR_SERVLET_NAME = "javax.servlet.error.servlet_name";

	/** The Constant __J_S_ERROR_STATUS_CODE. */
	public static final String __J_S_ERROR_STATUS_CODE = "javax.servlet.error.status_code";

	/* ------------------------------------------------------------ */
	/** The Constant __Slosh2Slash. */
	private static final boolean __Slosh2Slash = File.separatorChar == '\\';

	/** The __ allow string. */
	private static String __AllowString = "GET, HEAD, POST, OPTIONS, TRACE";

	/* ------------------------------------------------------------ */
	/** The _using cookies. */
	private boolean _usingCookies = true;

	/** The _auto initialize servlets. */
	private boolean _autoInitializeServlets = true;

	/** The _name. */
	private String _name;

	/* ------------------------------------------------------------ */
	/** The _servlet map. */
	protected PathMap _servletMap = new PathMap();

	/** The _name map. */
	protected Map _nameMap = new HashMap();

	/** The _attributes. */
	protected Map _attributes = new HashMap(3);

	/** The _form login page. */
	protected String _formLoginPage;

	/** The _form error page. */
	protected String _formErrorPage;

	/** The _session manager. */
	protected SessionManager _sessionManager;

	/** The _context. */
	protected transient Context _context;

	/** The _loader. */
	protected transient ClassLoader _loader;

	/** The _context log. */
	protected transient Log _contextLog;

	/** The _http context. */
	protected transient HttpContext _httpContext;

	/* ------------------------------------------------------------ */
	/**
	 * Constructor.
	 */
	public ServletHandler() {
		_context = new Context();
	}

	/* ------------------------------------------------------------ */
	/**
	 * Sets the name.
	 * 
	 * @param name
	 *            the new name
	 */
	public void setName(String name) {
		_name = name;
	}

	/* ------------------------------------------------------------ */
	/*
	 * (non-Javadoc)
	 * 
	 * @see org.browsermob.proxy.jetty.http.HttpHandler#getName()
	 */
	public String getName() {
		if (_name == null) {
			_name = this.getClass().getName();
			if (!log.isDebugEnabled())
				_name = _name.substring(_name.lastIndexOf('.') + 1);
		}
		return _name;
	}

	/* ------------------------------------------------------------ */
	/*
	 * (non-Javadoc)
	 * 
	 * @see org.browsermob.proxy.jetty.http.HttpHandler#getHttpContext()
	 */
	public HttpContext getHttpContext() {
		return _httpContext;
	}

	/* ------------------------------------------------------------ */
	/*
	 * (non-Javadoc)
	 * 
	 * @see
	 * org.browsermob.proxy.jetty.http.HttpHandler#initialize(org.browsermob
	 * .proxy.jetty.http.HttpContext)
	 */
	public void initialize(HttpContext context) {
		SessionManager sessionManager = getSessionManager();

		if (_httpContext != null && _httpContext != context)
			throw new IllegalStateException(
					"Can't initialize handler for different context");
		_httpContext = context;

		sessionManager.initialize(this);
	}

	/* ------------------------------------------------------------ */
	/**
	 * Form auth init.
	 * 
	 * @param formLoginPage
	 *            the form login page
	 * @param formErrorPage
	 *            the form error page
	 */
	public void formAuthInit(String formLoginPage, String formErrorPage) {
		_formLoginPage = formLoginPage;
		_formErrorPage = formErrorPage;
	}

	/* ------------------------------------------------------------ */
	/**
	 * Sets the session manager.
	 * 
	 * @param sm
	 *            the new session manager
	 */
	public void setSessionManager(SessionManager sm) {
		if (isStarted())
			throw new IllegalStateException("Started");

		int mii = 0;
		boolean setMii = false;

		if (_sessionManager != null) {
			mii = _sessionManager.getMaxInactiveInterval();
			setMii = true;
			if (getHttpContext() != null)
				_sessionManager.initialize(null);
			removeComponent(_sessionManager);
		}

		_sessionManager = sm;

		if (_sessionManager != null) {
			if (getHttpContext() != null)
				_sessionManager.initialize(this);
			if (setMii)
				_sessionManager.setMaxInactiveInterval(mii);
			addComponent(_sessionManager);
		}

		_sessionManager = sm;
	}

	/* ------------------------------------------------------------ */
	/**
	 * Gets the session manager.
	 * 
	 * @return the session manager
	 */
	public SessionManager getSessionManager() {
		if (_sessionManager == null) {
			_sessionManager = new HashSessionManager();
			addComponent(_sessionManager);
		}
		return _sessionManager;
	}

	/* ------------------------------------------------------------ */
	/**
	 * Gets the servlet context.
	 * 
	 * @return the servlet context
	 */
	public ServletContext getServletContext() {
		return _context;
	}

	/* ------------------------------------------------------------ */
	/**
	 * Gets the servlet map.
	 * 
	 * @return the servlet map
	 */
	public PathMap getServletMap() {
		return _servletMap;
	}

	/* ------------------------------------------------------------ */
	/**
	 * Checks if is using cookies.
	 * 
	 * @return true, if is using cookies
	 */
	public boolean isUsingCookies() {
		return _usingCookies;
	}

	/* ------------------------------------------------------------ */
	/**
	 * Set the dynamic servlet path.
	 * 
	 * @param dynamicServletPathSpec
	 *            the new dynamic servlet path spec
	 * @deprecated Use org.mortbay.jetty.servlet.Invoker
	 */
	public void setDynamicServletPathSpec(String dynamicServletPathSpec) {
		log.warn("setDynamicServletPathSpec is Deprecated.");
	}

	/* ------------------------------------------------------------ */
	/**
	 * Set dynamic servlet initial parameters.
	 * 
	 * @param initParams
	 *            the new dynamic init params
	 * @deprecated Use org.mortbay.jetty.servlet.Invoker
	 */
	public void setDynamicInitParams(Map initParams) {
		log.warn("setDynamicInitParams is Deprecated.");
	}

	/* ------------------------------------------------------------ */
	/**
	 * Set serving dynamic system servlets.
	 * 
	 * @param b
	 *            the new serve dynamic system servlets
	 * @deprecated Use org.mortbay.jetty.servlet.Invoker
	 */
	public void setServeDynamicSystemServlets(boolean b) {
		log.warn("setServeDynamicSystemServlets is Deprecated.");
	}

	/* ------------------------------------------------------------ */
	/**
	 * Gets the class loader.
	 * 
	 * @return the class loader
	 */
	public ClassLoader getClassLoader() {
		return _loader;
	}

	/* ------------------------------------------------------------ */
	/**
	 * Sets the using cookies.
	 * 
	 * @param uc
	 *            If true, cookies are used for sessions
	 */
	public void setUsingCookies(boolean uc) {
		_usingCookies = uc;
	}

	/* ------------------------------------------------------------ */
	/**
	 * New servlet holder.
	 * 
	 * @param name
	 *            the name
	 * @param servletClass
	 *            the servlet class
	 * @param forcedPath
	 *            the forced path
	 * @return the servlet holder
	 */
	public ServletHolder newServletHolder(String name, String servletClass,
			String forcedPath) {
		if (_nameMap.containsKey(name))
			throw new IllegalArgumentException("Named servlet already exists: "
					+ name);

		ServletHolder holder = new ServletHolder(this, name, servletClass,
				forcedPath);
		addServletHolder(holder);

		return holder;
	}

	/* ------------------------------------------------------------ */
	/**
	 * New servlet holder.
	 * 
	 * @param name
	 *            the name
	 * @param servletClass
	 *            the servlet class
	 * @return the servlet holder
	 */
	public ServletHolder newServletHolder(String name, String servletClass) {
		return newServletHolder(name, servletClass, null);
	}

	/* ------------------------------------------------------------ */
	/**
	 * Gets the servlet holder.
	 * 
	 * @param name
	 *            the name
	 * @return the servlet holder
	 */
	public ServletHolder getServletHolder(String name) {
		return (ServletHolder) _nameMap.get(name);
	}

	/* ------------------------------------------------------------ */
	/**
	 * Map a servlet to a pathSpec.
	 * 
	 * @param pathSpec
	 *            The pathspec to map
	 * @param servletName
	 *            The name of the servlet, which must have already been added.
	 * @return The servlet holder of the mapped servlet.
	 */
	public ServletHolder mapPathToServlet(String pathSpec, String servletName) {
		ServletHolder holder = (ServletHolder) _nameMap.get(servletName);

		if (!pathSpec.startsWith("/") && !pathSpec.startsWith("*")) {
			log.warn("pathSpec should start with '/' or '*' : " + pathSpec);
			pathSpec = "/" + pathSpec;
		}

		if (holder == null)
			throw new IllegalArgumentException("Unknown servlet: "
					+ servletName);
		_servletMap.put(pathSpec, holder);
		return holder;
	}

	/* ------------------------------------------------------------ */
	/**
	 * Add a servlet.
	 * 
	 * @param name
	 *            The servlet name.
	 * @param pathSpec
	 *            A path specification to map this servlet to.
	 * @param servletClass
	 *            The class name of the servlet.
	 * @param forcedPath
	 *            If non null, the request attribute
	 *            javax.servlet.include.servlet_path will be set to this path
	 *            before service is called.
	 * @return The ServletHolder for the servlet.
	 */
	public ServletHolder addServlet(String name, String pathSpec,
			String servletClass, String forcedPath) {
		ServletHolder holder = getServletHolder(name);
		if (holder == null)
			holder = newServletHolder(name, servletClass, forcedPath);
		mapPathToServlet(pathSpec, name);
		if (isStarted() && !holder.isStarted()) {
			try {
				holder.start();
			} catch (Exception e) {
				log.warn(LogSupport.EXCEPTION, e);
			}
		}
		return holder;
	}

	/* ------------------------------------------------------------ */
	/**
	 * Add a servlet.
	 * 
	 * @param name
	 *            The servlet name.
	 * @param pathSpec
	 *            A path specification to map this servlet to.
	 * @param servletClass
	 *            The class name of the servlet.
	 * @return The ServletHolder for the servlet.
	 */
	public ServletHolder addServlet(String name, String pathSpec,
			String servletClass) {
		return addServlet(name, pathSpec, servletClass, null);
	}

	/* ------------------------------------------------------------ */
	/**
	 * Add a servlet instance to this handler and map it to a pathspec.
	 * 
	 * @param pathSpec
	 *            The pathmapping
	 * @param servletClass
	 *            The class of the servlet
	 * @return The created ServletHolder
	 */
	public ServletHolder addServlet(String pathSpec, String servletClass) {
		return addServlet(servletClass, pathSpec, servletClass, null);
	}

	/* ------------------------------------------------------------ */
	/**
	 * Register an existing ServletHolder with this handler.
	 * 
	 * @param holder
	 *            the ServletHolder to register.
	 */
	public void addServletHolder(ServletHolder holder) {
		ServletHolder existing = (ServletHolder) _nameMap.get(holder.getName());
		if (existing == null)
			_nameMap.put(holder.getName(), holder);
		else if (existing != holder)
			throw new IllegalArgumentException(
					"Holder already exists for name: " + holder.getName());
		addComponent(holder);
	}

	/* ------------------------------------------------------------ */
	/**
	 * Checks if is auto initialize servlets.
	 * 
	 * @return true, if is auto initialize servlets
	 */
	public boolean isAutoInitializeServlets() {
		return _autoInitializeServlets;
	}

	/* ------------------------------------------------------------ */
	/**
	 * Sets the auto initialize servlets.
	 * 
	 * @param b
	 *            the new auto initialize servlets
	 */
	public void setAutoInitializeServlets(boolean b) {
		_autoInitializeServlets = b;
	}

	/* ----------------------------------------------------------------- */
	/*
	 * (non-Javadoc)
	 * 
	 * @see org.browsermob.proxy.jetty.util.Container#doStart()
	 */
	protected synchronized void doStart() throws Exception {
		if (isStarted())
			return;

		_contextLog = LogFactory
				.getLog("org.browsermob.proxy.jetty.jetty.context."
						+ getHttpContext().getHttpContextName());

		if (_contextLog == null)
			_contextLog = log;

		if (_sessionManager != null)
			_sessionManager.start();

		// Initialize classloader
		_loader = getHttpContext().getClassLoader();

		if (_autoInitializeServlets)
			initializeServlets();
	}

	/* ------------------------------------------------------------ */
	/**
	 * Get Servlets.
	 * 
	 * @return Array of defined servlets
	 */
	public ServletHolder[] getServlets() {
		// Sort and Initialize servlets
		HashSet holder_set = new HashSet(_nameMap.size());
		holder_set.addAll(_nameMap.values());
		ServletHolder holders[] = (ServletHolder[]) holder_set
				.toArray(new ServletHolder[holder_set.size()]);
		java.util.Arrays.sort(holders);
		return holders;
	}

	/* ------------------------------------------------------------ */
	/**
	 * Initialize load-on-startup servlets. Called automatically from start if
	 * autoInitializeServlet is true.
	 * 
	 * @throws Exception
	 *             the exception
	 */
	public void initializeServlets() throws Exception {
		MultiException mx = new MultiException();

		// Sort and Initialize servlets
		ServletHolder[] holders = getServlets();
		for (int i = 0; i < holders.length; i++) {
			try {
				holders[i].start();
			} catch (Exception e) {
				log.debug(LogSupport.EXCEPTION, e);
				mx.add(e);
			}
		}
		mx.ifExceptionThrow();
	}

	/* ----------------------------------------------------------------- */
	/*
	 * (non-Javadoc)
	 * 
	 * @see org.browsermob.proxy.jetty.util.Container#doStop()
	 */
	protected synchronized void doStop() throws Exception {
		// Sort and Initialize servlets
		ServletHolder[] holders = getServlets();

		// Stop servlets
		for (int i = holders.length; i-- > 0;) {
			try {
				if (holders[i].isStarted())
					holders[i].stop();
			} catch (Exception e) {
				log.warn(LogSupport.EXCEPTION, e);
			}
		}

		// Stop the session manager
		_sessionManager.stop();
		_attributes.clear();
		_loader = null;
	}

	/* ------------------------------------------------------------ */
	/**
	 * Gets the http session.
	 * 
	 * @param id
	 *            the id
	 * @return the http session
	 */
	public HttpSession getHttpSession(String id) {
		return _sessionManager.getHttpSession(id);
	}

	/* ------------------------------------------------------------ */
	/**
	 * New http session.
	 * 
	 * @param request
	 *            the request
	 * @return the http session
	 */
	public HttpSession newHttpSession(HttpServletRequest request) {
		return _sessionManager.newHttpSession(request);
	}

	/* ------------------------------------------------------------ */
	/**
	 * Set the session timeout interval in seconds.
	 * 
	 * @param seconds
	 *            the length of the session timeout interval in seconds.
	 */
	public void setSessionInactiveInterval(int seconds) {
		_sessionManager.setMaxInactiveInterval(seconds);
	}

	/* ----------------------------------------------------------------- */
	/**
	 * Handle request.
	 * 
	 * @param pathInContext
	 *            the path in context
	 * @param pathParams
	 *            the path params
	 * @param httpRequest
	 *            the http request
	 * @param httpResponse
	 *            the http response
	 * @throws IOException
	 *             Signals that an I/O exception has occurred.
	 */
	public void handle(String pathInContext, String pathParams,
			HttpRequest httpRequest, HttpResponse httpResponse)
			throws IOException {
		if (!isStarted())
			return;

		// Handle TRACE
		if (HttpRequest.__TRACE.equals(httpRequest.getMethod())) {
			handleTrace(httpRequest, httpResponse);
			return;
		}

		// Look for existing request/response objects (from enterScope call)
		ServletHttpRequest request = (ServletHttpRequest) httpRequest
				.getWrapper();
		ServletHttpResponse response = (ServletHttpResponse) httpResponse
				.getWrapper();
		if (request == null) {
			// Not in ServletHttpContext, but bumble on anyway
			request = new ServletHttpRequest(this, pathInContext, httpRequest);
			response = new ServletHttpResponse(request, httpResponse);
			httpRequest.setWrapper(request);
			httpResponse.setWrapper(response);
		} else {
			request.recycle(this, pathInContext);
			response.recycle();
		}

		// Look for the servlet
		Map.Entry servlet = getHolderEntry(pathInContext);
		ServletHolder servletHolder = servlet == null ? null
				: (ServletHolder) servlet.getValue();
		if (log.isDebugEnabled())
			log.debug("servlet=" + servlet);

		try {
			// Adjust request paths
			if (servlet != null) {
				String servletPathSpec = (String) servlet.getKey();
				request.setServletPaths(
						PathMap.pathMatch(servletPathSpec, pathInContext),
						PathMap.pathInfo(servletPathSpec, pathInContext),
						servletHolder);
			}

			// Handle the session ID
			request.setRequestedSessionId(pathParams);
			HttpSession session = request.getSession(false);
			if (session != null)
				((SessionManager.Session) session).access();
			if (log.isDebugEnabled())
				log.debug("session=" + session);

			// Do that funky filter and servlet thang!
			if (servletHolder != null)
				dispatch(pathInContext, request, response, servletHolder,
						Dispatcher.__REQUEST);
		} catch (Exception e) {
			log.debug(LogSupport.EXCEPTION, e);

			Throwable th = e;
			while (th instanceof ServletException) {
				log.warn(LogSupport.EXCEPTION, th);
				Throwable cause = ((ServletException) th).getRootCause();
				if (cause == th || cause == null)
					break;
				th = cause;
			}

			if (th instanceof HttpException)
				throw (HttpException) th;
			if (th instanceof EOFException)
				throw (IOException) th;
			else if (log.isDebugEnabled()
					|| !(th instanceof java.io.IOException)) {
				if (_contextLog != null) {
					if (th instanceof RuntimeException)
						_contextLog.error(httpRequest.getURI() + ": ", th);
					else
						_contextLog.warn(httpRequest.getURI() + ": ", th);
				}

				if (log.isDebugEnabled()) {
					if (th instanceof RuntimeException)
						log.error(httpRequest.getURI() + ": ", th);
					else
						log.warn(httpRequest.getURI() + ": ", th);
					log.debug(httpRequest);
				}
			}

			httpResponse.getHttpConnection().forceClose();
			if (!httpResponse.isCommitted()) {
				request.setAttribute(ServletHandler.__J_S_ERROR_EXCEPTION_TYPE,
						th.getClass());
				request.setAttribute(ServletHandler.__J_S_ERROR_EXCEPTION, th);
				if (th instanceof UnavailableException) {
					UnavailableException ue = (UnavailableException) th;
					if (ue.isPermanent())
						response.sendError(HttpResponse.__404_Not_Found,
								e.getMessage());
					else
						response.sendError(
								HttpResponse.__503_Service_Unavailable,
								e.getMessage());
				} else
					response.sendError(
							HttpResponse.__500_Internal_Server_Error,
							e.getMessage());
			} else if (log.isDebugEnabled())
				log.debug("Response already committed for handling " + th);
		} catch (Error e) {
			log.warn("Error for " + httpRequest.getURI(), e);
			if (log.isDebugEnabled())
				log.debug(httpRequest);

			httpResponse.getHttpConnection().forceClose();
			if (!httpResponse.isCommitted()) {
				request.setAttribute(ServletHandler.__J_S_ERROR_EXCEPTION_TYPE,
						e.getClass());
				request.setAttribute(ServletHandler.__J_S_ERROR_EXCEPTION, e);
				response.sendError(HttpResponse.__500_Internal_Server_Error,
						e.getMessage());
			} else if (log.isDebugEnabled())
				log.debug("Response already committed for handling ", e);
		} finally {
			if (servletHolder != null && response != null) {
				response.complete();
			}
		}
	}

	/* ------------------------------------------------------------ */
	/**
	 * Dispatch to a servletHolder. This method may be specialized to insert
	 * extra handling in the dispatch of a request to a specific servlet. This
	 * is used by WebApplicatonHandler to implement dispatched filters. The
	 * default implementation simply calls
	 * ServletHolder.handle(request,response)
	 * 
	 * @param pathInContext
	 *            The path used to select the servlet holder.
	 * @param request
	 *            the request
	 * @param response
	 *            the response
	 * @param servletHolder
	 *            the servlet holder
	 * @param type
	 *            the type of dispatch as defined in the Dispatcher class.
	 * @throws ServletException
	 *             the servlet exception
	 * @throws UnavailableException
	 *             the unavailable exception
	 * @throws IOException
	 *             Signals that an I/O exception has occurred.
	 */
	protected void dispatch(String pathInContext, HttpServletRequest request,
			HttpServletResponse response, ServletHolder servletHolder, int type)
			throws ServletException, UnavailableException, IOException {
		servletHolder.handle(request, response);
	}

	/* ------------------------------------------------------------ */
	/**
	 * ServletHolder matching path.
	 * 
	 * @param pathInContext
	 *            Path within context.
	 * @return PathMap Entries pathspec to ServletHolder
	 */
	public Map.Entry getHolderEntry(String pathInContext) {
		return _servletMap.getMatch(pathInContext);
	}

	/* ------------------------------------------------------------ */
	/**
	 * Gets the resource paths.
	 * 
	 * @param uriInContext
	 *            the uri in context
	 * @return the resource paths
	 */
	public Set getResourcePaths(String uriInContext) {
		try {
			uriInContext = URI.canonicalPath(uriInContext);
			if (uriInContext == null)
				return Collections.EMPTY_SET;
			Resource resource = getHttpContext().getResource(uriInContext);
			if (resource == null || !resource.isDirectory())
				return Collections.EMPTY_SET;
			String[] contents = resource.list();
			if (contents == null || contents.length == 0)
				return Collections.EMPTY_SET;
			HashSet set = new HashSet(contents.length * 2);
			for (int i = 0; i < contents.length; i++)
				set.add(URI.addPaths(uriInContext, contents[i]));
			return set;
		} catch (Exception e) {
			e.printStackTrace();
			LogSupport.ignore(log, e);
		}

		return Collections.EMPTY_SET;
	}

	/* ------------------------------------------------------------ */
	/**
	 * Get a Resource. If no resource is found, resource aliases are tried.
	 * 
	 * @param uriInContext
	 *            the uri in context
	 * @return URL of the resource.
	 * @throws MalformedURLException
	 *             the malformed url exception
	 */
	public URL getResource(String uriInContext) throws MalformedURLException {
		if (uriInContext == null || !uriInContext.startsWith("/"))
			throw new MalformedURLException(uriInContext);

		try {
			Resource resource = getHttpContext().getResource(uriInContext);
			if (resource != null && resource.exists())
				return resource.getURL();
		} catch (IllegalArgumentException e) {
			LogSupport.ignore(log, e);
		} catch (MalformedURLException e) {
			throw e;
		} catch (IOException e) {
			log.warn(LogSupport.EXCEPTION, e);
		}
		return null;
	}

	/* ------------------------------------------------------------ */
	/**
	 * Gets the resource as stream.
	 * 
	 * @param uriInContext
	 *            the uri in context
	 * @return the resource as stream
	 */
	public InputStream getResourceAsStream(String uriInContext) {
		if (uriInContext == null || !uriInContext.startsWith("/"))
			return null;
		try {
			Resource resource = getHttpContext().getResource(uriInContext);
			if (resource != null)
				return resource.getInputStream();

			uriInContext = URI.canonicalPath(uriInContext);
			URL url = getResource(uriInContext);
			if (url != null)
				return url.openStream();
		} catch (IOException e) {
			LogSupport.ignore(log, e);
		}
		return null;
	}

	/* ------------------------------------------------------------ */
	/**
	 * Gets the real path.
	 * 
	 * @param path
	 *            the path
	 * @return the real path
	 */
	public String getRealPath(String path) {
		if (log.isDebugEnabled())
			log.debug("getRealPath of " + path + " in " + this);

		if (__Slosh2Slash)
			path = path.replace('\\', '/');
		path = URI.canonicalPath(path);
		if (path == null)
			return null;

		Resource baseResource = getHttpContext().getBaseResource();
		if (baseResource == null)
			return null;

		try {
			Resource resource = baseResource.addPath(path);
			File file = resource.getFile();

			return (file == null) ? null : (file.getAbsolutePath());
		} catch (IOException e) {
			log.warn(LogSupport.EXCEPTION, e);
			return null;
		}
	}

	/* ------------------------------------------------------------ */
	/**
	 * Gets the request dispatcher.
	 * 
	 * @param uriInContext
	 *            the uri in context
	 * @return the request dispatcher
	 */
	public RequestDispatcher getRequestDispatcher(String uriInContext) {
		if (uriInContext == null)
			return null;

		if (!uriInContext.startsWith("/"))
			return null;

		try {
			String query = null;
			int q = 0;
			if ((q = uriInContext.indexOf('?')) > 0) {
				query = uriInContext.substring(q + 1);
				uriInContext = uriInContext.substring(0, q);
			}
			if ((q = uriInContext.indexOf(';')) > 0)
				uriInContext = uriInContext.substring(0, q);

			String pathInContext = URI.canonicalPath(URI
					.decodePath(uriInContext));
			Map.Entry entry = getHolderEntry(pathInContext);
			if (entry != null)
				return new Dispatcher(ServletHandler.this, uriInContext,
						pathInContext, query, entry);
		} catch (Exception e) {
			LogSupport.ignore(log, e);
		}
		return null;
	}

	/* ------------------------------------------------------------ */
	/**
	 * Get Named dispatcher.
	 * 
	 * @param name
	 *            The name of the servlet. If null or empty string, the
	 *            containers default servlet is returned.
	 * @return Request dispatcher for the named servlet.
	 */
	public RequestDispatcher getNamedDispatcher(String name) {
		if (name == null || name.length() == 0)
			name = __DEFAULT_SERVLET;

		try {
			return new Dispatcher(ServletHandler.this, name);
		} catch (Exception e) {
			LogSupport.ignore(log, e);
		}

		return null;
	}

	/* ------------------------------------------------------------ */
	/**
	 * Not found.
	 * 
	 * @param request
	 *            the request
	 * @param response
	 *            the response
	 * @throws IOException
	 *             Signals that an I/O exception has occurred.
	 */
	protected void notFound(HttpServletRequest request,
			HttpServletResponse response) throws IOException {
		if (log.isDebugEnabled())
			log.debug("Not Found " + request.getRequestURI());
		String method = request.getMethod();

		// Not found special requests.
		if (method.equals(HttpRequest.__GET)
				|| method.equals(HttpRequest.__HEAD)
				|| method.equals(HttpRequest.__POST)) {
			response.sendError(HttpResponse.__404_Not_Found);
		} else if (method.equals(HttpRequest.__TRACE))
			handleTrace(request, response);
		else if (method.equals(HttpRequest.__OPTIONS))
			handleOptions(request, response);
		else {
			// Unknown METHOD
			response.setHeader(HttpFields.__Allow, __AllowString);
			response.sendError(HttpResponse.__405_Method_Not_Allowed);
		}
	}

	/* ------------------------------------------------------------ */
	/**
	 * Handle trace.
	 * 
	 * @param request
	 *            the request
	 * @param response
	 *            the response
	 * @throws IOException
	 *             Signals that an I/O exception has occurred.
	 */
	protected void handleTrace(HttpServletRequest request,
			HttpServletResponse response) throws IOException {
		response.setHeader(HttpFields.__ContentType, HttpFields.__MessageHttp);
		OutputStream out = response.getOutputStream();
		ByteArrayISO8859Writer writer = new ByteArrayISO8859Writer();
		writer.write(request.toString());
		writer.flush();
		response.setIntHeader(HttpFields.__ContentLength, writer.size());
		writer.writeTo(out);
		out.flush();
	}

	/* ------------------------------------------------------------ */
	/**
	 * Handle options.
	 * 
	 * @param request
	 *            the request
	 * @param response
	 *            the response
	 * @throws IOException
	 *             Signals that an I/O exception has occurred.
	 */
	protected void handleOptions(HttpServletRequest request,
			HttpServletResponse response) throws IOException {
		// Handle OPTIONS request for entire server
		if ("*".equals(request.getRequestURI())) {
			// 9.2
			response.setIntHeader(HttpFields.__ContentLength, 0);
			response.setHeader(HttpFields.__Allow, __AllowString);
			response.flushBuffer();
		} else
			response.sendError(HttpResponse.__404_Not_Found);
	}

	/* ------------------------------------------------------------ */
	/**
	 * Gets the error page.
	 * 
	 * @param status
	 *            the status
	 * @param request
	 *            the request
	 * @return the error page
	 */
	public String getErrorPage(int status, ServletHttpRequest request) {
		return null;
	}

	/* ------------------------------------------------------------ */
	/**
	 * Get context attribute. Tries ServletHandler attributes and then delegated
	 * to HttpContext.
	 * 
	 * @param name
	 *            attribute name.
	 * @return attribute
	 */
	protected Object getContextAttribute(String name) {
		if (ServletHandler.__J_S_CONTEXT_TEMPDIR.equals(name)) {
			// Initialize temporary directory
			Object t = getHttpContext().getAttribute(
					ServletHandler.__J_S_CONTEXT_TEMPDIR);

			if (t instanceof File)
				return (File) t;

			return getHttpContext().getTempDirectory();
		}

		if (_attributes.containsKey(name))
			return _attributes.get(name);
		return getHttpContext().getAttribute(name);
	}

	/* ------------------------------------------------------------ */
	/**
	 * Get context attribute names. Combines ServletHandler and HttpContext
	 * attributes.
	 * 
	 * @return the context attribute names
	 */
	protected Enumeration getContextAttributeNames() {
		if (_attributes.size() == 0)
			return getHttpContext().getAttributeNames();
		HashSet set = new HashSet(_attributes.keySet());
		Enumeration e = getHttpContext().getAttributeNames();
		while (e.hasMoreElements())
			set.add(e.nextElement());
		return Collections.enumeration(set);
	}

	/* ------------------------------------------------------------ */
	/*
	 * Set a Servlet context attribute. Servlet Context attributes may hide
	 * HttpContext attributes.
	 */
	/**
	 * Sets the context attribute.
	 * 
	 * @param name
	 *            the name
	 * @param value
	 *            the value
	 */
	protected void setContextAttribute(String name, Object value) {
		_attributes.put(name, value);
	}

	/* ------------------------------------------------------------ */
	/*
	 * Remove a Servlet context attribute. Servlet Context attributes may hide
	 * HttpContext attributes.
	 */
	/**
	 * Removes the context attribute.
	 * 
	 * @param name
	 *            the name
	 */
	protected void removeContextAttribute(String name) {
		_attributes.remove(name);
	}

	/* ----------------------------------------------------------------- */
	/**
	 * Handle trace.
	 * 
	 * @param request
	 *            the request
	 * @param response
	 *            the response
	 * @throws IOException
	 *             Signals that an I/O exception has occurred.
	 */
	public void handleTrace(HttpRequest request, HttpResponse response)
			throws IOException {
		boolean trace = getHttpContext().getHttpServer().getTrace();

		// Handle TRACE by returning request header
		response.setField(HttpFields.__ContentType, HttpFields.__MessageHttp);
		if (trace) {
			OutputStream out = response.getOutputStream();
			ByteArrayISO8859Writer writer = new ByteArrayISO8859Writer();
			writer.write(request.toString());
			writer.flush();
			response.setIntField(HttpFields.__ContentLength, writer.size());
			writer.writeTo(out);
			out.flush();
		}
		request.setHandled(true);
	}

	/* ----------------------------------------------------------------- */
	/*
	 * (non-Javadoc)
	 * 
	 * @see org.browsermob.proxy.jetty.util.Container#destroy()
	 */
	public void destroy() {
		Iterator iter = _nameMap.values().iterator();
		while (iter.hasNext()) {
			Object sh = iter.next();
			iter.remove();
			removeComponent(sh);
		}

		if (_sessionManager != null)
			removeComponent(_sessionManager);
		_sessionManager = null;
		_context = null;
		super.destroy();
	}

	/* ----------------------------------------------------------------- */
	/*
	 * (non-Javadoc)
	 * 
	 * @see java.lang.Object#finalize()
	 */
	protected void finalize() throws Throwable {
		destroy();
	}

	/* ------------------------------------------------------------ */
	/* ------------------------------------------------------------ */
	/* ------------------------------------------------------------ */
	/**
	 * The Class Context.
	 */
	class Context implements ServletContext {

		/*
		 * (non-Javadoc)
		 * 
		 * @see javax.servlet.ServletContext#getContextPath()
		 */
		@Override
		public String getContextPath() {
			return null;
		}

		/* -------------------------------------------------------- */
		/**
		 * Gets the servlet handler.
		 * 
		 * @return the servlet handler
		 */
		ServletHandler getServletHandler() {
			return ServletHandler.this;
		}

		/* -------------------------------------------------------- */
		/*
		 * (non-Javadoc)
		 * 
		 * @see javax.servlet.ServletContext#getContext(java.lang.String)
		 */
		public ServletContext getContext(String uri) {
			ServletHandler handler = (ServletHandler) getHttpContext()
					.getHttpServer()
					.findHandler(
							org.browsermob.proxy.jetty.jetty.servlet.ServletHandler.class,
							uri, getHttpContext().getVirtualHosts());
			if (handler != null)
				return handler.getServletContext();
			return null;
		}

		/* ------------------------------------------------------------ */
		/*
		 * (non-Javadoc)
		 * 
		 * @see javax.servlet.ServletContext#getMajorVersion()
		 */
		public int getMajorVersion() {
			return 2;
		}

		/* ------------------------------------------------------------ */
		/*
		 * (non-Javadoc)
		 * 
		 * @see javax.servlet.ServletContext#getMinorVersion()
		 */
		public int getMinorVersion() {
			return 4;
		}

		/* ------------------------------------------------------------ */
		/*
		 * (non-Javadoc)
		 * 
		 * @see javax.servlet.ServletContext#getMimeType(java.lang.String)
		 */
		public String getMimeType(String file) {
			return getHttpContext().getMimeByExtension(file);
		}

		/* ------------------------------------------------------------ */
		/*
		 * (non-Javadoc)
		 * 
		 * @see javax.servlet.ServletContext#getResourcePaths(java.lang.String)
		 */
		public Set getResourcePaths(String uriInContext) {
			return ServletHandler.this.getResourcePaths(uriInContext);
		}

		/* ------------------------------------------------------------ */
		/*
		 * (non-Javadoc)
		 * 
		 * @see javax.servlet.ServletContext#getResource(java.lang.String)
		 */
		public URL getResource(String uriInContext)
				throws MalformedURLException {
			return ServletHandler.this.getResource(uriInContext);
		}

		/* ------------------------------------------------------------ */
		/*
		 * (non-Javadoc)
		 * 
		 * @see
		 * javax.servlet.ServletContext#getResourceAsStream(java.lang.String)
		 */
		public InputStream getResourceAsStream(String uriInContext) {
			return ServletHandler.this.getResourceAsStream(uriInContext);
		}

		/* ------------------------------------------------------------ */
		/*
		 * (non-Javadoc)
		 * 
		 * @see javax.servlet.ServletContext#getRealPath(java.lang.String)
		 */
		public String getRealPath(String path) {
			return ServletHandler.this.getRealPath(path);
		}

		/* ------------------------------------------------------------ */
		/*
		 * (non-Javadoc)
		 * 
		 * @see
		 * javax.servlet.ServletContext#getRequestDispatcher(java.lang.String)
		 */
		public RequestDispatcher getRequestDispatcher(String uriInContext) {
			return ServletHandler.this.getRequestDispatcher(uriInContext);
		}

		/* ------------------------------------------------------------ */
		/*
		 * (non-Javadoc)
		 * 
		 * @see
		 * javax.servlet.ServletContext#getNamedDispatcher(java.lang.String)
		 */
		public RequestDispatcher getNamedDispatcher(String name) {
			return ServletHandler.this.getNamedDispatcher(name);
		}

		/* ------------------------------------------------------------ */
		/**
		 * Gets the servlet.
		 * 
		 * @param name
		 *            the name
		 * @return the servlet
		 * @deprecated
		 */
		public Servlet getServlet(String name) {
			return null;
		}

		/* ------------------------------------------------------------ */
		/**
		 * Gets the servlets.
		 * 
		 * @return the servlets
		 * @deprecated
		 */
		public Enumeration getServlets() {
			return Collections.enumeration(Collections.EMPTY_LIST);
		}

		/* ------------------------------------------------------------ */
		/**
		 * Gets the servlet names.
		 * 
		 * @return the servlet names
		 * @deprecated
		 */
		public Enumeration getServletNames() {
			return Collections.enumeration(Collections.EMPTY_LIST);
		}

		/* ------------------------------------------------------------ */
		/**
		 * Servlet Log. Log message to servlet log. Use either the system log or
		 * a LogSinkset via the context attribute
		 * org.mortbay.jetty.servlet.Context.LogSink
		 * 
		 * @param msg
		 *            the msg
		 */
		public void log(String msg) {
			_contextLog.info(msg);
		}

		/* ------------------------------------------------------------ */
		/**
		 * Log.
		 * 
		 * @param e
		 *            the e
		 * @param msg
		 *            the msg
		 * @deprecated As of Java Servlet API 2.1, use
		 *             {@link #log(String message, Throwable throwable)}
		 *             instead.
		 */
		public void log(Exception e, String msg) {
			_contextLog.warn(msg, e);
		}

		/* ------------------------------------------------------------ */
		/*
		 * (non-Javadoc)
		 * 
		 * @see javax.servlet.ServletContext#log(java.lang.String,
		 * java.lang.Throwable)
		 */
		public void log(String msg, Throwable th) {
			_contextLog.warn(msg, th);
		}

		/* ------------------------------------------------------------ */
		/*
		 * (non-Javadoc)
		 * 
		 * @see javax.servlet.ServletContext#getServerInfo()
		 */
		public String getServerInfo() {
			return Version.getImplVersion();
		}

		/* ------------------------------------------------------------ */
		/**
		 * Get context init parameter. Delegated to HttpContext.
		 * 
		 * @param param
		 *            param name
		 * @return param value or null
		 */
		public String getInitParameter(String param) {
			return getHttpContext().getInitParameter(param);
		}

		/* ------------------------------------------------------------ */
		/**
		 * Get context init parameter names. Delegated to HttpContext.
		 * 
		 * @return Enumeration of names
		 */
		public Enumeration getInitParameterNames() {
			return getHttpContext().getInitParameterNames();
		}

		/* ------------------------------------------------------------ */
		/**
		 * Get context attribute. Tries ServletHandler attributes and then
		 * delegated to HttpContext.
		 * 
		 * @param name
		 *            attribute name.
		 * @return attribute
		 */
		public Object getAttribute(String name) {
			return getContextAttribute(name);
		}

		/* ------------------------------------------------------------ */
		/**
		 * Get context attribute names. Combines ServletHandler and HttpContext
		 * attributes.
		 * 
		 * @return the attribute names
		 */
		public Enumeration getAttributeNames() {
			return getContextAttributeNames();
		}

		/* ------------------------------------------------------------ */
		/**
		 * Set context attribute names. Sets the ServletHandler attributes and
		 * may hide HttpContext attributes.
		 * 
		 * @param name
		 *            attribute name.
		 * @param value
		 *            attribute value
		 */
		public void setAttribute(String name, Object value) {
			setContextAttribute(name, value);
		}

		/* ------------------------------------------------------------ */
		/**
		 * Remove context attribute. Puts a null into the ServletHandler
		 * attributes and may hide a HttpContext attribute.
		 * 
		 * @param name
		 *            attribute name.
		 */
		public void removeAttribute(String name) {
			removeContextAttribute(name);
		}

		/* ------------------------------------------------------------ */
		/*
		 * (non-Javadoc)
		 * 
		 * @see javax.servlet.ServletContext#getServletContextName()
		 */
		public String getServletContextName() {
			if (getHttpContext() instanceof WebApplicationContext)
				return ((WebApplicationContext) getHttpContext())
						.getDisplayName();
			return null;
		}

		/* ------------------------------------------------------------ */
		/*
		 * (non-Javadoc)
		 * 
		 * @see java.lang.Object#toString()
		 */
		public String toString() {
			return "ServletContext[" + getHttpContext() + "]";
		}
	}
}
