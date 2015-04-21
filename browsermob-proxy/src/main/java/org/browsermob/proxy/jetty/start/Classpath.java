// ========================================================================
// $Id: Classpath.java,v 1.5 2004/05/09 20:32:46 gregwilkins Exp $
// Copyright 2002-2004 Mort Bay Consulting Pty. Ltd.
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

package org.browsermob.proxy.jetty.start;

import java.io.File;
import java.io.IOException;
import java.net.MalformedURLException;
import java.net.URL;
import java.net.URLClassLoader;
import java.util.Arrays;
import java.util.StringTokenizer;
import java.util.Vector;

// TODO: Auto-generated Javadoc
/**
 * Class to handle CLASSPATH construction.
 * 
 * @author Jan Hlavatý
 */
public class Classpath {

	/** The _elements. */
	Vector _elements = new Vector();

	/**
	 * Instantiates a new classpath.
	 */
	public Classpath() {
	}

	/**
	 * Instantiates a new classpath.
	 * 
	 * @param initial
	 *            the initial
	 */
	public Classpath(String initial) {
		addClasspath(initial);
	}

	/**
	 * Adds the component.
	 * 
	 * @param component
	 *            the component
	 * @return true, if successful
	 */
	public boolean addComponent(String component) {
		if ((component != null) && (component.length() > 0)) {
			try {
				File f = new File(component);
				if (f.exists()) {
					File key = f.getCanonicalFile();
					if (!_elements.contains(key)) {
						_elements.add(key);
						return true;
					}
				}
			} catch (IOException e) {
			}
		}
		return false;
	}

	/**
	 * Adds the component.
	 * 
	 * @param component
	 *            the component
	 * @return true, if successful
	 */
	public boolean addComponent(File component) {
		if (component != null) {
			try {
				if (component.exists()) {
					File key = component.getCanonicalFile();
					if (!_elements.contains(key)) {
						_elements.add(key);
						return true;
					}
				}
			} catch (IOException e) {
			}
		}
		return false;
	}

	/**
	 * Adds the classpath.
	 * 
	 * @param s
	 *            the s
	 * @return true, if successful
	 */
	public boolean addClasspath(String s) {
		boolean added = false;
		if (s != null) {
			StringTokenizer t = new StringTokenizer(s, File.pathSeparator);
			while (t.hasMoreTokens()) {
				added |= addComponent(t.nextToken());
			}
		}
		return added;
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see java.lang.Object#toString()
	 */
	public String toString() {
		StringBuffer cp = new StringBuffer(1024);
		int cnt = _elements.size();
		if (cnt >= 1) {
			cp.append(((File) (_elements.elementAt(0))).getPath());
		}
		for (int i = 1; i < cnt; i++) {
			cp.append(File.pathSeparatorChar);
			cp.append(((File) (_elements.elementAt(i))).getPath());
		}
		return cp.toString();
	}

	/**
	 * Gets the class loader.
	 * 
	 * @return the class loader
	 */
	public ClassLoader getClassLoader() {
		int cnt = _elements.size();
		URL[] urls = new URL[cnt];
		for (int i = 0; i < cnt; i++) {
			try {
				urls[i] = ((File) (_elements.elementAt(i))).toURL();
			} catch (MalformedURLException e) {
			}
		}

		ClassLoader parent = Thread.currentThread().getContextClassLoader();
		if (parent == null) {
			parent = Classpath.class.getClassLoader();
		}
		if (parent == null) {
			parent = ClassLoader.getSystemClassLoader();
		}
		return new Loader(urls, parent);
	}

	/**
	 * The Class Loader.
	 */
	private class Loader extends URLClassLoader {

		/** The name. */
		String name;

		/**
		 * Instantiates a new loader.
		 * 
		 * @param urls
		 *            the urls
		 * @param parent
		 *            the parent
		 */
		Loader(URL[] urls, ClassLoader parent) {
			super(urls, parent);
			name = "StartLoader" + Arrays.asList(urls);
		}

		/*
		 * (non-Javadoc)
		 * 
		 * @see java.lang.Object#toString()
		 */
		public String toString() {
			return name;
		}
	}

}
