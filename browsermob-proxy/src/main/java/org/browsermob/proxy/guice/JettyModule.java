/*
 * 
 */
package org.browsermob.proxy.guice;

import com.google.inject.Binder;
import com.google.inject.Module;
import org.eclipse.jetty.server.Server;

// TODO: Auto-generated Javadoc
/**
 * The Class JettyModule.
 */
public class JettyModule implements Module {

	/*
	 * (non-Javadoc)
	 * 
	 * @see com.google.inject.Module#configure(com.google.inject.Binder)
	 */
	@Override
	public void configure(Binder binder) {
		binder.bind(Server.class).toProvider(JettyServerProvider.class);
	}
}
