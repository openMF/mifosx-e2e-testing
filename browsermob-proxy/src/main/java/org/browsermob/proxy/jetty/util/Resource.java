// ========================================================================
// $Id: Resource.java,v 1.31 2005/10/21 11:36:56 gregwilkins Exp $
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

import java.io.*;
import java.net.MalformedURLException;
import java.net.URL;
import java.net.URLConnection;
import java.text.DateFormat;
import java.util.Arrays;
import java.util.Date;

// TODO: Auto-generated Javadoc
/* ------------------------------------------------------------ */
/**
 * Abstract resource class.
 * 
 * @version $Id: Resource.java,v 1.31 2005/10/21 11:36:56 gregwilkins Exp $
 * @author Nuno Preguiça
 * @author Greg Wilkins (gregw)
 */
public abstract class Resource implements Serializable {

	/** The log. */
	private static Log log = LogFactory.getLog(Resource.class);

	/** The _associate. */
	Object _associate;

	/* ------------------------------------------------------------ */
	/**
	 * Construct a resource from a url.
	 * 
	 * @param url
	 *            A URL.
	 * @return A Resource object.
	 * @throws IOException
	 *             Signals that an I/O exception has occurred.
	 */
	public static Resource newResource(URL url) throws IOException {
		if (url == null)
			return null;

		String urls = url.toExternalForm();
		if (urls.startsWith("file:")) {
			try {
				FileResource fileResource = new FileResource(url);
				return fileResource;
			} catch (Exception e) {
				log.debug(LogSupport.EXCEPTION, e);
				return new BadResource(url, e.toString());
			}
		} else if (urls.startsWith("jar:file:")) {
			return new JarFileResource(url);
		} else if (urls.startsWith("jar:")) {
			return new JarResource(url);
		}

		return new URLResource(url, null);
	}

	/* ------------------------------------------------------------ */
	/**
	 * Construct a resource from a string.
	 * 
	 * @param resource
	 *            A URL or filename.
	 * @return A Resource object.
	 * @throws MalformedURLException
	 *             the malformed url exception
	 * @throws IOException
	 *             Signals that an I/O exception has occurred.
	 */
	public static Resource newResource(String resource)
			throws MalformedURLException, IOException {
		URL url = null;
		try {
			// Try to format as a URL?
			url = new URL(resource);
		} catch (MalformedURLException e) {
			if (!resource.startsWith("ftp:") && !resource.startsWith("file:")
					&& !resource.startsWith("jar:")) {
				try {
					// It's a file.
					if (resource.startsWith("./"))
						resource = resource.substring(2);

					File file = new File(resource).getCanonicalFile();
					url = file.toURI().toURL();

					URLConnection connection = url.openConnection();
					FileResource fileResource = new FileResource(url,
							connection, file);
					return fileResource;
				} catch (Exception e2) {
					log.debug(LogSupport.EXCEPTION, e2);
					throw e;
				}
			} else {
				log.warn("Bad Resource: " + resource);
				throw e;
			}
		}

		String nurl = url.toString();
		if (nurl.length() > 0
				&& nurl.charAt(nurl.length() - 1) != resource.charAt(resource
						.length() - 1)) {
			if ((nurl.charAt(nurl.length() - 1) != '/' || nurl.charAt(nurl
					.length() - 2) != resource.charAt(resource.length() - 1))
					&& (resource.charAt(resource.length() - 1) != '/' || resource
							.charAt(resource.length() - 2) != nurl.charAt(nurl
							.length() - 1))) {
				return new BadResource(url,
						"Trailing special characters stripped by URL in "
								+ resource);
			}
		}
		return newResource(url);
	}

