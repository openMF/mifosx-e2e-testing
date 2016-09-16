// ========================================================================
// Copyright (c) 1997 MortBay Consulting, Sydney
// $Id: NullLogSink.java,v 1.1 2004/06/04 21:37:20 gregwilkins Exp $
// ========================================================================

package org.browsermob.proxy.jetty.log;

// TODO: Auto-generated Javadoc
/**
 * The Class NullLogSink.
 */
public class NullLogSink implements LogSink {

	/** The started. */
	private boolean started;

	/**
	 * Sets the options.
	 * 
	 * @param options
	 *            the new options
	 */
	public void setOptions(String options) {
	}

	/**
	 * Gets the options.
	 * 
	 * @return the options
	 */
	public String getOptions() {
		return null;
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see org.browsermob.proxy.jetty.log.LogSink#log(java.lang.String,
	 * java.lang.Object, org.browsermob.proxy.jetty.log.Frame, long)
	 */
	public void log(String tag, Object msg, Frame frame, long time) {
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see org.browsermob.proxy.jetty.log.LogSink#log(java.lang.String)
	 */
	public void log(String formattedLog) {
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see org.browsermob.proxy.jetty.util.LifeCycle#start()
	 */
	public void start() {
		started = true;
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see org.browsermob.proxy.jetty.util.LifeCycle#stop()
	 */
	public void stop() {
		started = false;
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see org.browsermob.proxy.jetty.util.LifeCycle#isStarted()
	 */
	public boolean isStarted() {
		return started;
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see
	 * org.browsermob.proxy.jetty.log.LogSink#setLogImpl(org.browsermob.proxy
	 * .jetty.log.LogImpl)
	 */
	public void setLogImpl(LogImpl impl) {
	}
}
