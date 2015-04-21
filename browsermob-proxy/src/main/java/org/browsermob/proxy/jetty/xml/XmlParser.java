// ========================================================================
// $Id: XmlParser.java,v 1.21 2005/10/25 07:53:22 gregwilkins Exp $
// Copyright 1999-2004 Mort Bay Consulting Pty. Ltd.
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
package org.browsermob.proxy.jetty.xml;

import org.apache.commons.logging.Log;
import org.browsermob.proxy.jetty.log.LogFactory;
import org.browsermob.proxy.jetty.util.LazyList;
import org.browsermob.proxy.jetty.util.LogSupport;
import org.xml.sax.*;
import org.xml.sax.helpers.DefaultHandler;

import javax.xml.parsers.SAXParser;
import javax.xml.parsers.SAXParserFactory;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.net.URL;
import java.util.*;

// TODO: Auto-generated Javadoc
/*--------------------------------------------------------------*/
/**
 * XML Parser wrapper. This class wraps any standard JAXP1.1 parser with
 * convieniant error and entity handlers and a mini dom-like document tree.
 * <P>
 * By default, the parser is created as a validating parser. This can be changed
 * by setting the "org.mortbay.xml.XmlParser.NotValidating" system property to
 * true.
 * 
 * @version $Id: XmlParser.java,v 1.21 2005/10/25 07:53:22 gregwilkins Exp $
 * @author Greg Wilkins (gregw)
 */
public class XmlParser {

	/** The log. */
	private static Log log = LogFactory.getLog(XmlParser.class);

	/** The _redirect map. */
	private Map _redirectMap = new HashMap();

	/** The _parser. */
	private SAXParser _parser;

	/** The _xpath. */
	private String _xpath;

	/** The _xpaths. */
	private Object _xpaths;

	/* ------------------------------------------------------------ */
	/**
	 * Construct.
	 */
	public XmlParser() {
		try {
			SAXParserFactory factory = SAXParserFactory.newInstance();
			boolean notValidating = Boolean
					.getBoolean("org.browsermob.proxy.jetty.xml.XmlParser.NotValidating");
			factory.setValidating(!notValidating);
			_parser = factory.newSAXParser();
			try {
				if (!notValidating)
					_parser.getXMLReader().setFeature(
							"http://apache.org/xml/features/validation/schema",
							true);
			} catch (Exception e) {
				log.warn("Schema validation may not be supported");
				log.debug("", e);
				notValidating = true;
			}
			_parser.getXMLReader().setFeature(
					"http://xml.org/sax/features/validation", !notValidating);
			_parser.getXMLReader().setFeature(
					"http://xml.org/sax/features/namespaces", !notValidating);
			_parser.getXMLReader().setFeature(
					"http://xml.org/sax/features/namespace-prefixes",
					!notValidating);
		} catch (Exception e) {
			log.warn(LogSupport.EXCEPTION, e);
			throw new Error(e.toString());
		}
	}

	/* ------------------------------------------------------------ */
	/**
	 * Constructor.
	 * 
	 * @param validating
	 *            the validating
	 */
	public XmlParser(boolean validating) {
		try {
			SAXParserFactory factory = SAXParserFactory.newInstance();
			factory.setValidating(validating);
			_parser = factory.newSAXParser();
			try {
				if (validating)
					_parser.getXMLReader().setFeature(
							"http://apache.org/xml/features/validation/schema",
							validating);
			} catch (Exception e) {
				if (validating)
					log.warn("Schema validation may not be supported: ", e);
				else
					LogSupport.ignore(log, e);
			}
			_parser.getXMLReader().setFeature(
					"http://xml.org/sax/features/validation", validating);
			_parser.getXMLReader().setFeature(
					"http://xml.org/sax/features/namespaces", validating);
			_parser.getXMLReader().setFeature(
					"http://xml.org/sax/features/namespace-prefixes",
					validating);
		} catch (Exception e) {
			log.warn(LogSupport.EXCEPTION, e);
			throw new Error(e.toString());
		}
	}

