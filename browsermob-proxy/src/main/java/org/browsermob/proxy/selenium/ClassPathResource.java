/*
 * 
 */
package org.browsermob.proxy.selenium;

import org.browsermob.proxy.jetty.util.Resource;
import org.eclipse.jetty.util.IO;

import java.io.*;
import java.net.MalformedURLException;
import java.net.URL;

// TODO: Auto-generated Javadoc
/**
 * Represents resource file off of the classpath.
 * 
 * @author Patrick Lightbody (plightbo at gmail dot com)
 */
public class ClassPathResource extends Resource {

	/** The path. */
	String path;

	/** The os. */
	ByteArrayOutputStream os;

	/**
	 * Specifies the classpath path containing the resource.
	 * 
	 * @param path
	 *            the path
	 */
	public ClassPathResource(String path) {
		this.path = path;
		InputStream is = LauncherUtils.getSeleniumResourceAsStream(path);
		if (is != null) {
			os = new ByteArrayOutputStream();
			try {
				IO.copy(is, os);
			} catch (IOException e) {
				e.printStackTrace();
			}
		}
	}

	/* ------------------------------------------------------------ */
	/*
	 * (non-Javadoc)
	 * 
	 * @see org.browsermob.proxy.jetty.util.Resource#getAssociate()
	 */
	public Object getAssociate() {
		return super.getAssociate();
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see org.browsermob.proxy.jetty.util.Resource#release()
	 */
	public void release() {
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see org.browsermob.proxy.jetty.util.Resource#exists()
	 */
	public boolean exists() {
		return os != null;
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see org.browsermob.proxy.jetty.util.Resource#isDirectory()
	 */
	public boolean isDirectory() {
		return false;
	}

	/**
	 * Returns the lastModified time, which is always in the distant future to
	 * prevent caching.
	 * 
	 * @return the long
	 */
	public long lastModified() {
		return System.currentTimeMillis() + 1000l * 3600l * 24l * 365l;
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see org.browsermob.proxy.jetty.util.Resource#length()
	 */
	public long length() {
		if (os != null) {
			return os.size();
		}

		return 0;
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see org.browsermob.proxy.jetty.util.Resource#getURL()
	 */
	public URL getURL() {
		return null;
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see org.browsermob.proxy.jetty.util.Resource#getFile()
	 */
	public File getFile() throws IOException {
		return null;
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see org.browsermob.proxy.jetty.util.Resource#getName()
	 */
	public String getName() {
		return path;
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see org.browsermob.proxy.jetty.util.Resource#getInputStream()
	 */
	public InputStream getInputStream() throws IOException {
		if (os != null) {
			return new ByteArrayInputStream(os.toByteArray());
		}
		return null;
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see org.browsermob.proxy.jetty.util.Resource#getOutputStream()
	 */
	public OutputStream getOutputStream() throws IOException, SecurityException {
		return null;
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see org.browsermob.proxy.jetty.util.Resource#delete()
	 */
	public boolean delete() throws SecurityException {
		return false;
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see
	 * org.browsermob.proxy.jetty.util.Resource#renameTo(org.browsermob.proxy
	 * .jetty.util.Resource)
	 */
	public boolean renameTo(Resource dest) throws SecurityException {
		return false;
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see org.browsermob.proxy.jetty.util.Resource#list()
	 */
	public String[] list() {
		return new String[0];
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see org.browsermob.proxy.jetty.util.Resource#addPath(java.lang.String)
	 */
	public Resource addPath(String pathParm) throws IOException,
			MalformedURLException {
		return new ClassPathResource(this.path + "/" + pathParm);
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see java.lang.Object#toString()
	 */
	@Override
	public String toString() {
		return getName();
	}
}
