// ========================================================================
// $Id: SocketListener.java,v 1.39 2006/02/27 13:03:50 gregwilkins Exp $
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

package org.browsermob.proxy.jetty.http;

import org.apache.commons.logging.Log;
import org.browsermob.proxy.jetty.log.LogFactory;
import org.browsermob.proxy.jetty.util.InetAddrPort;
import org.browsermob.proxy.jetty.util.LogSupport;
import org.browsermob.proxy.jetty.util.ThreadedServer;

import java.io.IOException;
import java.net.Socket;

// TODO: Auto-generated Javadoc
/* ------------------------------------------------------------ */
/**
 * Socket HTTP Listener. The behaviour of the listener can be controlled with
 * the attributues of the ThreadedServer and ThreadPool from which it is
 * derived. Specifically:
 * 
 * <PRE>
 * MinThreads    - Minumum threads waiting to service requests.
 * MaxThread     - Maximum thread that will service requests.
 * MaxIdleTimeMs - Time for an idle thread to wait for a request or read.
 * LowResourcePersistTimeMs - time in ms that connections will persist if listener is
 *                            low on resources.
 * </PRE>
 * 
 * @version $Id: SocketListener.java,v 1.39 2006/02/27 13:03:50 gregwilkins Exp
 *          $
 * @author Greg Wilkins (gregw)
 */
public class SocketListener extends ThreadedServer implements HttpListener {

	/** The log. */
	private static Log log = LogFactory.getLog(SocketListener.class);

	/* ------------------------------------------------------------------- */
	/** The _low resource persist time ms. */
	private int _lowResourcePersistTimeMs = 2000;

	/** The _scheme. */
	private String _scheme = HttpMessage.__SCHEME;

	/** The _integral scheme. */
	private String _integralScheme = HttpMessage.__SSL_SCHEME;

	/** The _confidential scheme. */
	private String _confidentialScheme = HttpMessage.__SSL_SCHEME;

	/** The _integral port. */
	private int _integralPort = 0;

	/** The _confidential port. */
	private int _confidentialPort = 0;

	/** The _identify listener. */
	private boolean _identifyListener = false;

	/** The _buffer size. */
	private int _bufferSize = 8192;

	/** The _buffer reserve. */
	private int _bufferReserve = 512;

	/** The _handler. */
	private HttpHandler _handler;

	/** The _low resources. */
	private int _lowResources;

	/** The _server. */
	private transient HttpServer _server;

	/** The _is low. */
	private transient boolean _isLow = false;

	/** The _is out. */
	private transient boolean _isOut = false;

	/** The _warned. */
	private transient long _warned = 0;

	/* ------------------------------------------------------------------- */
	/**
	 * Instantiates a new socket listener.
	 */
	public SocketListener() {
	}

	/* ------------------------------------------------------------------- */
	/**
	 * Instantiates a new socket listener.
	 * 
	 * @param address
	 *            the address
	 */
	public SocketListener(InetAddrPort address) {
		super(address);
	}

	/* ------------------------------------------------------------ */
	/*
	 * (non-Javadoc)
	 * 
	 * @see org.browsermob.proxy.jetty.http.HttpListener#getHttpServer()
	 */
	public HttpServer getHttpServer() {
		return _server;
	}

	/* ------------------------------------------------------------ */
	/*
	 * (non-Javadoc)
	 * 
	 * @see
	 * org.browsermob.proxy.jetty.http.HttpListener#setHttpServer(org.browsermob
	 * .proxy.jetty.http.HttpServer)
	 */
	public void setHttpServer(HttpServer server) {
		if (server != null && _server != null && _server != server)
			throw new IllegalStateException("Cannot share listeners");
		_server = server;
	}

	/* ------------------------------------------------------------ */
	/*
	 * (non-Javadoc)
	 * 
	 * @see org.browsermob.proxy.jetty.http.HttpListener#getHttpHandler()
	 */
	public HttpHandler getHttpHandler() {
		return _handler;
	}

