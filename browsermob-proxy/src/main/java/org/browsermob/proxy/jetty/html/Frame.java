// ========================================================================
// $Id: Frame.java,v 1.3 2004/05/09 20:31:28 gregwilkins Exp $
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

// TODO: Auto-generated Javadoc
/**
 * FrameSet.
 * 
 * @version $Id: Frame.java,v 1.3 2004/05/09 20:31:28 gregwilkins Exp $
 * @author Greg Wilkins
 */
public class Frame {

	/** The src. */
	String src = null;

	/** The name. */
	String name = null;

	/** The scrolling. */
	String scrolling = "auto";

	/** The resize. */
	String resize = "";

	/** The border. */
	String border = "";

	/* ------------------------------------------------------------ */
	/**
	 * Frame constructor.
	 */
	Frame() {
	}

	/* ------------------------------------------------------------ */
	/**
	 * Border.
	 * 
	 * @param threeD
	 *            the three d
	 * @param width
	 *            the width
	 * @param color
	 *            the color
	 * @return the frame
	 */
	public Frame border(boolean threeD, int width, String color) {
		border = " frameborder=\"" + (threeD ? "yes" : "no") + "\"";
		if (width >= 0)
			border += " border=\"" + width + "\"";

		if (color != null)
			border += " BORDERCOLOR=\"" + color + "\"";
		return this;
	}

	/* ------------------------------------------------------------ */
	/**
	 * Name.
	 * 
	 * @param name
	 *            the name
	 * @param src
	 *            the src
	 * @return the frame
	 */
	public Frame name(String name, String src) {
		this.name = name;
		this.src = src;
		return this;
	}

	/* ------------------------------------------------------------ */
	/**
	 * Src.
	 * 
	 * @param s
	 *            the s
	 * @return the frame
	 */
	public Frame src(String s) {
		src = s;
		return this;
	}

	/* ------------------------------------------------------------ */
	/**
	 * Name.
	 * 
	 * @param n
	 *            the n
	 * @return the frame
	 */
	public Frame name(String n) {
		name = n;
		return this;
	}

	/* ------------------------------------------------------------ */
	/**
	 * Scrolling.
	 * 
	 * @param s
	 *            the s
	 * @return the frame
	 */
	public Frame scrolling(boolean s) {
		scrolling = s ? "yes" : "no";
		return this;
	}

	/* ------------------------------------------------------------ */
	/**
	 * Resize.
	 * 
	 * @param r
	 *            the r
	 * @return the frame
	 */
	public Frame resize(boolean r) {
		resize = r ? "" : " noresize";
		return this;
	}

	/* ----------------------------------------------------------------- */
	/**
	 * Write.
	 * 
	 * @param out
	 *            the out
	 * @throws IOException
	 *             Signals that an I/O exception has occurred.
	 */
	void write(Writer out) throws IOException {
		out.write("<frame scrolling=\"" + scrolling + "\"" + resize + border);

		if (src != null)
			out.write(" src=\"" + src + "\"");
		if (name != null)
			out.write(" name=\"" + name + "\"");
		out.write(">");
	}
};