	/* ------------------------------------------------------------ */
	/**
	 * Construct a system resource from a string. The resource is tried as
	 * classloader resource before being treated as a normal resource.
	 * 
	 * @param resource
	 *            the resource
	 * @return the resource
	 * @throws IOException
	 *             Signals that an I/O exception has occurred.
	 */
	public static Resource newSystemResource(String resource)
			throws IOException {
		URL url = null;
		// Try to format as a URL?
		ClassLoader loader = Thread.currentThread().getContextClassLoader();
		if (loader != null) {
			url = loader.getResource(resource);
			if (url == null && resource.startsWith("/"))
				url = loader.getResource(resource.substring(1));
		}
		if (url == null) {
			loader = Resource.class.getClassLoader();
			if (loader != null) {
				url = loader.getResource(resource);
				if (url == null && resource.startsWith("/"))
					url = loader.getResource(resource.substring(1));
			}
		}

		if (url == null) {
			url = ClassLoader.getSystemResource(resource);
			if (url == null && resource.startsWith("/"))
				url = loader.getResource(resource.substring(1));
		}

		if (url == null)
			return null;

		return newResource(url);
	}

	/* ------------------------------------------------------------ */
	/*
	 * (non-Javadoc)
	 * 
	 * @see java.lang.Object#finalize()
	 */
	protected void finalize() {
		release();
	}

	/* ------------------------------------------------------------ */
	/**
	 * Release any resources held by the resource.
	 */
	public abstract void release();

	/* ------------------------------------------------------------ */
	/**
	 * Returns true if the respresened resource exists.
	 * 
	 * @return true, if successful
	 */
	public abstract boolean exists();

	/* ------------------------------------------------------------ */
	/**
	 * Returns true if the respresenetd resource is a container/directory. If
	 * the resource is not a file, resources ending with "/" are considered
	 * directories.
	 * 
	 * @return true, if is directory
	 */
	public abstract boolean isDirectory();

	/* ------------------------------------------------------------ */
	/**
	 * Returns the last modified time.
	 * 
	 * @return the long
	 */
	public abstract long lastModified();

	/* ------------------------------------------------------------ */
	/**
	 * Return the length of the resource.
	 * 
	 * @return the long
	 */
	public abstract long length();

	/* ------------------------------------------------------------ */
	/**
	 * Returns an URL representing the given resource.
	 * 
	 * @return the url
	 */
	public abstract URL getURL();

	/* ------------------------------------------------------------ */
	/**
	 * Returns an File representing the given resource or NULL if this is not
	 * possible.
	 * 
	 * @return the file
	 * @throws IOException
	 *             Signals that an I/O exception has occurred.
	 */
	public abstract File getFile() throws IOException;

	/* ------------------------------------------------------------ */
	/**
	 * Returns the name of the resource.
	 * 
	 * @return the name
	 */
	public abstract String getName();

	/* ------------------------------------------------------------ */
	/**
	 * Returns an input stream to the resource.
	 * 
	 * @return the input stream
	 * @throws IOException
	 *             Signals that an I/O exception has occurred.
	 */
	public abstract InputStream getInputStream() throws java.io.IOException;

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
	public abstract OutputStream getOutputStream() throws java.io.IOException,
			SecurityException;

	/* ------------------------------------------------------------ */
	/**
	 * Deletes the given resource.
	 * 
	 * @return true, if successful
	 * @throws SecurityException
	 *             the security exception
	 */
	public abstract boolean delete() throws SecurityException;

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
	public abstract boolean renameTo(Resource dest) throws SecurityException;

	/* ------------------------------------------------------------ */
	/**
	 * Returns a list of resource names contained in the given resource The
	 * resource names are not URL encoded.
	 * 
	 * @return the string[]
	 */
	public abstract String[] list();

	/* ------------------------------------------------------------ */
	/**
	 * Returns the resource contained inside the current resource with the given
	 * name.
	 * 
	 * @param path
	 *            The path segment to add, which should be encoded by the encode
	 *            method.
	 * @return the resource
	 * @throws IOException
	 *             Signals that an I/O exception has occurred.
	 * @throws MalformedURLException
	 *             the malformed url exception
	 */
	public abstract Resource addPath(String path) throws IOException,
			MalformedURLException;