	/* ------------------------------------------------------------ */
	/**
	 * Redirect entity.
	 * 
	 * @param name
	 *            the name
	 * @param entity
	 *            the entity
	 */
	public synchronized void redirectEntity(String name, URL entity) {
		if (entity != null)
			_redirectMap.put(name, entity);
	}

	/* ------------------------------------------------------------ */
	/**
	 * Gets the xpath.
	 * 
	 * @return Returns the xpath.
	 */
	public String getXpath() {
		return _xpath;
	}

	/* ------------------------------------------------------------ */
	/**
	 * Set an XPath A very simple subset of xpath is supported to select a
	 * partial tree. Currently only path like "/node1/nodeA | /node1/nodeB" are
	 * supported.
	 * 
	 * @param xpath
	 *            The xpath to set.
	 */
	public void setXpath(String xpath) {
		_xpath = xpath;
		StringTokenizer tok = new StringTokenizer(xpath, "| ");
		while (tok.hasMoreTokens())
			_xpaths = LazyList.add(_xpaths, tok.nextToken());
	}

	/* ------------------------------------------------------------ */
	/**
	 * Parses the.
	 * 
	 * @param source
	 *            the source
	 * @return the node
	 * @throws IOException
	 *             Signals that an I/O exception has occurred.
	 * @throws SAXException
	 *             the sAX exception
	 */
	public synchronized Node parse(InputSource source) throws IOException,
			SAXException {
		Handler handler = new Handler();
		XMLReader reader = _parser.getXMLReader();
		reader.setContentHandler(handler);
		reader.setErrorHandler(handler);
		reader.setEntityResolver(handler);
		if (log.isDebugEnabled())
			log.debug("parsing: sid=" + source.getSystemId() + ",pid="
					+ source.getPublicId());
		_parser.parse(source, handler);
		if (handler._error != null)
			throw handler._error;
		Node doc = (Node) handler._top.get(0);
		handler.clear();
		return doc;
	}

	/* ------------------------------------------------------------ */
	/**
	 * Parse string URL.
	 * 
	 * @param url
	 *            the url
	 * @return the node
	 * @throws IOException
	 *             Signals that an I/O exception has occurred.
	 * @throws SAXException
	 *             the sAX exception
	 */
	public synchronized Node parse(String url) throws IOException, SAXException {
		if (log.isDebugEnabled())
			log.debug("parse: " + url);
		return parse(new InputSource(url));
	}

	/* ------------------------------------------------------------ */
	/**
	 * Parse File.
	 * 
	 * @param file
	 *            the file
	 * @return the node
	 * @throws IOException
	 *             Signals that an I/O exception has occurred.
	 * @throws SAXException
	 *             the sAX exception
	 */
	public synchronized Node parse(File file) throws IOException, SAXException {
		if (log.isDebugEnabled())
			log.debug("parse: " + file);
		return parse(new InputSource(file.toURL().toString()));
	}

	/* ------------------------------------------------------------ */
	/**
	 * Parse InputStream.
	 * 
	 * @param in
	 *            the in
	 * @return the node
	 * @throws IOException
	 *             Signals that an I/O exception has occurred.
	 * @throws SAXException
	 *             the sAX exception
	 */
	public synchronized Node parse(InputStream in) throws IOException,
			SAXException {
		Handler handler = new Handler();
		XMLReader reader = _parser.getXMLReader();
		reader.setContentHandler(handler);
		reader.setErrorHandler(handler);
		reader.setEntityResolver(handler);
		_parser.parse(new InputSource(in), handler);
		if (handler._error != null)
			throw handler._error;
		Node doc = (Node) handler._top.get(0);
		handler.clear();
		return doc;
	}

	/* ------------------------------------------------------------ */
	/**
	 * Parse URL.
	 * 
	 * @param url
	 *            the url
	 * @return the node
	 * @throws IOException
	 *             Signals that an I/O exception has occurred.
	 * @throws SAXException
	 *             the sAX exception
	 */
	public synchronized Node parse(URL url) throws IOException, SAXException {
		Node n = null;
		InputStream is = url.openStream();
		try {
			n = parse(is);
		} finally {
			try {
				is.close();
			} catch (Exception e) {
				// xerces closes streams you give it to parse, so this close()
				// will throw an
				// exception.
				// This behavior is stupid, so we should not assume it.
			}
		}
		return n;
	}

