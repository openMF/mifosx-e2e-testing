// ========================================================================
// $Id: ServletWriter.java,v 1.16 2005/08/13 00:01:27 gregwilkins Exp $
// Copyright 2000-2004 Mort Bay Consulting Pty. Ltd.
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

package org.browsermob.proxy.jetty.jetty.servlet;

import org.apache.commons.logging.Log;
import org.browsermob.proxy.jetty.http.HttpOutputStream;
import org.browsermob.proxy.jetty.log.LogFactory;
import org.browsermob.proxy.jetty.util.IO;
import org.browsermob.proxy.jetty.util.LogSupport;

import java.io.*;

// TODO: Auto-generated Javadoc
/* ------------------------------------------------------------ */
/**
 * Servlet PrintWriter. This writer can be disabled. It is crying out for
 * optimization.
 * 
 * @version $Revision: 1.16 $
 * @author Greg Wilkins (gregw)
 */
class ServletWriter extends PrintWriter {

	/** The log. */
	private static Log log = LogFactory.getLog(ServletWriter.class);

	/** The encoding. */
	String encoding = null;

	/** The os. */
	OutputStream os = null;

	/** The written. */
	boolean written = false;

	/* ------------------------------------------------------------ */
	/**
	 * Instantiates a new servlet writer.
	 * 
	 * @param os
	 *            the os
	 * @throws IOException
	 *             Signals that an I/O exception has occurred.
	 */
	ServletWriter(OutputStream os) throws IOException {
		super((os instanceof HttpOutputStream) ? ((HttpOutputStream) os)
				.getWriter(null) : new OutputStreamWriter(os));
		this.os = os;
	}

	/* ------------------------------------------------------------ */
	/**
	 * Instantiates a new servlet writer.
	 * 
	 * @param os
	 *            the os
	 * @param encoding
	 *            the encoding
	 * @throws IOException
	 *             Signals that an I/O exception has occurred.
	 */
	ServletWriter(OutputStream os, String encoding) throws IOException {
		super((os instanceof HttpOutputStream) ? ((HttpOutputStream) os)
				.getWriter(encoding) : new OutputStreamWriter(os, encoding));
		this.os = os;
		this.encoding = encoding;
	}

	/* ------------------------------------------------------------ */
	/**
	 * Disable.
	 */
	public void disable() {
		out = IO.getNullWriter();
	}

	/* ------------------------------------------------------------ */
	/**
	 * Reset.
	 */
	public void reset() {
		try {
			out = IO.getNullWriter();
			super.flush();
			out = new OutputStreamWriter(os, encoding);
			written = false;
		} catch (UnsupportedEncodingException e) {
			log.fatal(e);
			System.exit(1);
		}
	}

	/* ------------------------------------------------------------ */
	/**
	 * Checks if is written.
	 * 
	 * @return true, if is written
	 */
	public boolean isWritten() {
		return written;
	}

	/* ------------------------------------------------------------ */
	/*
	 * (non-Javadoc)
	 * 
	 * @see java.io.PrintWriter#print(boolean)
	 */
	public void print(boolean p) {
		written = true;
		super.print(p);
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see java.io.PrintWriter#print(char)
	 */
	public void print(char p) {
		written = true;
		super.print(p);
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see java.io.PrintWriter#print(char[])
	 */
	public void print(char[] p) {
		written = true;
		super.print(p);
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see java.io.PrintWriter#print(double)
	 */
	public void print(double p) {
		written = true;
		super.print(p);
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see java.io.PrintWriter#print(float)
	 */
	public void print(float p) {
		written = true;
		super.print(p);
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see java.io.PrintWriter#print(int)
	 */
	public void print(int p) {
		written = true;
		super.print(p);
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see java.io.PrintWriter#print(long)
	 */
	public void print(long p) {
		written = true;
		super.print(p);
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see java.io.PrintWriter#print(java.lang.Object)
	 */
	public void print(Object p) {
		written = true;
		super.print(p);
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see java.io.PrintWriter#print(java.lang.String)
	 */
	public void print(String p) {
		written = true;
		super.print(p);
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see java.io.PrintWriter#println()
	 */
	public void println() {
		written = true;
		super.println();
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see java.io.PrintWriter#println(boolean)
	 */
	public void println(boolean p) {
		written = true;
		super.println(p);
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see java.io.PrintWriter#println(char)
	 */
	public void println(char p) {
		written = true;
		super.println(p);
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see java.io.PrintWriter#println(char[])
	 */
	public void println(char[] p) {
		written = true;
		super.println(p);
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see java.io.PrintWriter#println(double)
	 */
	public void println(double p) {
		written = true;
		super.println(p);
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see java.io.PrintWriter#println(float)
	 */
	public void println(float p) {
		written = true;
		super.println(p);
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see java.io.PrintWriter#println(int)
	 */
	public void println(int p) {
		written = true;
		super.println(p);
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see java.io.PrintWriter#println(long)
	 */
	public void println(long p) {
		written = true;
		super.println(p);
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see java.io.PrintWriter#println(java.lang.Object)
	 */
	public void println(Object p) {
		written = true;
		super.println(p);
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see java.io.PrintWriter#println(java.lang.String)
	 */
	public void println(String p) {
		written = true;
		super.println(p);
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see java.io.PrintWriter#write(int)
	 */
	public void write(int c) {
		try {
			if (out == null)
				throw new IOException("closed");
			written = true;
			out.write(c);
		} catch (IOException e) {
			LogSupport.ignore(log, e);
			setError();
		}
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see java.io.PrintWriter#write(char[], int, int)
	 */
	public void write(char[] cbuf, int off, int len) {
		try {
			if (out == null)
				throw new IOException("closed");
			written = true;
			out.write(cbuf, off, len);
		} catch (IOException e) {
			LogSupport.ignore(log, e);
			setError();
		}
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see java.io.PrintWriter#write(char[])
	 */
	public void write(char[] cbuf) {
		try {
			if (out == null)
				throw new IOException("closed");
			written = true;
			out.write(cbuf, 0, cbuf.length);
		} catch (IOException e) {
			LogSupport.ignore(log, e);
			setError();
		}
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see java.io.PrintWriter#write(java.lang.String, int, int)
	 */
	public void write(String s, int off, int len) {
		try {
			if (out == null)
				throw new IOException("closed");
			written = true;
			out.write(s, off, len);
		} catch (IOException e) {
			LogSupport.ignore(log, e);
			setError();
		}
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see java.io.PrintWriter#write(java.lang.String)
	 */
	public void write(String s) {
		try {
			if (out == null)
				throw new IOException("closed");
			written = true;
			out.write(s, 0, s.length());
		} catch (IOException e) {
			LogSupport.ignore(log, e);
			setError();
		}
	}
}
