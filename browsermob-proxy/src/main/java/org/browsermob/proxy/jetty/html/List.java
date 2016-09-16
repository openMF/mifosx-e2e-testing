// ========================================================================
// $Id: List.java,v 1.3 2004/05/09 20:31:28 gregwilkins Exp $
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
 * HTML List Block. Each Element added to the List (which is a Composite) is
 * treated as a new List Item.
 * 
 * @see org.browsermob.proxy.jetty.html.Block
 */
public class List extends Block {
	/* ----------------------------------------------------------------- */
	/** The Constant Unordered. */
	public static final String Unordered = "ul";

	/** The Constant Ordered. */
	public static final String Ordered = "ol";

	/** The Constant Menu. */
	public static final String Menu = "menu";

	/** The Constant Directory. */
	public static final String Directory = "dir";

	/* ----------------------------------------------------------------- */
	/**
	 * Instantiates a new list.
	 * 
	 * @param type
	 *            the type
	 */
	public List(String type) {
		super(type);
	}

	/* ----------------------------------------------------------------- */
	/**
	 * Adds the.
	 * 
	 * @param o
	 *            The item
	 * @return This List.
	 */
	public Composite add(Object o) {
		super.add("<li>");
		super.add(o);
		super.add("</li>");
		return this;
	}

	/* ----------------------------------------------------------------- */
	/**
	 * New item.
	 * 
	 * @return The new Item composite
	 */
	public Composite newItem() {
		super.add("<li>");
		Composite composite = new Composite();
		super.add(composite);
		super.add("</li>");
		return composite;
	}

}