	/* ------------------------------------------------------------ */
	/* ------------------------------------------------------------ */
	/**
	 * The Class NoopHandler.
	 */
	private class NoopHandler extends DefaultHandler {

		/** The _next. */
		Handler _next;

		/** The _depth. */
		int _depth;

		/**
		 * Instantiates a new noop handler.
		 * 
		 * @param next
		 *            the next
		 */
		NoopHandler(Handler next) {
			this._next = next;
		}

		/* ------------------------------------------------------------ */
		/*
		 * (non-Javadoc)
		 * 
		 * @see
		 * org.xml.sax.helpers.DefaultHandler#startElement(java.lang.String,
		 * java.lang.String, java.lang.String, org.xml.sax.Attributes)
		 */
		public void startElement(String uri, String localName, String qName,
				Attributes attrs) throws SAXException {
			_depth++;
		}

		/* ------------------------------------------------------------ */
		/*
		 * (non-Javadoc)
		 * 
		 * @see org.xml.sax.helpers.DefaultHandler#endElement(java.lang.String,
		 * java.lang.String, java.lang.String)
		 */
		public void endElement(String uri, String localName, String qName)
				throws SAXException {
			if (_depth == 0)
				_parser.getXMLReader().setContentHandler(_next);
			else
				_depth--;
		}
	}

	/* ------------------------------------------------------------ */
	/* ------------------------------------------------------------ */
	/**
	 * The Class Handler.
	 */
	private class Handler extends DefaultHandler {

		/** The _top. */
		Node _top = new Node(null, null, null);

		/** The _error. */
		SAXParseException _error;

		/** The _context. */
		private Node _context = _top;

		/** The _noop. */
		private NoopHandler _noop;

		/**
		 * Instantiates a new handler.
		 */
		Handler() {
			_noop = new NoopHandler(this);
		}

		/* ------------------------------------------------------------ */
		/**
		 * Clear.
		 */
		void clear() {
			_top = null;
			_error = null;
			_context = null;
		}

		/* ------------------------------------------------------------ */
		/*
		 * (non-Javadoc)
		 * 
		 * @see
		 * org.xml.sax.helpers.DefaultHandler#startElement(java.lang.String,
		 * java.lang.String, java.lang.String, org.xml.sax.Attributes)
		 */
		public void startElement(String uri, String localName, String qName,
				Attributes attrs) throws SAXException {
			String name = (uri == null || uri.equals("")) ? qName : localName;
			Node node = new Node(_context, name, attrs);

			// check if the node matches any xpaths set?
			if (_xpaths != null) {
				String path = node.getPath();
				boolean match = false;
				for (int i = LazyList.size(_xpaths); !match && i-- > 0;) {
					String xpath = (String) LazyList.get(_xpaths, i);

					match = path.equals(xpath) || xpath.startsWith(path)
							&& xpath.length() > path.length()
							&& xpath.charAt(path.length()) == '/';
				}

				if (match) {
					_context.add(node);
					_context = node;
				} else {
					_parser.getXMLReader().setContentHandler(_noop);
				}
			} else {
				_context.add(node);
				_context = node;
			}
		}

		/* ------------------------------------------------------------ */
		/*
		 * (non-Javadoc)
		 * 
		 * @see org.xml.sax.helpers.DefaultHandler#endElement(java.lang.String,
		 * java.lang.String, java.lang.String)
		 */
		public void endElement(String uri, String localName, String qName)
				throws SAXException {
			_context = _context._parent;
		}

		/* ------------------------------------------------------------ */
		/*
		 * (non-Javadoc)
		 * 
		 * @see org.xml.sax.helpers.DefaultHandler#ignorableWhitespace(char[],
		 * int, int)
		 */
		public void ignorableWhitespace(char buf[], int offset, int len)
				throws SAXException {
		}