	/* ------------------------------------------------------------ */
	/**
	 * Encode according to this resource type. The default implementation calls
	 * URI.encodePath(uri)
	 * 
	 * @param uri
	 *            the uri
	 * @return String encoded for this resource type.
	 */
	public String encode(String uri) {
		return URI.encodePath(uri);
	}

	/* ------------------------------------------------------------ */
	/**
	 * Gets the associate.
	 * 
	 * @return the associate
	 */
	public Object getAssociate() {
		return _associate;
	}

	/* ------------------------------------------------------------ */
	/**
	 * Sets the associate.
	 * 
	 * @param o
	 *            the new associate
	 */
	public void setAssociate(Object o) {
		_associate = o;
	}

	/* ------------------------------------------------------------ */
	/**
	 * Gets the alias.
	 * 
	 * @return The canonical Alias of this resource or null if none.
	 */
	public URL getAlias() {
		return null;
	}

	/* ------------------------------------------------------------ */
	/**
	 * Cache.
	 * 
	 * @return the cached resource
	 * @throws IOException
	 *             Signals that an I/O exception has occurred.
	 */
	public CachedResource cache() throws IOException {
		return new CachedResource(this);
	}

	/* ------------------------------------------------------------ */
	/**
	 * Get the resource list as a HTML directory listing.
	 * 
	 * @param base
	 *            The base URL
	 * @param parent
	 *            True if the parent directory should be included
	 * @return String of HTML
	 * @throws IOException
	 *             Signals that an I/O exception has occurred.
	 */
	public String getListHTML(String base, boolean parent) throws IOException {
		if (!isDirectory())
			return null;

		String[] ls = list();
		if (ls == null)
			return null;
		Arrays.sort(ls);

		String title = "Directory: " + URI.decodePath(base);
		title = StringUtil.replace(StringUtil.replace(title, "<", "&lt;"), ">",
				"&gt;");
		StringBuffer buf = new StringBuffer(4096);
		buf.append("<HTML><HEAD><TITLE>");
		buf.append(title);
		buf.append("</TITLE></HEAD><BODY>\n<H1>");
		buf.append(title);
		buf.append("</H1><TABLE BORDER=0>");

		if (parent) {
			buf.append("<TR><TD><A HREF=");
			buf.append(URI.encodePath(URI.addPaths(base, "../")));
			buf.append(">Parent Directory</A></TD><TD></TD><TD></TD></TR>\n");
		}

		DateFormat dfmt = DateFormat.getDateTimeInstance(DateFormat.MEDIUM,
				DateFormat.MEDIUM);
		for (int i = 0; i < ls.length; i++) {
			String encoded = URI.encodePath(ls[i]);
			Resource item = addPath(encoded);

			buf.append("<TR><TD><A HREF=\"");

			String path = URI.addPaths(base, encoded);

			if (item.isDirectory() && !path.endsWith("/"))
				path = URI.addPaths(path, "/");
			buf.append(path);
			buf.append("\">");
			buf.append(StringUtil.replace(
					StringUtil.replace(ls[i], "<", "&lt;"), ">", "&gt;"));
			buf.append("&nbsp;");
			buf.append("</TD><TD ALIGN=right>");
			buf.append(item.length());
			buf.append(" bytes&nbsp;</TD><TD>");
			buf.append(dfmt.format(new Date(item.lastModified())));
			buf.append("</TD></TR>\n");
		}
		buf.append("</TABLE>\n");
		buf.append("</BODY></HTML>\n");

		return buf.toString();
	}

	/* ------------------------------------------------------------ */
	/**
	 * Write to.
	 * 
	 * @param out
	 *            the out
	 * @param start
	 *            First byte to write
	 * @param count
	 *            Bytes to write or -1 for all of them.
	 * @throws IOException
	 *             Signals that an I/O exception has occurred.
	 */
	public void writeTo(OutputStream out, long start, long count)
			throws IOException {
		InputStream in = getInputStream();
		try {
			in.skip(start);
			if (count < 0)
				IO.copy(in, out);
			else
				IO.copy(in, out, (int) count);
		} finally {
			in.close();
		}
	}
}