	/* ------------------------------------------------------------ */
	/**
	 * Sets the http handler.
	 * 
	 * @param handler
	 *            the new http handler
	 */
	public void setHttpHandler(HttpHandler handler) {
		_handler = handler;
	}

	/* ------------------------------------------------------------ */
	/*
	 * (non-Javadoc)
	 * 
	 * @see org.browsermob.proxy.jetty.http.HttpListener#getBufferSize()
	 */
	public int getBufferSize() {
		return _bufferSize;
	}

	/* ------------------------------------------------------------ */
	/**
	 * Sets the buffer size.
	 * 
	 * @param size
	 *            the new buffer size
	 */
	public void setBufferSize(int size) {
		_bufferSize = size;
	}

	/* ------------------------------------------------------------ */
	/*
	 * (non-Javadoc)
	 * 
	 * @see org.browsermob.proxy.jetty.http.HttpListener#getBufferReserve()
	 */
	public int getBufferReserve() {
		return _bufferReserve;
	}

	/* ------------------------------------------------------------ */
	/**
	 * Sets the buffer reserve.
	 * 
	 * @param size
	 *            the new buffer reserve
	 */
	public void setBufferReserve(int size) {
		_bufferReserve = size;
	}

	/* ------------------------------------------------------------ */
	/**
	 * Gets the identify listener.
	 * 
	 * @return the identify listener
	 */
	public boolean getIdentifyListener() {
		return _identifyListener;
	}

	/* ------------------------------------------------------------ */
	/**
	 * Sets the identify listener.
	 * 
	 * @param identifyListener
	 *            If true, the listener name is added to all requests as the
	 *            org.mortbay.http.HttListener attribute
	 */
	public void setIdentifyListener(boolean identifyListener) {
		_identifyListener = identifyListener;
	}

	/* --------------------------------------------------------------- */
	/**
	 * Sets the default scheme.
	 * 
	 * @param scheme
	 *            the new default scheme
	 */
	public void setDefaultScheme(String scheme) {
		_scheme = scheme;
	}

	/* --------------------------------------------------------------- */
	/*
	 * (non-Javadoc)
	 * 
	 * @see org.browsermob.proxy.jetty.http.HttpListener#getDefaultScheme()
	 */
	public String getDefaultScheme() {
		return _scheme;
	}

	/* ------------------------------------------------------------ */
	/**
	 * Gets the low resources.
	 * 
	 * @return Returns the lowResources threshold
	 */
	public int getLowResources() {
		return _lowResources;
	}

	/* ------------------------------------------------------------ */
	/**
	 * Sets the low resources.
	 * 
	 * @param lowResources
	 *            The number of idle threads needed to not be in low resources
	 *            state.
	 */
	public void setLowResources(int lowResources) {
		_lowResources = lowResources;
	}

	/* ------------------------------------------------------------ */
	/**
	 * Gets the low resource persist time ms.
	 * 
	 * @return time in ms that connections will persist if listener is low on
	 *         resources.
	 */
	public int getLowResourcePersistTimeMs() {
		return _lowResourcePersistTimeMs;
	}

	/* ------------------------------------------------------------ */
	/**
	 * Set the low resource persistace time. When the listener is low on
	 * resources, this timeout is used for idle persistent connections. It is
	 * desirable to have this set to a short period of time so that idle
	 * persistent connections do not consume resources on a busy server.
	 * 
	 * @param ms
	 *            time in ms that connections will persist if listener is low on
	 *            resources.
	 */
	public void setLowResourcePersistTimeMs(int ms) {
		_lowResourcePersistTimeMs = ms;
	}

	/* --------------------------------------------------------------- */
	/*
	 * (non-Javadoc)
	 * 
	 * @see org.browsermob.proxy.jetty.util.ThreadedServer#start()
	 */
	public void start() throws Exception {
		super.start();
		log.info("Started SocketListener on " + getInetAddrPort());
	}

	/* --------------------------------------------------------------- */
	/*
	 * (non-Javadoc)
	 * 
	 * @see org.browsermob.proxy.jetty.util.ThreadedServer#stop()
	 */
	public void stop() throws InterruptedException {
		super.stop();
		log.info("Stopped SocketListener on " + getInetAddrPort());
	}

