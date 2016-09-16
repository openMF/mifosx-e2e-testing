// ========================================================================
// $Id: Input.java,v 1.3 2004/05/09 20:31:28 gregwilkins Exp $
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

// TODO: Auto-generated Javadoc
/* -------------------------------------------------------------------- */
/**
 * HTML Form Input Tag.
 * <p>
 * 
 * @see Tag
 * @see Form
 * @version $Id: Input.java,v 1.3 2004/05/09 20:31:28 gregwilkins Exp $
 * @author Greg Wilkins
 */
public class Input extends Tag {
	/* ----------------------------------------------------------------- */
	/** Input types. */
	public final static String Text = "text";

	/** The Constant Password. */
	public final static String Password = "password";

	/** The Constant Checkbox. */
	public final static String Checkbox = "checkbox";

	/** The Constant Radio. */
	public final static String Radio = "radio";

	/** The Constant Submit. */
	public final static String Submit = "submit";

	/** The Constant Reset. */
	public final static String Reset = "reset";

	/** The Constant Hidden. */
	public final static String Hidden = "hidden";

	/** The Constant File. */
	public final static String File = "file";

	/** The Constant Image. */
	public final static String Image = "image";

	/* ----------------------------------------------------------------- */
	/**
	 * Instantiates a new input.
	 * 
	 * @param type
	 *            the type
	 * @param name
	 *            the name
	 */
	public Input(String type, String name) {
		super("input");
		attribute("type", type);
		attribute("name", name);
	}

	/* ----------------------------------------------------------------- */
	/**
	 * Instantiates a new input.
	 * 
	 * @param type
	 *            the type
	 * @param name
	 *            the name
	 * @param value
	 *            the value
	 */
	public Input(String type, String name, String value) {
		this(type, name);
		attribute("value", value);
	}

	/* ----------------------------------------------------------------- */
	/**
	 * Instantiates a new input.
	 * 
	 * @param image
	 *            the image
	 * @param name
	 *            the name
	 * @param value
	 *            the value
	 */
	public Input(Image image, String name, String value) {
		super("input");
		attribute("type", "image");
		attribute("name", name);
		if (value != null)
			attribute("value", value);
		attribute(image.attributes());
	}

	/* ----------------------------------------------------------------- */
	/**
	 * Instantiates a new input.
	 * 
	 * @param image
	 *            the image
	 * @param name
	 *            the name
	 */
	public Input(Image image, String name) {
		super("input");
		attribute("type", "image");
		attribute("name", name);
		attribute(image.attributes());
	}

	/* ----------------------------------------------------------------- */
	/**
	 * Check.
	 * 
	 * @return the input
	 */
	public Input check() {
		attribute("checked");
		return this;
	}

	/* ----------------------------------------------------------------- */
	/**
	 * Sets the size.
	 * 
	 * @param size
	 *            the size
	 * @return the input
	 */
	public Input setSize(int size) {
		size(size);
		return this;
	}

	/* ----------------------------------------------------------------- */
	/**
	 * Sets the max size.
	 * 
	 * @param size
	 *            the size
	 * @return the input
	 */
	public Input setMaxSize(int size) {
		attribute("maxlength", size);
		return this;
	}

	/* ----------------------------------------------------------------- */
	/**
	 * Fixed.
	 * 
	 * @return the input
	 */
	public Input fixed() {
		setMaxSize(size());
		return this;
	}
}
