/*
 * 
 */
package org.browsermob.proxy;

import org.browsermob.proxy.jetty.http.HttpContext;
import org.browsermob.proxy.jetty.http.HttpListener;
import org.browsermob.proxy.jetty.http.SocketListener;
import org.browsermob.proxy.jetty.http.handler.ResourceHandler;
import org.browsermob.proxy.jetty.jetty.Server;
import org.browsermob.proxy.jetty.jetty.servlet.ServletHttpContext;
import org.browsermob.proxy.jetty.util.InetAddrPort;
import org.browsermob.proxy.jetty.util.Resource;

import javax.servlet.http.HttpServlet;

// TODO: Auto-generated Javadoc
/**
 * The Class DummyServer.
 */
public class DummyServer {

	/** The port. */
	private int port;

	/** The server. */
	private Server server = new Server();

	/** The handler. */
	private ResourceHandler handler;

	/**
	 * Instantiates a new dummy server.
	 * 
	 * @param port
	 *            the port
	 */
	public DummyServer(int port) {
		this.port = port;
	}

	/**
	 * Start.
	 * 
	 * @throws Exception
	 *             the exception
	 */
	public void start() throws Exception {
		HttpListener listener = new SocketListener(new InetAddrPort(port));

		server.addListener(listener);
		addServlet("/jsonrpc/", JsonServlet.class);
		addServlet("/cookie/", SetCookieServlet.class);
		addServlet("/echo/", EchoServlet.class);

		HttpContext context = new HttpContext();
		context.setContextPath("/");
		context.setBaseResource(Resource.newResource("src/test/dummy-server"));
		server.addContext(context);
		handler = new ResourceHandler();
		context.addHandler(handler);

		server.start();
	}

	/**
	 * Adds the servlet.
	 * 
	 * @param path
	 *            the path
	 * @param servletClass
	 *            the servlet class
	 * @throws ClassNotFoundException
	 *             the class not found exception
	 * @throws InstantiationException
	 *             the instantiation exception
	 * @throws IllegalAccessException
	 *             the illegal access exception
	 */
	private void addServlet(String path,
			Class<? extends HttpServlet> servletClass)
			throws ClassNotFoundException, InstantiationException,
			IllegalAccessException {
		ServletHttpContext servletContext = new ServletHttpContext();
		servletContext.setContextPath(path);
		servletContext.addServlet("/", servletClass.getName());
		server.addContext(servletContext);
	}

	/**
	 * Gets the handler.
	 * 
	 * @return the handler
	 */
	public ResourceHandler getHandler() {
		return handler;
	}

	/**
	 * Stop.
	 * 
	 * @throws InterruptedException
	 *             the interrupted exception
	 */
	public void stop() throws InterruptedException {
		server.stop();
	}

}
