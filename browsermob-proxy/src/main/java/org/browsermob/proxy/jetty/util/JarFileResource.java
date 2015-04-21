// ========================================================================
// $Id: JarFileResource.java,v 1.12 2005/08/13 00:01:28 gregwilkins Exp $
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
import java.net.JarURLConnection;
import java.net.URL;
import java.util.ArrayList;
import java.util.Enumeration;
import java.util.jar.JarEntry;
import java.util.jar.JarFile;

// TODO: Auto-generated Javadoc
/* ------------------------------------------------------------ */
/**
 * The Class JarFileResource.
 */
class JarFileResource extends JarResource {

	/** The log. */
	private static Log log = LogFactory.getLog(JarFileResource.class);

	/** The _jar file. */
	transient JarFile _jarFile;

	/** The _file. */
	transient File _file;

	/** The _list. */
	transient String[] _list;

	/** The _entry. */
	transient JarEntry _entry;

	/** The _directory. */
	transient boolean _directory;

	/** The _jar url. */
	transient String _jarUrl;

	/** The _path. */
	transient String _path;

	/** The _exists. */
	transient boolean _exists;

	/* -------------------------------------------------------- */
	/**
	 * Instantiates a new jar file resource.
	 * 
	 * @param url
	 *            the url
	 */
	JarFileResource(URL url) {
		super(url);
	}

	/* ------------------------------------------------------------ */
	/*
	 * (non-Javadoc)
	 * 
	 * @see org.browsermob.proxy.jetty.util.JarResource#release()
	 */
	public synchronized void release() {
		_list = null;
		_entry = null;
		_file = null;
		_jarFile = null;
		super.release();
	}

	/* ------------------------------------------------------------ */
	/*
	 * (non-Javadoc)
	 * 
	 * @see org.browsermob.proxy.jetty.util.JarResource#checkConnection()
	 */
	protected boolean checkConnection() {
		try {
			super.checkConnection();
		} finally {
			if (_jarConnection == null) {
				_entry = null;
				_file = null;
				_jarFile = null;
				_list = null;
			}
		}
		return _jarFile != null;
	}

	/* ------------------------------------------------------------ */
	/*
	 * (non-Javadoc)
	 * 
	 * @see org.browsermob.proxy.jetty.util.JarResource#newConnection()
	 */
	protected void newConnection() throws IOException {
		super.newConnection();

		_entry = null;
		_file = null;
		_jarFile = null;
		_list = null;

		int sep = _urlString.indexOf("!/");
		_jarUrl = _urlString.substring(0, sep + 2);
		_path = _urlString.substring(sep + 2);
		if (_path.length() == 0)
			_path = null;
		_jarFile = _jarConnection.getJarFile();
		_file = new File(_jarFile.getName());
	}

	/* ------------------------------------------------------------ */
	/**
	 * Returns true if the respresenetd resource exists.
	 * 
	 * @return true, if successful
	 */
	public boolean exists() {
		if (_exists)
			return true;

		if (_urlString.endsWith("!/")) {
			String file_url = _urlString.substring(4, _urlString.length() - 2);
			try {
				return newResource(file_url).exists();
			} catch (Exception e) {
				LogSupport.ignore(log, e);
				return false;
			}
		}

		boolean check = checkConnection();

		// Is this a root URL?
		if (_jarUrl != null && _path == null) {
			// Then if it exists it is a directory
			_directory = check;
			return true;
		} else {
			// Can we find a file for it?
			JarFile jarFile = null;
			if (check)
				// Yes
				jarFile = _jarFile;
			else {
				// No - so lets look if the root entry exists.
				try {
					jarFile = ((JarURLConnection) ((new URL(_jarUrl))
							.openConnection())).getJarFile();
				} catch (Exception e) {
					LogSupport.ignore(log, e);
				}
			}

			// Do we need to look more closely?
			if (jarFile != null && _entry == null && !_directory) {
				// OK - we have a JarFile, lets look at the entries for our path
				Enumeration e = jarFile.entries();
				while (e.hasMoreElements()) {
					JarEntry entry = (JarEntry) e.nextElement();
					String name = entry.getName().replace('\\', '/');

					// Do we have a match
					if (name.equals(_path)) {
						_entry = entry;
						// Is the match a directory
						_directory = _path.endsWith("/");
						break;
					} else if (_path.endsWith("/")) {
						if (name.startsWith(_path)) {
							_directory = true;
							break;
						}
					} else if (name.startsWith(_path)
							&& name.length() > _path.length()
							&& name.charAt(_path.length()) == '/') {
						_directory = true;
						break;
					}
				}
			}
		}

		_exists = (_directory || _entry != null);
		return _exists;
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
		return _urlString.endsWith("/") || exists() && _directory;
	}

	/* ------------------------------------------------------------ */
	/**
	 * Returns the last modified time.
	 * 
	 * @return the long
	 */
	public long lastModified() {
		if (checkConnection() && _file != null)
			return _file.lastModified();
		return -1;
	}

	/* ------------------------------------------------------------ */
	/*
	 * (non-Javadoc)
	 * 
	 * @see org.browsermob.proxy.jetty.util.URLResource#list()
	 */
	public synchronized String[] list() {
		if (isDirectory() && _list == null) {
			ArrayList list = new ArrayList(32);

			checkConnection();

			JarFile jarFile = _jarFile;
			if (jarFile == null) {
				try {
					jarFile = ((JarURLConnection) ((new URL(_jarUrl))
							.openConnection())).getJarFile();
				} catch (Exception e) {
					LogSupport.ignore(log, e);
				}
			}

			Enumeration e = jarFile.entries();
			String dir = _urlString.substring(_urlString.indexOf("!/") + 2);
			while (e.hasMoreElements()) {
				JarEntry entry = (JarEntry) e.nextElement();
				String name = entry.getName().replace('\\', '/');
				if (!name.startsWith(dir) || name.length() == dir.length())
					continue;
				String listName = name.substring(dir.length());
				int dash = listName.indexOf('/');
				if (dash >= 0) {
					listName = listName.substring(0, dash + 1);
					if (list.contains(listName))
						continue;
				}

				list.add(listName);
			}

			_list = new String[list.size()];
			list.toArray(_list);
		}
		return _list;
	}

	/* ------------------------------------------------------------ */
	/**
	 * Return the length of the resource.
	 * 
	 * @return the long
	 */
	public long length() {
		if (isDirectory())
			return -1;

		if (_entry != null)
			return _entry.getSize();

		return -1;
	}

	/* ------------------------------------------------------------ */
	/**
	 * Encode according to this resource type. File URIs are not encoded.
	 * 
	 * @param uri
	 *            URI to encode.
	 * @return The uri unchanged.
	 */
	public String encode(String uri) {
		return uri;
	}
}