		/* ------------------------------------------------------------ */
		/*
		 * (non-Javadoc)
		 * 
		 * @see org.xml.sax.helpers.DefaultHandler#characters(char[], int, int)
		 */
		public void characters(char buf[], int offset, int len)
				throws SAXException {
			_context.add(new String(buf, offset, len));
		}

		/* ------------------------------------------------------------ */
		/*
		 * (non-Javadoc)
		 * 
		 * @see
		 * org.xml.sax.helpers.DefaultHandler#warning(org.xml.sax.SAXParseException
		 * )
		 */
		public void warning(SAXParseException ex) {
			log.debug(LogSupport.EXCEPTION, ex);
			log.warn("WARNING@" + getLocationString(ex) + " : " + ex.toString());
		}

		/* ------------------------------------------------------------ */
		/*
		 * (non-Javadoc)
		 * 
		 * @see
		 * org.xml.sax.helpers.DefaultHandler#error(org.xml.sax.SAXParseException
		 * )
		 */
		public void error(SAXParseException ex) throws SAXException {
			// Save error and continue to report other errors
			if (_error == null)
				_error = ex;
			log.debug(LogSupport.EXCEPTION, ex);
			log.warn("ERROR@" + getLocationString(ex) + " : " + ex.toString());
		}

		/* ------------------------------------------------------------ */
		/*
		 * (non-Javadoc)
		 * 
		 * @see org.xml.sax.helpers.DefaultHandler#fatalError(org.xml.sax.
		 * SAXParseException)
		 */
		public void fatalError(SAXParseException ex) throws SAXException {
			_error = ex;
			log.debug(LogSupport.EXCEPTION, ex);
			log.warn("FATAL@" + getLocationString(ex) + " : " + ex.toString());
			throw ex;
		}

		/* ------------------------------------------------------------ */
		/**
		 * Gets the location string.
		 * 
		 * @param ex
		 *            the ex
		 * @return the location string
		 */
		private String getLocationString(SAXParseException ex) {
			return ex.getSystemId() + " line:" + ex.getLineNumber() + " col:"
					+ ex.getColumnNumber();
		}

		/* ------------------------------------------------------------ */
		/*
		 * (non-Javadoc)
		 * 
		 * @see
		 * org.xml.sax.helpers.DefaultHandler#resolveEntity(java.lang.String,
		 * java.lang.String)
		 */
		public InputSource resolveEntity(String pid, String sid) {
			if (log.isDebugEnabled())
				log.debug("resolveEntity(" + pid + ", " + sid + ")");
			URL entity = null;
			if (pid != null)
				entity = (URL) _redirectMap.get(pid);
			if (entity == null)
				entity = (URL) _redirectMap.get(sid);
			if (entity == null) {
				String dtd = sid;
				if (dtd.lastIndexOf('/') >= 0)
					dtd = dtd.substring(dtd.lastIndexOf('/') + 1);
				if (log.isDebugEnabled())
					log.debug("Can't exact match entity in redirect map, trying "
							+ dtd);
				entity = (URL) _redirectMap.get(dtd);
			}
			if (entity != null) {
				try {
					InputStream in = entity.openStream();
					if (log.isDebugEnabled())
						log.debug("Redirected entity " + sid + " --> " + entity);
					InputSource is = new InputSource(in);
					is.setSystemId(sid);
					return is;
				} catch (IOException e) {
					LogSupport.ignore(log, e);
				}
			}
			return null;
		}
	}

	/* ------------------------------------------------------------ */
	/* ------------------------------------------------------------ */
	/**
	 * XML Attribute.
	 */
	public static class Attribute {

		/** The _name. */
		private String _name;

		/** The _value. */
		private String _value;

		/**
		 * Instantiates a new attribute.
		 * 
		 * @param n
		 *            the n
		 * @param v
		 *            the v
		 */
		Attribute(String n, String v) {
			_name = n;
			_value = v;
		}

		/**
		 * Gets the name.
		 * 
		 * @return the name
		 */
		public String getName() {
			return _name;
		}

		/**
		 * Gets the value.
		 * 
		 * @return the value
		 */
		public String getValue() {
			return _value;
		}
	}

