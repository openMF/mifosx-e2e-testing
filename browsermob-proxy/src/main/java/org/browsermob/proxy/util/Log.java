/*
 * 
 */
package org.browsermob.proxy.util;

import java.util.logging.*;

// TODO: Auto-generated Javadoc
/**
 * The Class Log.
 */
public class Log {
	static {
		Logger logger = Logger.getLogger("");
		Handler[] handlers = logger.getHandlers();
		for (Handler handler : handlers) {
			logger.removeHandler(handler);
		}

		ConsoleHandler handler = new ConsoleHandler();
		handler.setFormatter(new StandardFormatter());
		handler.setLevel(Level.FINE);
		logger.addHandler(handler);
	}

	static {
		// tell commons-logging to use the JDK logging (otherwise it would
		// default to log4j
		System.setProperty("org.apache.commons.logging.Log",
				"org.apache.commons.logging.impl.Jdk14Logger");
	}

	/** The logger. */
	protected Logger logger;

	/** The class name. */
	private String className;

	/**
	 * Instantiates a new log.
	 */
	public Log() {
		Exception e = new Exception();
		className = e.getStackTrace()[1].getClassName();
		logger = Logger.getLogger(className);
	}

	/**
	 * Instantiates a new log.
	 * 
	 * @param clazz
	 *            the clazz
	 */
	public Log(Class clazz) {
		className = clazz.getName();
		logger = Logger.getLogger(className);
	}

	/**
	 * Severe.
	 * 
	 * @param msg
	 *            the msg
	 * @param e
	 *            the e
	 */
	public void severe(String msg, Throwable e) {
		log(Level.SEVERE, msg, e);
	}

	/**
	 * Severe.
	 * 
	 * @param msg
	 *            the msg
	 * @param args
	 *            the args
	 */
	public void severe(String msg, Object... args) {
		log(Level.SEVERE, msg, args);
	}

	/**
	 * Severe.
	 * 
	 * @param msg
	 *            the msg
	 * @param e
	 *            the e
	 * @param args
	 *            the args
	 */
	public void severe(String msg, Throwable e, Object... args) {
		log(Level.SEVERE, msg, e, args);
	}

	/**
	 * Severe and rethrow.
	 * 
	 * @param msg
	 *            the msg
	 * @param e
	 *            the e
	 * @param args
	 *            the args
	 * @return the runtime exception
	 */
	public RuntimeException severeAndRethrow(String msg, Throwable e,
			Object... args) {
		log(Level.SEVERE, msg, e, args);

		// noinspection ThrowableInstanceNeverThrown
		return new RuntimeException(new java.util.Formatter().format(msg, args)
				.toString());
	}

	/**
	 * Warn.
	 * 
	 * @param msg
	 *            the msg
	 * @param e
	 *            the e
	 */
	public void warn(String msg, Throwable e) {
		log(Level.WARNING, msg, e);
	}

	/**
	 * Warn.
	 * 
	 * @param msg
	 *            the msg
	 * @param args
	 *            the args
	 */
	public void warn(String msg, Object... args) {
		log(Level.WARNING, msg, args);
	}

	/**
	 * Warn.
	 * 
	 * @param msg
	 *            the msg
	 * @param e
	 *            the e
	 * @param args
	 *            the args
	 */
	public void warn(String msg, Throwable e, Object... args) {
		log(Level.WARNING, msg, e, args);
	}

	/**
	 * Info.
	 * 
	 * @param msg
	 *            the msg
	 * @param e
	 *            the e
	 */
	public void info(String msg, Throwable e) {
		log(Level.INFO, msg, e);
	}

	/**
	 * Info.
	 * 
	 * @param msg
	 *            the msg
	 * @param args
	 *            the args
	 */
	public void info(String msg, Object... args) {
		log(Level.INFO, msg, args);
	}

	/**
	 * Info.
	 * 
	 * @param msg
	 *            the msg
	 * @param e
	 *            the e
	 * @param args
	 *            the args
	 */
	public void info(String msg, Throwable e, Object... args) {
		log(Level.INFO, msg, e, args);
	}

	/**
	 * Fine.
	 * 
	 * @param msg
	 *            the msg
	 * @param e
	 *            the e
	 */
	public void fine(String msg, Throwable e) {
		log(Level.FINE, msg, e);
	}

	/**
	 * Fine.
	 * 
	 * @param msg
	 *            the msg
	 * @param args
	 *            the args
	 */
	public void fine(String msg, Object... args) {
		log(Level.FINE, msg, args);
	}

	/**
	 * Fine.
	 * 
	 * @param msg
	 *            the msg
	 * @param e
	 *            the e
	 * @param args
	 *            the args
	 */
	public void fine(String msg, Throwable e, Object... args) {
		log(Level.FINE, msg, e, args);
	}

	/**
	 * Log.
	 * 
	 * @param level
	 *            the level
	 * @param msg
	 *            the msg
	 * @param e
	 *            the e
	 */
	private void log(Level level, String msg, Throwable e) {
		logger.log(level, msg, e);
	}

	/**
	 * Log.
	 * 
	 * @param level
	 *            the level
	 * @param msg
	 *            the msg
	 * @param args
	 *            the args
	 */
	private void log(Level level, String msg, Object... args) {
		logger.log(level, msg, args);
	}

	/**
	 * Log.
	 * 
	 * @param level
	 *            the level
	 * @param msg
	 *            the msg
	 * @param e
	 *            the e
	 * @param args
	 *            the args
	 */
	private void log(Level level, String msg, Throwable e, Object... args) {
		LogRecord lr = new LogRecord(level, msg);
		lr.setThrown(e);
		lr.setParameters(args);
		lr.setSourceMethodName("");
		lr.setSourceClassName(className);
		lr.setLoggerName(className);
		logger.log(lr);
	}
}