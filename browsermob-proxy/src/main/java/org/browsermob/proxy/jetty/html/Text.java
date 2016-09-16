// ========================================================================
// $Id: Text.java,v 1.2 2004/05/09 20:31:28 gregwilkins Exp $
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

import java.util.Vector;

// TODO: Auto-generated Javadoc
/* -------------------------------------------------------------------- */
/**
 * A simple block of straight text.
 * 
 * @deprecated all Composites now take Strings direct.
 */
public class Text extends Composite {
	/* ----------------------------------------------------------------- */
	/**
	 * Instantiates a new text.
	 */
	public Text() {
	}

	/* ----------------------------------------------------------------- */
	/**
	 * Instantiates a new text.
	 * 
	 * @param s
	 *            the s
	 */
	public Text(String s) {
		add(s);
	}

	/* ----------------------------------------------------------------- */
	/**
	 * Instantiates a new text.
	 * 
	 * @param s
	 *            the s
	 */
	public Text(String[] s) {
		add(s);
	}

	/* ----------------------------------------------------------------- */
	/**
	 * Adds the.
	 * 
	 * @param s
	 *            the s
	 * @return the text
	 */
	public Text add(String[] s) {
		for (int i = 0; i < s.length; i++)
			add(s[i]);
		return this;
	}

	/* ----------------------------------------------------------------- */
	/**
	 * Adds the.
	 * 
	 * @param v
	 *            the v
	 * @return the text
	 */
	public Text add(Vector v) {
		for (int i = 0; i < v.size(); i++)
			add(v.elementAt(i));
		return this;
	}
}