	/* ------------------------------------------------------------ */
	/**
	 * Handle Job. Implementation of ThreadPool.handle(), calls
	 * handleConnection.
	 * 
	 * @param socket
	 *            A Connection.
	 * @throws IOException
	 *             Signals that an I/O exception has occurred.
	 */
	public void handleConnection(Socket socket) throws IOException {
		HttpConnection connection = createConnection(socket);

		try {
			if (_lowResourcePersistTimeMs > 0 && isLowOnResources()) {
				socket.setSoTimeout(_lowResourcePersistTimeMs);
				connection.setThrottled(true);
			} else {
				socket.setSoTimeout(getMaxIdleTimeMs());
				connection.setThrottled(false);
			}

		} catch (Exception e) {
			log.warn(LogSupport.EXCEPTION, e);
		}

		connection.handle();
	}

	/* ------------------------------------------------------------ */
	/**
	 * Create an HttpConnection instance. This method can be used to override
	 * the connection instance.
	 * 
	 * @param socket
	 *            The underlying socket.
	 * @return the http connection
	 * @throws IOException
	 *             Signals that an I/O exception has occurred.
	 */
	protected HttpConnection createConnection(Socket socket) throws IOException {
		HttpConnection c = new HttpConnection(this, socket.getInetAddress(),
				socket.getInputStream(), socket.getOutputStream(), socket);
		return c;
	}

	/* ------------------------------------------------------------ */
	/**
	 * Customize the request from connection. This method extracts the socket
	 * from the connection and calls the customizeRequest(Socket,HttpRequest)
	 * method.
	 * 
	 * @param connection
	 *            the connection
	 * @param request
	 *            the request
	 */
	public void customizeRequest(HttpConnection connection, HttpRequest request) {
		if (_identifyListener)
			request.setAttribute(HttpListener.ATTRIBUTE, getName());

		Socket socket = (Socket) (connection.getConnection());
		customizeRequest(socket, request);
	}

	/* ------------------------------------------------------------ */
	/**
	 * Customize request from socket. Derived versions of SocketListener may
	 * specialize this method to customize the request with attributes of the
	 * socket used (eg SSL session ids). This version resets the SoTimeout if it
	 * has been reduced due to low resources. Derived implementations should
	 * call super.customizeRequest(socket,request) unless persistConnection has
	 * also been overridden and not called.
	 * 
	 * @param socket
	 *            the socket
	 * @param request
	 *            the request
	 */
	protected void customizeRequest(Socket socket, HttpRequest request) {
		try {
			if (request.getHttpConnection().isThrottled()) {
				socket.setSoTimeout(getMaxIdleTimeMs());
				request.getHttpConnection().setThrottled(false);
			}
		} catch (Exception e) {
			LogSupport.ignore(log, e);
		}
	}

	/* ------------------------------------------------------------ */
	/**
	 * Persist the connection. This method is called by the HttpConnection in
	 * order to prepare a connection to be persisted. For this implementation,
	 * if the listener is low on resources, the connection read timeout is set
	 * to lowResourcePersistTimeMs. The customizeRequest method is used to reset
	 * this to the normal value after a request has been read.
	 * 
	 * @param connection
	 *            The HttpConnection to use.
	 */
	public void persistConnection(HttpConnection connection) {
		try {
			Socket socket = (Socket) (connection.getConnection());

			if (_lowResourcePersistTimeMs > 0 && isLowOnResources()) {
				socket.setSoTimeout(_lowResourcePersistTimeMs);
				connection.setThrottled(true);
			} else
				connection.setThrottled(false);
		} catch (Exception e) {
			LogSupport.ignore(log, e);
		}
	}

