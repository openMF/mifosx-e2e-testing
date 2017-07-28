/*
 * Created on Jun 4, 2004
 *
 * To change the template for this generated file go to
 * Window - Preferences - Java - Code Generation - Code and Comments
 */
package org.browsermob.proxy.jetty.log;

import org.apache.commons.logging.Log;

// TODO: Auto-generated Javadoc
/* ------------------------------------------------------------ */
/**
 * Log Factory. This is a static facade over the commons logging LogFactory
 * class and it will normally simply delegate to the a discovered instance of
 * LogFactory. However, if the system property
 * "org.mortbay.log.LogFactory.noDiscovery" is set to true, the a static
 * instance of the Jetty Factory is created and this is directly delegated to,
 * thus avoiding the commons discovery mechanism (and problems associated with
 * it).
 * 
 * @author gregw
 */
public class LogFactory {

	/** The no discovery. */
	static boolean noDiscovery = Boolean
			.getBoolean("org.browsermob.proxy.jetty.log.LogFactory.noDiscovery");

	/** The factory. */
	static org.apache.commons.logging.LogFactory factory = noDiscovery ? new Factory()
			: org.apache.commons.logging.LogFactory.getFactory();

	/**
	 * Gets the log.
	 * 
	 * @param logClass
	 *            the log class
	 * @return the log
	 */
	public static Log getLog(Class logClass) {
		return factory.getInstance(logClass);
	}

	/**
	 * Gets the log.
	 * 
	 * @param log
	 *            the log
	 * @return the log
	 */
	public static Log getLog(String log) {
		return factory.getInstance(log);
	}

	/**
	 * Gets the factory.
	 * 
	 * @return the factory
	 */
	public static org.apache.commons.logging.LogFactory getFactory() {
		return factory;
	}

	/**
	 * Release.
	 * 
	 * @param loader
	 *            the loader
	 */
	public static void release(ClassLoader loader) {
		org.apache.commons.logging.LogFactory.release(loader);
	}

}
