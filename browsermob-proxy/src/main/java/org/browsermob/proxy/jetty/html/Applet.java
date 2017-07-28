// ========================================================================
// $Id: Applet.java,v 1.7 2004/07/19 13:12:58 hlavac Exp $
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

package org.browsermob.proxy.jetty.html;

import java.io.IOException;
import java.io.Writer;
import java.util.Enumeration;
import java.util.Hashtable;

// TODO: Auto-generated Javadoc
/* ---------------------------------------------------------------- */
/**
 * An Applet Block.
 * <p>
 * Lets you set the class name from the program, and optionally, the size and
 * the codebase.
 * 
 * <p>
 * This class uses any attributes set in Element.
 * 
 * <p>
 * <h4>Usage</h4>
 * 
 * <pre>
 * org.mortbay.Page page = new org.mortbay.html.Page();
 * page.add(new org.mortbay.Applet(&quot;org.mortbay.Foo.App&quot;));
 * </pre>
 * 
 * @see org.browsermob.proxy.jetty.html.Block
 * @version $Id: Applet.java,v 1.7 2004/07/19 13:12:58 hlavac Exp $
 * @author Matthew Watson
 */
public class Applet extends Block {
	/* ------------------------------------------------------------ */
	/** The code base. */
	public String codeBase = null;

	/* ------------------------------------------------------------ */
	/** The debug. */
	private boolean debug = false;

	/** The params. */
	private Hashtable params = null;

	/** The param holder. */
	private Composite paramHolder = new Composite();

	/* ------------------------------------------------------------ */
	/**
	 * Create an Applet Element.
	 * 
	 * @param className
	 *            The name of the class to give for the applet
	 */
	public Applet(String className) {
		super("applet");
		add(paramHolder);
		attribute("code", className);
	}

	/* ------------------------------------------------------------ */
	/**
	 * Set the dimensions of the Applet.
	 * 
	 * @param height
	 *            the height
	 * @param width
	 *            the width
	 * @return the applet
	 */
	public Applet setDimensions(int height, int width) {
		width(width);
		height(height);
		return this;
	}

	/* ------------------------------------------------------------ */
	/**
	 * Set whether debugging is on in the Applet.
	 * <p>
	 * This controls whether the org.mortbay.util.Code debug messages will be
	 * printed to the java console.
	 * <p>
	 * Defaults to whether debug is turned on in the generating app
	 * 
	 * @param debug
	 *            the debug
	 * @return the applet
	 */
	public Applet setDebug(boolean debug) {
		this.debug = debug;
		return this;
	}

	/* ------------------------------------------------------------ */
	/**
	 * Set an alternate display for non-java browsers.
	 * 
	 * @param alt
	 *            The alternate element to display
	 * @return the applet
	 * @deprecated use add
	 */
	public Applet setAlternate(Element alt) {
		add(alt);
		return this;
	}

	/* ------------------------------------------------------------ */
	/**
	 * Set an alternate display for non-java browsers.
	 * 
	 * @param alt
	 *            The alternate element to display
	 * @return the applet
	 * @deprecated use add
	 */
	public Applet setAlternate(String alt) {
		add(alt);
		return this;
	}

	/* ------------------------------------------------------------ */
	/**
	 * Set the codebase.
	 * 
	 * @param cb
	 *            the cb
	 * @return the applet
	 */
	public Applet codeBase(String cb) {
		codeBase = cb;
		return this;
	}

	/* ------------------------------------------------------------ */
	/**
	 * Sets the param.
	 * 
	 * @param name
	 *            the name
	 * @param value
	 *            the value
	 * @return the applet
	 */
	public Applet setParam(String name, String value) {
		if (params == null)
			params = new Hashtable(10);
		params.put(name, value);
		return this;
	}

	/* ------------------------------------------------------------ */
	/**
	 * Write out the HTML.
	 * 
	 * @param out
	 *            the out
	 * @throws IOException
	 *             Signals that an I/O exception has occurred.
	 */
	public void write(Writer out) throws IOException {
		if (codeBase != null)
			attribute("codebase", codeBase);

		if (debug)
			paramHolder.add("<param name=\"debug\" value=\"yes\">");
		if (params != null)
			for (Enumeration enm = params.keys(); enm.hasMoreElements();) {
				String key = enm.nextElement().toString();
				paramHolder.add("<param name=\"" + key + "\" value=\""
						+ params.get(key).toString() + "\">");
			}
		super.write(out);
	}
};
