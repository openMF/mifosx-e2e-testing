/*
 * 
 */
package org.browsermob.proxy.guice;

import com.google.inject.Inject;
import com.google.inject.Provider;
import com.google.inject.name.Named;
import com.google.inject.servlet.GuiceFilter;
import org.eclipse.jetty.server.Server;
import org.eclipse.jetty.servlet.DefaultServlet;
import org.eclipse.jetty.servlet.ServletContextHandler;

// TODO: Auto-generated Javadoc
/**
 * The Class JettyServerProvider.
 */
public class JettyServerProvider implements Provider<Server> {

	/** The server. */
	private Server server;

	/**
	 * Instantiates a new jetty server provider.
	 * 
	 * @param port
	 *            the port
	 */
	@Inject
	public JettyServerProvider(@Named("port") int port) {
		server = new Server(port);

		ServletContextHandler context = new ServletContextHandler(
				ServletContextHandler.SESSIONS);
		context.setContextPath("/");

		context.addFilter(GuiceFilter.class, "/*", 0);
		context.addServlet(DefaultServlet.class, "/");

		server.setHandler(context);
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see com.google.inject.Provider#get()
	 */
	@Override
	public Server get() {
		return server;
	}
}
