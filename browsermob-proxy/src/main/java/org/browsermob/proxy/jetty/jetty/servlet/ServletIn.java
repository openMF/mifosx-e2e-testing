// ========================================================================
// $Id: ServletIn.java,v 1.6 2004/05/09 20:32:27 gregwilkins Exp $
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

import org.browsermob.proxy.jetty.http.HttpInputStream;

import javax.servlet.ServletInputStream;
import java.io.IOException;

// TODO: Auto-generated Javadoc
/**
 * The Class ServletIn.
 */
class ServletIn extends ServletInputStream {

	/** The _in. */
	HttpInputStream _in;

	/* ------------------------------------------------------------ */
	/**
	 * Instantiates a new servlet in.
	 * 
	 * @param in
	 *            the in
	 */
	ServletIn(HttpInputStream in) {
		_in = in;
	}

	/* ------------------------------------------------------------ */
	/*
	 * (non-Javadoc)
	 * 
	 * @see java.io.InputStream#read()
	 */
	public int read() throws IOException {
		return _in.read();
	}

	/* ------------------------------------------------------------ */
	/*
	 * (non-Javadoc)
	 * 
	 * @see java.io.InputStream#read(byte[])
	 */
	public int read(byte b[]) throws IOException {
		return _in.read(b);
	}

	/* ------------------------------------------------------------ */
	/*
	 * (non-Javadoc)
	 * 
	 * @see java.io.InputStream#read(byte[], int, int)
	 */
	public int read(byte b[], int off, int len) throws IOException {
		return _in.read(b, off, len);
	}

	/* ------------------------------------------------------------ */
	/*
	 * (non-Javadoc)
	 * 
	 * @see java.io.InputStream#skip(long)
	 */
	public long skip(long len) throws IOException {
		return _in.skip(len);
	}

	/* ------------------------------------------------------------ */
	/*
	 * (non-Javadoc)
	 * 
	 * @see java.io.InputStream#available()
	 */
	public int available() throws IOException {
		return _in.available();
	}

	/* ------------------------------------------------------------ */
	/*
	 * (non-Javadoc)
	 * 
	 * @see java.io.InputStream#close()
	 */
	public void close() throws IOException {
		_in.close();
	}

	/* ------------------------------------------------------------ */
	/*
	 * (non-Javadoc)
	 * 
	 * @see java.io.InputStream#markSupported()
	 */
	public boolean markSupported() {
		return _in.markSupported();
	}

	/* ------------------------------------------------------------ */
	/*
	 * (non-Javadoc)
	 * 
	 * @see java.io.InputStream#reset()
	 */
	public void reset() throws IOException {
		_in.reset();
	}

	/* ------------------------------------------------------------ */
	/*
	 * (non-Javadoc)
	 * 
	 * @see java.io.InputStream#mark(int)
	 */
	public void mark(int readlimit) {
		_in.mark(readlimit);
	}

}
