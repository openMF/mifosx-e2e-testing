// ========================================================================
// $Id: LifeCycleThread.java,v 1.9 2005/08/13 00:01:28 gregwilkins Exp $
// Copyright 1999-2004 Mort Bay Consulting Pty. Ltd.
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

package org.browsermob.proxy.jetty.util;

import org.apache.commons.logging.Log;
import org.browsermob.proxy.jetty.log.LogFactory;

import java.io.InterruptedIOException;

// TODO: Auto-generated Javadoc
/* ------------------------------------------------------------ */
/**
 * Base Thread class implementing LifeCycle.
 * 
 * @version $Revision: 1.9 $
 * @author Greg Wilkins (gregw)
 */
public abstract class LifeCycleThread implements LifeCycle, Runnable {

	/** The log. */
	private static Log log = LogFactory.getLog(LifeCycleThread.class);

	/** The _running. */
	private boolean _running;

	/** The _daemon. */
	private boolean _daemon;

	/** The _thread. */
	private Thread _thread;

	/* ------------------------------------------------------------ */
	/**
	 * Checks if is daemon.
	 * 
	 * @return true, if is daemon
	 */
	public boolean isDaemon() {
		return _daemon;
	}

	/* ------------------------------------------------------------ */
	/**
	 * Sets the daemon.
	 * 
	 * @param d
	 *            the new daemon
	 */
	public void setDaemon(boolean d) {
		_daemon = d;
	}

	/* ------------------------------------------------------------ */
	/**
	 * Gets the thread.
	 * 
	 * @return the thread
	 */
	public Thread getThread() {
		return _thread;
	}

	/* ------------------------------------------------------------ */
	/*
	 * (non-Javadoc)
	 * 
	 * @see org.browsermob.proxy.jetty.util.LifeCycle#isStarted()
	 */
	public boolean isStarted() {
		return _running;
	}

	/* ------------------------------------------------------------ */
	/*
	 * (non-Javadoc)
	 * 
	 * @see org.browsermob.proxy.jetty.util.LifeCycle#start()
	 */
	public synchronized void start() throws Exception {
		if (_running) {
			log.debug("Already started");
			return;
		}
		_running = true;
		if (_thread == null) {
			_thread = new Thread(this);
			_thread.setDaemon(_daemon);
		}
		_thread.start();
	}

	/* ------------------------------------------------------------ */
	/*
	 * (non-Javadoc)
	 * 
	 * @see org.browsermob.proxy.jetty.util.LifeCycle#stop()
	 */
	public synchronized void stop() throws InterruptedException {
		_running = false;
		if (_thread != null) {
			_thread.interrupt();
			_thread.join();
		}
	}

	/* ------------------------------------------------------------ */
	/*
	 * (non-Javadoc)
	 * 
	 * @see java.lang.Runnable#run()
	 */
	public final void run() {
		try {
			while (_running) {
				try {
					loop();
				} catch (InterruptedException e) {
					LogSupport.ignore(log, e);
				} catch (InterruptedIOException e) {
					LogSupport.ignore(log, e);
				} catch (Exception e) {
					if (exception(e))
						break;
				} catch (Error e) {
					if (error(e))
						break;
				}
			}
		} finally {
			_running = false;
		}
	}

	/* ------------------------------------------------------------ */
	/**
	 * Handle exception from loop.
	 * 
	 * @param e
	 *            The exception
	 * @return True of the loop should continue;
	 */
	public boolean exception(Exception e) {
		log.warn(LogSupport.EXCEPTION, e);
		return true;
	}

	/* ------------------------------------------------------------ */
	/**
	 * Handle error from loop.
	 * 
	 * @param e
	 *            The exception
	 * @return True of the loop should continue;
	 */
	public boolean error(Error e) {
		log.warn(LogSupport.EXCEPTION, e);
		return true;
	}

	/* ------------------------------------------------------------ */
	/**
	 * Loop.
	 * 
	 * @throws InterruptedException
	 *             the interrupted exception
	 * @throws InterruptedIOException
	 *             the interrupted io exception
	 * @throws Exception
	 *             the exception
	 */
	public abstract void loop() throws InterruptedException,
			InterruptedIOException, Exception;

}
