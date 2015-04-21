// ========================================================================
// $Id: AJP13Listener.java,v 1.20 2006/10/08 14:13:05 gregwilkins Exp $
// Copyright 2002-2004 Mort Bay Consulting Pty. Ltd.
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

package org.browsermob.proxy.jetty.http.ajp;

import org.apache.commons.logging.Log;
import org.browsermob.proxy.jetty.http.*;
import org.browsermob.proxy.jetty.log.LogFactory;
import org.browsermob.proxy.jetty.util.InetAddrPort;
import org.browsermob.proxy.jetty.util.ThreadedServer;

import java.io.IOException;
import java.net.InetAddress;
import java.net.Socket;

// TODO: Auto-generated Javadoc
/* ------------------------------------------------------------ */
/**
 * AJP 1.3 Protocol Listener. This listener takes requests from the mod_jk or
 * mod_jk2 modules used by web servers such as apache and IIS to forward
 * requests to a servlet container.
 * <p>
 * This code uses the AJP13 code from tomcat3.3 as the protocol specification,
 * but is new implementation.
 * 
 * @version $Id: AJP13Listener.java,v 1.20 2006/10/08 14:13:05 gregwilkins Exp $
 * @author Greg Wilkins (gregw)
 */
public class AJP13Listener extends ThreadedServer implements HttpListener {

	/** The log. */
	private static Log log = LogFactory.getLog(AJP13Listener.class);

	/* ------------------------------------------------------------------- */
	/** The _server. */
	private HttpServer _server;

	/** The _last out. */
	private boolean _lastOut = false;

	/** The _last low. */
	private boolean _lastLow = false;

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

	/** The _remote servers. */
	private String[] _remoteServers;

	/** The _handler. */
	private HttpHandler _handler;

	/* ------------------------------------------------------------------- */
	/**
	 * Instantiates a new aJ p13 listener.
	 */
	public AJP13Listener() {
	}

	/* ------------------------------------------------------------------- */
	/**
	 * Instantiates a new aJ p13 listener.
	 * 
	 * @param address
	 *            the address
	 */
	public AJP13Listener(InetAddrPort address) {
		super(address);
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
		_server = server;
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
		if (_bufferSize > 8192)
			log.warn("AJP Data buffer > 8192: " + size);
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
	/*
	 * (non-Javadoc)
	 * 
	 * @see org.browsermob.proxy.jetty.http.HttpListener#getDefaultScheme()
	 */
	public String getDefaultScheme() {
		return HttpMessage.__SCHEME;
	}

	/* --------------------------------------------------------------- */
	/*
	 * (non-Javadoc)
	 * 
	 * @see org.browsermob.proxy.jetty.util.ThreadedServer#start()
	 */
	public void start() throws Exception {
		super.start();
		log.info("Started AJP13Listener on " + getInetAddrPort());
		log.info("NOTICE: AJP13 is not a secure protocol. Please protect the port "
				+ getInetAddrPort());
	}

	/* --------------------------------------------------------------- */
	/*
	 * (non-Javadoc)
	 * 
	 * @see org.browsermob.proxy.jetty.util.ThreadedServer#stop()
	 */
	public void stop() throws InterruptedException {
		super.stop();
		log.info("Stopped AJP13Listener on " + getInetAddrPort());
	}

	/* ------------------------------------------------------------ */
	/**
	 * Gets the remote servers.
	 * 
	 * @return Array of accepted remote server hostnames or IPs.
	 */
	public String[] getRemoteServers() {
		return _remoteServers;
	}

	/* ------------------------------------------------------------ */
	/**
	 * Set accepted remote servers. The AJP13 protocol is not secure and
	 * contains no authentication. If remote servers are set, then this listener
	 * will only accept connections from hosts with matching addresses or
	 * hostnames.
	 * 
	 * @param servers
	 *            Array of accepted remote server hostnames or IPs
	 */
	public void setRemoteServers(String[] servers) {
		_remoteServers = servers;
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
		// Check acceptable remote servers
		if (_remoteServers != null && _remoteServers.length > 0) {
			boolean match = false;
			InetAddress inetAddress = socket.getInetAddress();
			String hostAddr = inetAddress.getHostAddress();
			String hostName = inetAddress.getHostName();
			for (int i = 0; i < _remoteServers.length; i++) {
				if (hostName.equals(_remoteServers[i])
						|| hostAddr.equals(_remoteServers[i])) {
					match = true;
					break;
				}
			}
			if (!match) {
				log.warn("AJP13 Connection from un-approved host: "
						+ inetAddress);
				return;
			}
		}

		// Handle the connection
		socket.setTcpNoDelay(true);
		socket.setSoTimeout(getMaxIdleTimeMs());
		AJP13Connection connection = createConnection(socket);
		try {
			connection.handle();
		} finally {
			connection.destroy();
		}
	}

	/* ------------------------------------------------------------ */
	/**
	 * Create an AJP13Connection instance. This method can be used to override
	 * the connection instance.
	 * 
	 * @param socket
	 *            The underlying socket.
	 * @return the aJ p13 connection
	 * @throws IOException
	 *             Signals that an I/O exception has occurred.
	 */
	protected AJP13Connection createConnection(Socket socket)
			throws IOException {
		return new AJP13Connection(this, socket.getInputStream(),
				socket.getOutputStream(), socket, getBufferSize());
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
	 * socket used (eg SSL session ids).
	 * 
	 * @param socket
	 *            the socket
	 * @param request
	 *            the request
	 */
	protected void customizeRequest(Socket socket, HttpRequest request) {
	}

	/* ------------------------------------------------------------ */
	/**
	 * Persist the connection.
	 * 
	 * @param connection
	 *            the connection
	 */
	public void persistConnection(HttpConnection connection) {
	}

	/* ------------------------------------------------------------ */
	/**
	 * Checks if is low on resources.
	 * 
	 * @return True if low on idle threads.
	 */
	public boolean isLowOnResources() {
		boolean low = getThreads() == getMaxThreads()
				&& getIdleThreads() < getMinThreads();
		if (low && !_lastLow)
			log.info("LOW ON THREADS: " + this);
		else if (!low && _lastLow) {
			log.info("OK on threads: " + this);
			_lastOut = false;
		}
		_lastLow = low;
		return low;
	}

	/* ------------------------------------------------------------ */
	/**
	 * Checks if is out of resources.
	 * 
	 * @return True if out of resources.
	 */
	public boolean isOutOfResources() {
		boolean out = getThreads() == getMaxThreads() && getIdleThreads() == 0;
		if (out && !_lastOut)
			log.warn("OUT OF THREADS: " + this);

		_lastOut = out;
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
		return ((AJP13Connection) connection).isSSL();
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
		return ((AJP13Connection) connection).isSSL();
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
}
