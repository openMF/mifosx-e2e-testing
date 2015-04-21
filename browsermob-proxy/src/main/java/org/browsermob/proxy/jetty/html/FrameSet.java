// ========================================================================
// $Id: FrameSet.java,v 1.4 2004/11/20 13:32:33 gregwilkins Exp $
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
import java.util.Vector;

// TODO: Auto-generated Javadoc
/* ---------------------------------------------------------------- */
/**
 * FrameSet.
 * <p>
 * Usage
 * 
 * <pre>
 * FrameSet set = new FrameSet(&quot;FrameTest&quot;, &quot;*,*&quot;, &quot;*,*&quot;);
 * set.frame(0, 0).name(&quot;Frame1&quot;, req.getRequestPath() + &quot;?Frame=1&quot;);
 * set.frame(0, 1).name(&quot;Frame2&quot;, req.getRequestPath() + &quot;?Frame=2&quot;);
 * set.frame(1, 0).name(&quot;Frame3&quot;, req.getRequestPath() + &quot;?Frame=3&quot;);
 * set.frame(1, 1).name(&quot;Frame4&quot;, req.getRequestPath() + &quot;?Frame=4&quot;);
 * set.write(new Writer(res.getOutputStream()));
 * </pre>
 * 
 * @version $Id: FrameSet.java,v 1.4 2004/11/20 13:32:33 gregwilkins Exp $
 * @author Greg Wilkins
 */
public class FrameSet extends Page {

	/** The frames. */
	Frame[][] frames = null;

	/** The col spec. */
	String colSpec = null;

	/** The row spec. */
	String rowSpec = null;

	/** The cols. */
	int cols;

	/** The rows. */
	int rows;

	/** The border. */
	String border = "";

	/** The frame names. */
	Vector frameNames = null;

	/** The frame map. */
	Hashtable frameMap = null;

	/* ------------------------------------------------------------ */
	/**
	 * FrameSet constructor.
	 * 
	 * @param title
	 *            the title
	 * @param colSpec
	 *            Comma separated list of column widths specified as pixels,
	 *            percentage or '*' for variable
	 * @param rowSpec
	 *            the row spec
	 */
	public FrameSet(String title, String colSpec, String rowSpec) {
		super(title);

		this.colSpec = colSpec;
		this.rowSpec = rowSpec;

		cols = 1;
		rows = 1;

		int i = -1;
		while (colSpec != null && (i = colSpec.indexOf(",", i + 1)) >= 0)
			cols++;

		i = -1;
		while (rowSpec != null && (i = rowSpec.indexOf(",", i + 1)) >= 0)
			rows++;

		frames = new Frame[cols][rows];
		for (int c = 0; c < cols; c++)
			for (int r = 0; r < rows; r++)
				frames[c][r] = new Frame();
	}

	/* ------------------------------------------------------------ */
	/**
	 * Frame.
	 * 
	 * @param col
	 *            the col
	 * @param row
	 *            the row
	 * @return the frame
	 */
	public Frame frame(int col, int row) {
		return frames[col][row];
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
	 * @return the frame set
	 */
	public FrameSet border(boolean threeD, int width, String color) {
		border = " frameborder=\"" + (threeD ? "yes" : "no") + "\"";
		if (width >= 0)
			border += " border=\"" + width + "\"";

		if (color != null)
			border += " bordercolor=\"" + color + "\"";
		return this;
	}

	/* ----------------------------------------------------------------- */
	/**
	 * Named frames.
	 * 
	 * @return the enumeration
	 */
	public Enumeration namedFrames() {
		if (frameNames == null)
			return new Vector().elements();
		return frameNames.elements();
	}

	/* ----------------------------------------------------------------- */
	/**
	 * Frame.
	 * 
	 * @param name
	 *            the name
	 * @return the frame
	 */
	public Frame frame(String name) {
		if (frameMap == null)
			return null;
		return (Frame) frameMap.get(name);
	}

	/* ----------------------------------------------------------------- */
	/**
	 * Name a frame. By convention, frame names match Page section names
	 * 
	 * @param name
	 *            the name
	 * @param col
	 *            the col
	 * @param row
	 *            the row
	 * @return the frame
	 */
	public Frame nameFrame(String name, int col, int row) {
		if (frameMap == null) {
			frameMap = new Hashtable(10);
			frameNames = new Vector(10);
		}

		Frame frame = frames[col][row];
		if (frame == null)
			frame = frames[col][row] = new Frame();

		if (frameMap.get(name) == null)
			frameNames.addElement(name);
		frameMap.put(name, frame);
		frame.name(name);

		return frame;
	}

	/* ----------------------------------------------------------------- */
	/*
	 * (non-Javadoc)
	 * 
	 * @see org.browsermob.proxy.jetty.html.Page#write(java.io.Writer)
	 */
	public void write(Writer out) throws IOException {
		writeHtmlHead(out);

		out.write("<frameset " + border);

		if (colSpec != null)
			out.write(" cols=\"" + colSpec + "\"");
		if (rowSpec != null)
			out.write(" rows=\"" + rowSpec + "\"");
		out.write(">");

		for (int r = 0; r < rows; r++)
			for (int c = 0; c < cols; c++)
				frames[c][r].write(out);

		out.write("<noframes>");
		writeElements(out);
		out.write("</noframes>");

		out.write("</frameset>");
		out.write("</html>");
	}
};
