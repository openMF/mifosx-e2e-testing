// ========================================================================
// $Id: Include.java,v 1.6 2005/08/13 00:01:23 gregwilkins Exp $
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

import org.apache.commons.logging.Log;
import org.browsermob.proxy.jetty.log.LogFactory;
import org.browsermob.proxy.jetty.util.IO;

import java.io.*;
import java.net.URL;

// TODO: Auto-generated Javadoc
/* -------------------------------------------------------------------- */
/**
 * Include File, InputStream or Reader Element.
 * <p>
 * This Element includes another file. This class expects that the HTTP
 * directory separator '/' will be used. This will be converted to the local
 * directory separator.
 * 
 * @see Element
 * @version $Id: Include.java,v 1.6 2005/08/13 00:01:23 gregwilkins Exp $
 * @author Greg Wilkins
 */
public class Include extends Element {

	/** The log. */
	private static Log log = LogFactory.getLog(Include.class);

	/** The reader. */
	Reader reader = null;

	/* ------------------------------------------------------------ */
	/**
	 * Constructor. Include file
	 * 
	 * @param directory
	 *            Directory name
	 * @param fileName
	 *            file name
	 * @throws IOException
	 *             File not found
	 */
	public Include(String directory, String fileName) throws IOException {
		if (directory == null)
			directory = ".";

		if (File.separatorChar != '/') {
			directory = directory.replace('/', File.separatorChar);
			fileName = fileName.replace('/', File.separatorChar);
		}

		if (log.isDebugEnabled())
			log.debug("IncludeTag(" + directory + "," + fileName + ")");
		includeFile(new File(directory, fileName));
	}

	/* ------------------------------------------------------------ */
	/**
	 * Constructor. Include file.
	 * 
	 * @param fileName
	 *            Filename
	 * @throws IOException
	 *             File not found
	 */
	public Include(String fileName) throws IOException {
		if (File.separatorChar != '/')
			fileName = fileName.replace('/', File.separatorChar);
		if (log.isDebugEnabled())
			log.debug("IncludeTag(" + fileName + ")");
		includeFile(new File(fileName));
	}

	/* ------------------------------------------------------------ */
	/**
	 * Constructor. Include file.
	 * 
	 * @param file
	 *            file
	 * @throws IOException
	 *             File not found
	 */
	public Include(File file) throws IOException {
		if (log.isDebugEnabled())
			log.debug("IncludeTag(" + file + ")");
		includeFile(file);
	}

	/* ------------------------------------------------------------ */
	/**
	 * Constructor. Include InputStream. Byte to character transformation is
	 * done assuming the default local character set. What this means is that on
	 * EBCDIC systems the included file is assumed to be in EBCDIC.
	 * 
	 * @param in
	 *            stream
	 * @throws IOException
	 *             Signals that an I/O exception has occurred.
	 */
	public Include(InputStream in) throws IOException {
		if (in != null)
			reader = new InputStreamReader(in);
	}

	/* ------------------------------------------------------------ */
	/**
	 * Constructor. Include contents of a URL. Byte to character transformation
	 * is done assuming the default local character set. What this means is that
	 * on EBCDIC systems the included file is assumed to be in EBCDIC.
	 * 
	 * @param url
	 *            the URL to read from.
	 * @throws IOException
	 *             Signals that an I/O exception has occurred.
	 */
	public Include(URL url) throws IOException {
		if (url != null)
			reader = new InputStreamReader(url.openStream());
	}

	/* ------------------------------------------------------------ */
	/**
	 * Constructor. Include Reader.
	 * 
	 * @param in
	 *            reader
	 * @throws IOException
	 *             Signals that an I/O exception has occurred.
	 */
	public Include(Reader in) throws IOException {
		reader = in;
	}

	/* ------------------------------------------------------------ */
	/**
	 * Include file.
	 * 
	 * @param file
	 *            the file
	 * @throws IOException
	 *             Signals that an I/O exception has occurred.
	 */
	private void includeFile(File file) throws IOException {
		if (!file.exists())
			throw new FileNotFoundException(file.toString());

		if (file.isDirectory()) {
			List list = new List(List.Unordered);
			String[] ls = file.list();
			for (int i = 0; i < ls.length; i++)
				list.add(ls[i]);
			StringWriter sw = new StringWriter();
			list.write(sw);
			reader = new StringReader(sw.toString());
		} else {
			reader = new BufferedReader(new FileReader(file));
		}
	}

	/* ---------------------------------------------------------------- */
	/*
	 * (non-Javadoc)
	 * 
	 * @see org.browsermob.proxy.jetty.html.Element#write(java.io.Writer)
	 */
	public void write(Writer out) throws IOException {
		if (reader == null)
			return;

		try {
			IO.copy(reader, out);
		} finally {
			reader.close();
			reader = null;
		}
	}
}
