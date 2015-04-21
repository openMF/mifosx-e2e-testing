// ========================================================================
// $Id: BadResource.java,v 1.5 2004/05/09 20:32:49 gregwilkins Exp $
// Copyright 1996-2004 Mort Bay Consulting Pty. Ltd.
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

import java.io.*;
import java.net.URL;

// TODO: Auto-generated Javadoc
/* ------------------------------------------------------------ */
/**
 * Bad Resource.
 * 
 * A Resource that is returned for a bade URL. Acts as a resource that does not
 * exist and throws appropriate exceptions.
 * 
 * @version $Revision: 1.5 $
 * @author Greg Wilkins (gregw)
 */
class BadResource extends URLResource {
	/* ------------------------------------------------------------ */
	/** The _message. */
	private String _message = null;

	/* -------------------------------------------------------- */
	/**
	 * Instantiates a new bad resource.
	 * 
	 * @param url
	 *            the url
	 * @param message
	 *            the message
	 */
	BadResource(URL url, String message) {
		super(url, null);
		_message = message;
	}

	/* -------------------------------------------------------- */
	/*
	 * (non-Javadoc)
	 * 
	 * @see org.browsermob.proxy.jetty.util.URLResource#exists()
	 */
	public boolean exists() {
		return false;
	}

	/* -------------------------------------------------------- */
	/*
	 * (non-Javadoc)
	 * 
	 * @see org.browsermob.proxy.jetty.util.URLResource#lastModified()
	 */
	public long lastModified() {
		return -1;
	}

	/* -------------------------------------------------------- */
	/*
	 * (non-Javadoc)
	 * 
	 * @see org.browsermob.proxy.jetty.util.URLResource#isDirectory()
	 */
	public boolean isDirectory() {
		return false;
	}

	/* --------------------------------------------------------- */
	/*
	 * (non-Javadoc)
	 * 
	 * @see org.browsermob.proxy.jetty.util.URLResource#length()
	 */
	public long length() {
		return -1;
	}

	/* ------------------------------------------------------------ */
	/*
	 * (non-Javadoc)
	 * 
	 * @see org.browsermob.proxy.jetty.util.URLResource#getFile()
	 */
	public File getFile() {
		return null;
	}

	/* --------------------------------------------------------- */
	/*
	 * (non-Javadoc)
	 * 
	 * @see org.browsermob.proxy.jetty.util.URLResource#getInputStream()
	 */
	public InputStream getInputStream() throws IOException {
		throw new FileNotFoundException(_message);
	}

	/* --------------------------------------------------------- */
	/*
	 * (non-Javadoc)
	 * 
	 * @see org.browsermob.proxy.jetty.util.URLResource#getOutputStream()
	 */
	public OutputStream getOutputStream() throws java.io.IOException,
			SecurityException {
		throw new FileNotFoundException(_message);
	}

	/* --------------------------------------------------------- */
	/*
	 * (non-Javadoc)
	 * 
	 * @see org.browsermob.proxy.jetty.util.URLResource#delete()
	 */
	public boolean delete() throws SecurityException {
		throw new SecurityException(_message);
	}

	/* --------------------------------------------------------- */
	/*
	 * (non-Javadoc)
	 * 
	 * @see
	 * org.browsermob.proxy.jetty.util.URLResource#renameTo(org.browsermob.proxy
	 * .jetty.util.Resource)
	 */
	public boolean renameTo(Resource dest) throws SecurityException {
		throw new SecurityException(_message);
	}

	/* --------------------------------------------------------- */
	/*
	 * (non-Javadoc)
	 * 
	 * @see org.browsermob.proxy.jetty.util.URLResource#list()
	 */
	public String[] list() {
		return null;
	}

	/* ------------------------------------------------------------ */
	/*
	 * (non-Javadoc)
	 * 
	 * @see org.browsermob.proxy.jetty.util.URLResource#toString()
	 */
	public String toString() {
		return super.toString() + "; BadResource=" + _message;
	}

}
