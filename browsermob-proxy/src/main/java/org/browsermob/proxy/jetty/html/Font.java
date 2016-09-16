// ========================================================================
// $Id: Font.java,v 1.3 2004/05/09 20:31:28 gregwilkins Exp $
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
 * HTML Font Block. Each Element added to the List (which is a Composite) is
 * treated as a new List Item.
 * 
 * @see org.browsermob.proxy.jetty.html.Block
 */
public class Font extends Block {
	/* ----------------------------------------------------------------- */
	/**
	 * Instantiates a new font.
	 */
	public Font() {
		super("font");
	}

	/* ----------------------------------------------------------------- */
	/**
	 * Instantiates a new font.
	 * 
	 * @param size
	 *            the size
	 */
	public Font(int size) {
		this();
		size(size);
	}

	/* ----------------------------------------------------------------- */
	/**
	 * Instantiates a new font.
	 * 
	 * @param size
	 *            the size
	 * @param relativeSize
	 *            the relative size
	 */
	public Font(int size, boolean relativeSize) {
		this();
		size(((relativeSize && size >= 0) ? "+" : "") + size);
	}

	/* ----------------------------------------------------------------- */
	/**
	 * Instantiates a new font.
	 * 
	 * @param size
	 *            the size
	 * @param attributes
	 *            the attributes
	 */
	public Font(int size, String attributes) {
		this();
		size(size);
		this.attribute(attributes);
	}

	/* ----------------------------------------------------------------- */
	/**
	 * Instantiates a new font.
	 * 
	 * @param attributes
	 *            the attributes
	 */
	public Font(String attributes) {
		super("font", attributes);
	}

	/* ----------------------------------------------------------------- */
	/**
	 * Face.
	 * 
	 * @param face
	 *            the face
	 * @return the font
	 */
	public Font face(String face) {
		attribute("face", face);
		return this;
	}

}
