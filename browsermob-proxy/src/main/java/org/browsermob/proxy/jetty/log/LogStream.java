//========================================================================
//$Id: LogStream.java,v 1.3 2005/08/13 00:01:27 gregwilkins Exp $
//Copyright 2004 Mort Bay Consulting Pty. Ltd.
//------------------------------------------------------------------------
//Licensed under the Apache License, Version 2.0 (the "License");
//you may not use this file except in compliance with the License.
//You may obtain a copy of the License at 
//http://www.apache.org/licenses/LICENSE-2.0
//Unless required by applicable law or agreed to in writing, software
//distributed under the License is distributed on an "AS IS" BASIS,
//WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
//See the License for the specific language governing permissions and
//limitations under the License.
//========================================================================

package org.browsermob.proxy.jetty.log;

import org.apache.commons.logging.Log;
import org.browsermob.proxy.jetty.util.ByteArrayOutputStream2;

import java.io.PrintStream;

// TODO: Auto-generated Javadoc
/**
 * Divert a PrintStream to commons logging. The stderr and stdout streams can be
 * diverted to logs named "stderr" and "stdout" using this class.
 * 
 */
public class LogStream extends PrintStream {

	/**
	 * The Class STDERR.
	 */
	public static class STDERR extends LogStream {
		/**
		 * Instantiates a new stderr.
		 */
		STDERR() {
			super("STDERR ", LogFactory.getLog("stderr"));
		}
	}

	/**
	 * The Class STDOUT.
	 */
	public static class STDOUT extends LogStream {
		/**
		 * Instantiates a new stdout.
		 */
		STDOUT() {
			super("STDOUT ", LogFactory.getLog("stdout"));
		}
	}

	/*-------------------------------------------------------------------*/
	/** The Constant STDERR_STREAM. */
	final static PrintStream STDERR_STREAM = System.err;

	/** The Constant STDOUT_STREAM. */
	final static PrintStream STDOUT_STREAM = System.out;

	/* ------------------------------------------------------------ */
	/**
	 * Log standard error stream. If set to true, output to stderr will be
	 * directed to an instance of LogStream and logged. Beware of log loops from
	 * logs that write to stderr.
	 * 
	 * @param log
	 *            the new log std err
	 */
	public static void setLogStdErr(boolean log) {
		if (log) {
			if (!(System.err instanceof LogStream))
				System.setErr(new LogStream.STDERR());
		} else
			System.setErr(STDERR_STREAM);
	}

	/* ------------------------------------------------------------ */
	/**
	 * Gets the log std err.
	 * 
	 * @return the log std err
	 */
	public static boolean getLogStdErr() {
		return System.err instanceof LogStream;
	}

	/* ------------------------------------------------------------ */
	/**
	 * Log standard output stream. If set to true, output to stdout will be
	 * directed to an instance of LogStream and logged. Beware of log loops from
	 * logs that write to stdout.
	 * 
	 * @param log
	 *            the new log std out
	 */
	public static void setLogStdOut(boolean log) {
		if (log) {
			if (!(System.out instanceof LogStream))
				System.setOut(new LogStream.STDOUT());
		} else
			System.setOut(STDOUT_STREAM);
	}

	/* ------------------------------------------------------------ */
	/**
	 * Gets the log std out.
	 * 
	 * @return the log std out
	 */
	public static boolean getLogStdOut() {
		return System.out instanceof LogStream;
	}

	/* ------------------------------------------------------------ */
	/** The tag. */
	private String tag;

	/** The log. */
	private Log log;

	/** The bout. */
	private ByteArrayOutputStream2 bout;

	/* 
     */
	/*
	 * (non-Javadoc)
	 * 
	 * @see java.io.PrintStream#flush()
	 */
	public void flush() {
		super.flush();
		if (bout.size() > 0) {
			String s = new String(bout.getBuf(), 0, bout.size()).trim();
			if (s.length() > 0 && log != null)
				log.info(tag + ": " + s);
		}
		bout.reset();
	}

	/**
	 * Instantiates a new log stream.
	 * 
	 * @param tag
	 *            the tag
	 * @param log
	 *            the log
	 */
	public LogStream(String tag, Log log) {
		super(new ByteArrayOutputStream2(128), true);
		bout = (ByteArrayOutputStream2) this.out;
		this.tag = tag;
		this.log = log;
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see java.io.PrintStream#close()
	 */
	public void close() {
		flush();
		super.close();
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see java.io.PrintStream#println()
	 */
	public void println() {
		super.println();
		flush();
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see java.io.PrintStream#println(boolean)
	 */
	public void println(boolean arg0) {
		super.println(arg0);
		flush();
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see java.io.PrintStream#println(char)
	 */
	public void println(char arg0) {
		super.println(arg0);
		flush();
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see java.io.PrintStream#println(char[])
	 */
	public void println(char[] arg0) {
		super.println(arg0);
		flush();
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see java.io.PrintStream#println(double)
	 */
	public void println(double arg0) {
		super.println(arg0);
		flush();
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see java.io.PrintStream#println(float)
	 */
	public void println(float arg0) {
		super.println(arg0);
		flush();
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see java.io.PrintStream#println(int)
	 */
	public void println(int arg0) {
		super.println(arg0);
		flush();
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see java.io.PrintStream#println(long)
	 */
	public void println(long arg0) {
		super.println(arg0);
		flush();
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see java.io.PrintStream#println(java.lang.Object)
	 */
	public void println(Object arg0) {
		super.println(arg0);
		flush();
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see java.io.PrintStream#println(java.lang.String)
	 */
	public void println(String arg0) {
		super.println(arg0);
		flush();
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see java.io.PrintStream#write(byte[], int, int)
	 */
	public void write(byte[] arg0, int arg1, int arg2) {
		super.write(arg0, arg1, arg2);
		flush();
	}

}
