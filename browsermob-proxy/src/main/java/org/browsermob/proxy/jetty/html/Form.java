// ========================================================================
// $Id: Form.java,v 1.4 2004/05/09 20:31:28 gregwilkins Exp $
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

import org.browsermob.proxy.jetty.http.HttpFields;

import java.io.IOException;
import java.io.Writer;

// TODO: Auto-generated Javadoc
/* -------------------------------------------------------------------- */
/**
 * HTML Form. The specialized Block can contain HTML Form elements as well as
 * any other HTML elements
 */
public class Form extends Block {

	/** The Constant encodingWWWURL. */
	public static final String encodingWWWURL = HttpFields.__WwwFormUrlEncode;

	/** The Constant encodingMultipartForm. */
	public static final String encodingMultipartForm = "multipart/form-data";

	/** The method. */
	private String method = "POST";

	/* ----------------------------------------------------------------- */
	/**
	 * Constructor.
	 */
	public Form() {
		super("form");
	}

	/* ----------------------------------------------------------------- */
	/**
	 * Constructor.
	 * 
	 * @param submitURL
	 *            The URL to submit the form to
	 */
	public Form(String submitURL) {
		super("form");
		action(submitURL);
	}

	/* ----------------------------------------------------------------- */
	/**
	 * Constructor.
	 * 
	 * @param submitURL
	 *            The URL to submit the form to
	 * @return the form
	 */
	public Form action(String submitURL) {
		attribute("action", submitURL);
		return this;
	}

	/* ----------------------------------------------------------------- */
	/**
	 * Set the form target.
	 * 
	 * @param t
	 *            the t
	 * @return the form
	 */
	public Form target(String t) {
		attribute("target", t);
		return this;
	}

	/* ----------------------------------------------------------------- */
	/**
	 * Set the form method.
	 * 
	 * @param m
	 *            the m
	 * @return the form
	 */
	public Form method(String m) {
		method = m;
		return this;
	}

	/* ------------------------------------------------------------ */
	/**
	 * Set the form encoding type.
	 * 
	 * @param encoding
	 *            the encoding
	 * @return the form
	 */
	public Form encoding(String encoding) {
		attribute("enctype", encoding);
		return this;
	}

	/* ----------------------------------------------------------------- */
	/*
	 * (non-Javadoc)
	 * 
	 * @see org.browsermob.proxy.jetty.html.Block#write(java.io.Writer)
	 */
	public void write(Writer out) throws IOException {
		attribute("method", method);
		super.write(out);
	}
}