	/* ------------------------------------------------------------ */
	/**
	 * Get the lowOnResource state of the listener. A SocketListener is
	 * considered low on resources if the total number of the number of idle
	 * threads is less than the lowResource value (or minThreads if not set)
	 * 
	 * @return True if low on idle threads.
	 */
	public boolean isLowOnResources() {
		int spare = getMaxThreads() - getThreads();
		int lr = _lowResources > 0 ? _lowResources : getMinThreads();
		boolean low = (spare + getIdleThreads()) < lr;

		if (low && !_isLow) {
			log.info("LOW ON THREADS ((" + getMaxThreads() + "-" + getThreads()
					+ "+" + getIdleThreads() + ")<" + getMinThreads() + ") on "
					+ this);
			_warned = System.currentTimeMillis();
			_isLow = true;
		} else if (!low && _isLow) {
			if (System.currentTimeMillis() - _warned > 1000) {
				_isOut = false;
				_isLow = false;
			}
		}
		return low;
	}

	/* ------------------------------------------------------------ */
	/**
	 * Get the outOfResource state of the listener. A SocketListener is
	 * considered out of resources if the total number of threads is maxThreads
	 * and the number of idle threads is zero.
	 * 
	 * @return True if out of resources.
	 */
	public boolean isOutOfResources() {
		boolean out = getThreads() == getMaxThreads() && getIdleThreads() == 0;

		if (out && !_isOut) {
			log.warn("OUT OF THREADS: " + this);
			_warned = System.currentTimeMillis();
			_isLow = true;
			_isOut = true;
		}

		return out;
	}

	/* ------------------------------------------------------------ */
	/*
	 * (non-Javadoc)
	 * 
	 * @see
	 * org.browsermob.proxy.jetty.http.HttpListener#isIntegral(org.browsermob
	 * .proxy.jetty.http.HttpConnection)
	 */
	public boolean isIntegral(HttpConnection connection) {
		return false;
	}

	/* ------------------------------------------------------------ */
	/*
	 * (non-Javadoc)
	 * 
	 * @see
	 * org.browsermob.proxy.jetty.http.HttpListener#isConfidential(org.browsermob
	 * .proxy.jetty.http.HttpConnection)
	 */
	public boolean isConfidential(HttpConnection connection) {
		return false;
	}

	/* ------------------------------------------------------------ */
	/*
	 * (non-Javadoc)
	 * 
	 * @see org.browsermob.proxy.jetty.http.HttpListener#getIntegralScheme()
	 */
	public String getIntegralScheme() {
		return _integralScheme;
	}

	/* ------------------------------------------------------------ */
	/**
	 * Sets the integral scheme.
	 * 
	 * @param integralScheme
	 *            the new integral scheme
	 */
	public void setIntegralScheme(String integralScheme) {
		_integralScheme = integralScheme;
	}

	/* ------------------------------------------------------------ */
	/*
	 * (non-Javadoc)
	 * 
	 * @see org.browsermob.proxy.jetty.http.HttpListener#getIntegralPort()
	 */
	public int getIntegralPort() {
		return _integralPort;
	}

	/* ------------------------------------------------------------ */
	/**
	 * Sets the integral port.
	 * 
	 * @param integralPort
	 *            the new integral port
	 */
	public void setIntegralPort(int integralPort) {
		_integralPort = integralPort;
	}

	/* ------------------------------------------------------------ */
	/*
	 * (non-Javadoc)
	 * 
	 * @see org.browsermob.proxy.jetty.http.HttpListener#getConfidentialScheme()
	 */
	public String getConfidentialScheme() {
		return _confidentialScheme;
	}

	/* ------------------------------------------------------------ */
	/**
	 * Sets the confidential scheme.
	 * 
	 * @param confidentialScheme
	 *            the new confidential scheme
	 */
	public void setConfidentialScheme(String confidentialScheme) {
		_confidentialScheme = confidentialScheme;
	}

	/* ------------------------------------------------------------ */
	/*
	 * (non-Javadoc)
	 * 
	 * @see org.browsermob.proxy.jetty.http.HttpListener#getConfidentialPort()
	 */
	public int getConfidentialPort() {
		return _confidentialPort;
	}

	/* ------------------------------------------------------------ */
	/**
	 * Sets the confidential port.
	 * 
	 * @param confidentialPort
	 *            the new confidential port
	 */
	public void setConfidentialPort(int confidentialPort) {
		_confidentialPort = confidentialPort;
	}
}
