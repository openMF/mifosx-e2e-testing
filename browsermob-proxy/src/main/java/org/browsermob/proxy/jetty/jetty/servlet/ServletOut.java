// ========================================================================
// $Id: ServletOut.java,v 1.7 2004/05/09 20:32:27 gregwilkins Exp $
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

import org.browsermob.proxy.jetty.util.IO;

import javax.servlet.ServletOutputStream;
import java.io.IOException;
import java.io.OutputStream;

// TODO: Auto-generated Javadoc
/**
 * The Class ServletOut.
 */
class ServletOut extends ServletOutputStream {

	/** The _out. */
	OutputStream _out;

	/* ------------------------------------------------------------ */
	/**
	 * Instantiates a new servlet out.
	 * 
	 * @param out
	 *            the out
	 */
	ServletOut(OutputStream out) {
		_out = out;
	}

	/* ------------------------------------------------------------ */
	/*
	 * (non-Javadoc)
	 * 
	 * @see java.io.OutputStream#write(int)
	 */
	public void write(int ch) throws IOException {
		_out.write(ch);
	}

	/* ------------------------------------------------------------ */
	/*
	 * (non-Javadoc)
	 * 
	 * @see java.io.OutputStream#write(byte[])
	 */
	public void write(byte[] b) throws IOException {
		_out.write(b);
	}

	/* ------------------------------------------------------------ */
	/*
	 * (non-Javadoc)
	 * 
	 * @see java.io.OutputStream#write(byte[], int, int)
	 */
	public void write(byte[] b, int o, int l) throws IOException {
		_out.write(b, o, l);
	}

	/* ------------------------------------------------------------ */
	/*
	 * (non-Javadoc)
	 * 
	 * @see java.io.OutputStream#flush()
	 */
	public void flush() throws IOException {
		_out.flush();
	}

	/* ------------------------------------------------------------ */
	/*
	 * (non-Javadoc)
	 * 
	 * @see java.io.OutputStream#close()
	 */
	public void close() throws IOException {
		super.close();
		_out.close();
	}

	/* ------------------------------------------------------------ */
	/**
	 * Disable.
	 * 
	 * @throws IOException
	 *             Signals that an I/O exception has occurred.
	 */
	public void disable() throws IOException {
		_out = IO.getNullStream();
	}

	/* ------------------------------------------------------------ */
	/*
	 * (non-Javadoc)
	 * 
	 * @see javax.servlet.ServletOutputStream#print(java.lang.String)
	 */
	public void print(String s) throws IOException {
		if (s != null)
			write(s.getBytes());
	}

	/* ------------------------------------------------------------ */
	/*
	 * (non-Javadoc)
	 * 
	 * @see javax.servlet.ServletOutputStream#println(java.lang.String)
	 */
	public void println(String s) throws IOException {
		if (s != null)
			write(s.getBytes());
		write(IO.CRLF_BYTES);
	}
}
