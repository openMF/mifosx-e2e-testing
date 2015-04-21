// ========================================================================
// $Id: URLResource.java,v 1.9 2005/08/13 00:01:28 gregwilkins Exp $
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

import org.apache.commons.logging.Log;
import org.browsermob.proxy.jetty.log.LogFactory;

import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.MalformedURLException;
import java.net.URL;
import java.net.URLConnection;
import java.security.Permission;

// TODO: Auto-generated Javadoc
/* ------------------------------------------------------------ */
/**
 * Abstract resource class.
 * 
 * @version $Id: URLResource.java,v 1.9 2005/08/13 00:01:28 gregwilkins Exp $
 * @author Nuno Preguiça
 * @author Greg Wilkins (gregw)
 */
public class URLResource extends Resource {

	/** The log. */
	private static Log log = LogFactory.getLog(URLResource.class);

	/** The _url. */
	protected URL _url;

	/** The _url string. */
	protected String _urlString;

	/** The _connection. */
	protected transient URLConnection _connection;

	/** The _in. */
	protected transient InputStream _in = null;

	/* ------------------------------------------------------------ */
	/**
	 * Instantiates a new uRL resource.
	 * 
	 * @param url
	 *            the url
	 * @param connection
	 *            the connection
	 */
	protected URLResource(URL url, URLConnection connection) {
		_url = url;
		_urlString = _url.toString();
		_connection = connection;
	}

	/* ------------------------------------------------------------ */
	/**
	 * Check connection.
	 * 
	 * @return true, if successful
	 */
	protected synchronized boolean checkConnection() {
		if (_connection == null) {
			try {
				_connection = _url.openConnection();
			} catch (IOException e) {
				LogSupport.ignore(log, e);
			}
		}
		return _connection != null;
	}

	/* ------------------------------------------------------------ */
	/**
	 * Release any resources held by the resource.
	 */
	public synchronized void release() {
		if (_in != null) {
			try {
				_in.close();
			} catch (IOException e) {
				LogSupport.ignore(log, e);
			}
			_in = null;
		}

		if (_connection != null)
			_connection = null;
	}

	/* ------------------------------------------------------------ */
	/**
	 * Returns true if the respresened resource exists.
	 * 
	 * @return true, if successful
	 */
	public boolean exists() {
		try {
			synchronized (this) {
				if (checkConnection() && _in == null)
					_in = _connection.getInputStream();
			}
		} catch (IOException e) {
			LogSupport.ignore(log, e);
		}
		return _in != null;
	}

	/* ------------------------------------------------------------ */
	/**
	 * Returns true if the respresenetd resource is a container/directory. If
	 * the resource is not a file, resources ending with "/" are considered
	 * directories.
	 * 
	 * @return true, if is directory
	 */
	public boolean isDirectory() {
		return exists() && _url.toString().endsWith("/");
	}

	/* ------------------------------------------------------------ */
	/**
	 * Returns the last modified time.
	 * 
	 * @return the long
	 */
	public long lastModified() {
		if (checkConnection())
			return _connection.getLastModified();
		return -1;
	}

	/* ------------------------------------------------------------ */
	/**
	 * Return the length of the resource.
	 * 
	 * @return the long
	 */
	public long length() {
		if (checkConnection())
			return _connection.getContentLength();
		return -1;
	}

	/* ------------------------------------------------------------ */
	/**
	 * Returns an URL representing the given resource.
	 * 
	 * @return the url
	 */
	public URL getURL() {
		return _url;
	}

	/* ------------------------------------------------------------ */
	/**
	 * Returns an File representing the given resource or NULL if this is not
	 * possible.
	 * 
	 * @return the file
	 * @throws IOException
	 *             Signals that an I/O exception has occurred.
	 */
	public File getFile() throws IOException {
		// Try the permission hack
		if (checkConnection()) {
			Permission perm = _connection.getPermission();
			if (perm instanceof java.io.FilePermission)
				return new File(perm.getName());
		}

		// Try the URL file arg
		try {
			return new File(_url.getFile());
		} catch (Exception e) {
			LogSupport.ignore(log, e);
		}

		// Don't know the file
		return null;
	}

	/* ------------------------------------------------------------ */
	/**
	 * Returns the name of the resource.
	 * 
	 * @return the name
	 */
	public String getName() {
		return _url.toExternalForm();
	}

	/* ------------------------------------------------------------ */
	/**
	 * Returns an input stream to the resource.
	 * 
	 * @return the input stream
	 * @throws IOException
	 *             Signals that an I/O exception has occurred.
	 */
	public synchronized InputStream getInputStream() throws java.io.IOException {
		if (!checkConnection())
			throw new IOException("Invalid resource");

		try {
			if (_in != null) {
				InputStream in = _in;
				_in = null;
				return in;
			}
			return _connection.getInputStream();
		} finally {
			_connection = null;
		}
	}

	/* ------------------------------------------------------------ */
	/**
	 * Returns an output stream to the resource.
	 * 
	 * @return the output stream
	 * @throws IOException
	 *             Signals that an I/O exception has occurred.
	 * @throws SecurityException
	 *             the security exception
	 */
	public OutputStream getOutputStream() throws java.io.IOException,
			SecurityException {
		throw new IOException("Output not supported");
	}

	/* ------------------------------------------------------------ */
	/**
	 * Deletes the given resource.
	 * 
	 * @return true, if successful
	 * @throws SecurityException
	 *             the security exception
	 */
	public boolean delete() throws SecurityException {
		throw new SecurityException("Delete not supported");
	}

	/* ------------------------------------------------------------ */
	/**
	 * Rename the given resource.
	 * 
	 * @param dest
	 *            the dest
	 * @return true, if successful
	 * @throws SecurityException
	 *             the security exception
	 */
	public boolean renameTo(Resource dest) throws SecurityException {
		throw new SecurityException("RenameTo not supported");
	}

	/* ------------------------------------------------------------ */
	/**
	 * Returns a list of resource names contained in the given resource.
	 * 
	 * @return the string[]
	 */
	public String[] list() {
		return null;
	}

	/* ------------------------------------------------------------ */
	/**
	 * Returns the resource contained inside the current resource with the given
	 * name.
	 * 
	 * @param path
	 *            the path
	 * @return the resource
	 * @throws IOException
	 *             Signals that an I/O exception has occurred.
	 * @throws MalformedURLException
	 *             the malformed url exception
	 */
	public Resource addPath(String path) throws IOException,
			MalformedURLException {
		if (path == null)
			return null;

		path = URI.canonicalPath(path);

		return newResource(URI.addPaths(_url.toExternalForm(), path));
	}

	/* ------------------------------------------------------------ */
	/*
	 * (non-Javadoc)
	 * 
	 * @see java.lang.Object#toString()
	 */
	public String toString() {
		return _urlString;
	}

	/* ------------------------------------------------------------ */
	/*
	 * (non-Javadoc)
	 * 
	 * @see java.lang.Object#hashCode()
	 */
	public int hashCode() {
		return _url.hashCode();
	}

	/* ------------------------------------------------------------ */
	/*
	 * (non-Javadoc)
	 * 
	 * @see java.lang.Object#equals(java.lang.Object)
	 */
	public boolean equals(Object o) {
		return o instanceof URLResource && _url.equals(((URLResource) o)._url);
	}

}