	/* ------------------------------------------------------------ */
	/* ------------------------------------------------------------ */
	/**
	 * XML Node. Represents an XML element with optional attributes and ordered
	 * content.
	 */
	public static class Node extends AbstractList {

		/** The _parent. */
		Node _parent;

		/** The _list. */
		private ArrayList _list;

		/** The _tag. */
		private String _tag;

		/** The _attrs. */
		private Attribute[] _attrs;

		/** The _last string. */
		private boolean _lastString = false;

		/** The _path. */
		private String _path;

		/* ------------------------------------------------------------ */
		/**
		 * Instantiates a new node.
		 * 
		 * @param parent
		 *            the parent
		 * @param tag
		 *            the tag
		 * @param attrs
		 *            the attrs
		 */
		Node(Node parent, String tag, Attributes attrs) {
			_parent = parent;
			_tag = tag;
			if (attrs != null) {
				_attrs = new Attribute[attrs.getLength()];
				for (int i = 0; i < attrs.getLength(); i++) {
					String name = attrs.getLocalName(i);
					if (name == null || name.equals(""))
						name = attrs.getQName(i);
					_attrs[i] = new Attribute(name, attrs.getValue(i));
				}
			}
		}

		/* ------------------------------------------------------------ */
		/**
		 * Gets the parent.
		 * 
		 * @return the parent
		 */
		public Node getParent() {
			return _parent;
		}

		/* ------------------------------------------------------------ */
		/**
		 * Gets the tag.
		 * 
		 * @return the tag
		 */
		public String getTag() {
			return _tag;
		}

		/* ------------------------------------------------------------ */
		/**
		 * Gets the path.
		 * 
		 * @return the path
		 */
		public String getPath() {
			if (_path == null) {
				if (getParent() != null && getParent().getTag() != null)
					_path = getParent().getPath() + "/" + _tag;
				else
					_path = "/" + _tag;
			}
			return _path;
		}

		/* ------------------------------------------------------------ */
		/**
		 * Get an array of element attributes.
		 * 
		 * @return the attributes
		 */
		public Attribute[] getAttributes() {
			return _attrs;
		}

		/* ------------------------------------------------------------ */
		/**
		 * Get an element attribute.
		 * 
		 * @param name
		 *            the name
		 * @return attribute or null.
		 */
		public String getAttribute(String name) {
			return getAttribute(name, null);
		}

		/* ------------------------------------------------------------ */
		/**
		 * Get an element attribute.
		 * 
		 * @param name
		 *            the name
		 * @param dft
		 *            the dft
		 * @return attribute or null.
		 */
		public String getAttribute(String name, String dft) {
			if (_attrs == null || name == null)
				return dft;
			for (int i = 0; i < _attrs.length; i++)
				if (name.equals(_attrs[i].getName()))
					return _attrs[i].getValue();
			return dft;
		}

		/* ------------------------------------------------------------ */
		/**
		 * Get the number of children nodes.
		 * 
		 * @return the int
		 */
		public int size() {
			if (_list != null)
				return _list.size();
			return 0;
		}

		/* ------------------------------------------------------------ */
		/**
		 * Get the ith child node or content.
		 * 
		 * @param i
		 *            the i
		 * @return Node or String.
		 */
		public Object get(int i) {
			if (_list != null)
				return _list.get(i);
			return null;
		}

		/* ------------------------------------------------------------ */
		/**
		 * Get the first child node with the tag.
		 * 
		 * @param tag
		 *            the tag
		 * @return Node or null.
		 */
		public Node get(String tag) {
			if (_list != null) {
				for (int i = 0; i < _list.size(); i++) {
					Object o = _list.get(i);
					if (o instanceof Node) {
						Node n = (Node) o;
						if (tag.equals(n._tag))
							return n;
					}
				}
			}
			return null;
		}

		/* ------------------------------------------------------------ */
		/*
		 * (non-Javadoc)
		 * 
		 * @see java.util.AbstractList#add(int, java.lang.Object)
		 */
		public void add(int i, Object o) {
			if (_list == null)
				_list = new ArrayList();
			if (o instanceof String) {
				if (_lastString) {
					int last = _list.size() - 1;
					_list.set(last, (String) _list.get(last) + o);
				} else
					_list.add(i, o);
				_lastString = true;
			} else {
				_lastString = false;
				_list.add(i, o);
			}
		}

		/* ------------------------------------------------------------ */
		/*
		 * (non-Javadoc)
		 * 
		 * @see java.util.AbstractList#clear()
		 */
		public void clear() {
			if (_list != null)
				_list.clear();
			_list = null;
		}

		/* ------------------------------------------------------------ */
		/**
		 * Get a tag as a string.
		 * 
		 * @param tag
		 *            The tag to get
		 * @param tags
		 *            IF true, tags are included in the value.
		 * @param trim
		 *            If true, trim the value.
		 * @return results of get(tag).toString(tags).
		 */
		public String getString(String tag, boolean tags, boolean trim) {
			Node node = get(tag);
			if (node == null)
				return null;
			String s = node.toString(tags);
			if (s != null && trim)
				s = s.trim();
			return s;
		}

		/* ------------------------------------------------------------ */
		/*
		 * (non-Javadoc)
		 * 
		 * @see java.util.AbstractCollection#toString()
		 */
		public synchronized String toString() {
			return toString(true);
		}

		/* ------------------------------------------------------------ */
		/**
		 * Convert to a string.
		 * 
		 * @param tag
		 *            If false, only content is shown.
		 * @return the string
		 */
		public synchronized String toString(boolean tag) {
			StringBuffer buf = new StringBuffer();
			synchronized (buf) {
				toString(buf, tag);
				return buf.toString();
			}
		}

		/* ------------------------------------------------------------ */
		/**
		 * Convert to a string.
		 * 
		 * @param tag
		 *            If false, only content is shown.
		 * @param trim
		 *            the trim
		 * @return the string
		 */
		public synchronized String toString(boolean tag, boolean trim) {
			String s = toString(tag);
			if (s != null && trim)
				s = s.trim();
			return s;
		}

		/* ------------------------------------------------------------ */
		/**
		 * To string.
		 * 
		 * @param buf
		 *            the buf
		 * @param tag
		 *            the tag
		 */
		private synchronized void toString(StringBuffer buf, boolean tag) {
			if (tag) {
				buf.append("<");
				buf.append(_tag);
				if (_attrs != null) {
					for (int i = 0; i < _attrs.length; i++) {
						buf.append(' ');
						buf.append(_attrs[i].getName());
						buf.append("=\"");
						buf.append(_attrs[i].getValue());
						buf.append("\"");
					}
				}
			}
			if (_list != null) {
				if (tag)
					buf.append(">");
				for (int i = 0; i < _list.size(); i++) {
					Object o = _list.get(i);
					if (o == null)
						continue;
					if (o instanceof Node)
						((Node) o).toString(buf, tag);
					else
						buf.append(o.toString());
				}
				if (tag) {
					buf.append("</");
					buf.append(_tag);
					buf.append(">");
				}
			} else if (tag)
				buf.append("/>");
		}

		/* ------------------------------------------------------------ */
		/**
		 * Iterator over named child nodes.
		 * 
		 * @param tag
		 *            The tag of the nodes.
		 * @return Iterator over all child nodes with the specified tag.
		 */
		public Iterator iterator(final String tag) {
			return new Iterator() {
				int c = 0;
				Node _node;

				/* -------------------------------------------------- */
				public boolean hasNext() {
					if (_node != null)
						return true;
					while (_list != null && c < _list.size()) {
						Object o = _list.get(c);
						if (o instanceof Node) {
							Node n = (Node) o;
							if (tag.equals(n._tag)) {
								_node = n;
								return true;
							}
						}
						c++;
					}
					return false;
				}

				/* -------------------------------------------------- */
				public Object next() {
					try {
						if (hasNext())
							return _node;
						throw new NoSuchElementException();
					} finally {
						_node = null;
						c++;
					}
				}

				/* -------------------------------------------------- */
				public void remove() {
					throw new UnsupportedOperationException("Not supported");
				}
			};
		}
	}
}
