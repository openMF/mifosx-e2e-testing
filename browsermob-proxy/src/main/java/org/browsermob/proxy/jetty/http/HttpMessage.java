// ========================================================================
// $Id: HttpMessage.java,v 1.41 2006/04/04 22:28:02 gregwilkins Exp $
// Copyright 199-2004 Mort Bay Consulting Pty. Ltd.
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

package org.browsermob.proxy.jetty.http;

import org.apache.commons.logging.Log;
import org.browsermob.proxy.jetty.log.LogFactory;
import org.browsermob.proxy.jetty.util.LogSupport;
import org.browsermob.proxy.jetty.util.QuotedStringTokenizer;
import org.browsermob.proxy.jetty.util.TypeUtil;

import java.io.*;
import java.util.*;

// TODO: Auto-generated Javadoc
/* ------------------------------------------------------------ */
/**
 * HTTP Message base. This class forms the basis of HTTP requests and replies.
 * It provides header fields, content and optional trailer fields, while
 * managing the state of the message.
 * 
 * @version $Id: HttpMessage.java,v 1.41 2006/04/04 22:28:02 gregwilkins Exp $
 * @author Greg Wilkins (gregw)
 */

public abstract class HttpMessage {

	/** The log. */
	private static Log log = LogFactory.getLog(HttpMessage.class);

	/* ------------------------------------------------------------ */
	/** The Constant __SCHEME. */
	public final static String __SCHEME = "http";

	/** The Constant __SSL_SCHEME. */
	public final static String __SSL_SCHEME = "https";

	/* ------------------------------------------------------------ */
	/** The Constant __HTTP_0_9. */
	public final static String __HTTP_0_9 = "HTTP/0.9";

	/** The Constant __HTTP_1_0. */
	public final static String __HTTP_1_0 = "HTTP/1.0";

	/** The Constant __HTTP_1_1. */
	public final static String __HTTP_1_1 = "HTTP/1.1";

	/** The Constant __HTTP_1_X. */
	public final static String __HTTP_1_X = "HTTP/1.";

	/* ------------------------------------------------------------ */
	/**
	 * The Interface HeaderWriter.
	 */
	public interface HeaderWriter {

		/**
		 * Write header.
		 * 
		 * @param httpMessage
		 *            the http message
		 * @throws IOException
		 *             Signals that an I/O exception has occurred.
		 */
		void writeHeader(HttpMessage httpMessage) throws IOException;
	}

	/* ------------------------------------------------------------ */
	/* ------------------------------------------------------------ */
	/**
	 * Message States.
	 */
	public final static int __MSG_EDITABLE = 0, // Created locally, all set
												// methods enabled
			__MSG_BAD = 1, // Bad message/
			__MSG_RECEIVED = 2, // Received from connection.
			__MSG_SENDING = 3, // Headers sent.
			__MSG_SENT = 4; // Entity and trailers sent.

	/** The Constant __state. */
	public final static String[] __state = { "EDITABLE", "BAD", "RECEIVED",
			"SENDING", "SENT" };

	/* ------------------------------------------------------------ */
	/** The _state. */
	protected int _state = __MSG_EDITABLE;

	/** The _version. */
	protected String _version;

	/** The _dot version. */
	protected int _dotVersion;

	/** The _header. */
	protected HttpFields _header = new HttpFields();

	/** The _connection. */
	protected HttpConnection _connection;

	/** The _character encoding. */
	protected String _characterEncoding;

	/** The _mime type. */
	protected String _mimeType;

	/** The _wrapper. */
	protected Object _wrapper;

	/** The _attributes. */
	protected Map _attributes;

	/* ------------------------------------------------------------ */
	/**
	 * Constructor.
	 */
	protected HttpMessage() {
	}

	/* ------------------------------------------------------------ */
	/**
	 * Constructor.
	 * 
	 * @param connection
	 *            the connection
	 */
	protected HttpMessage(HttpConnection connection) {
		_connection = connection;
	}

	/* ------------------------------------------------------------ */
	/**
	 * Set a wrapper object. A wrapper object is an object associated with this
	 * message and presents it with an different interface. The primary example
	 * of a HttpRequest facade is ServletHttpRequest. A single facade object may
	 * be associated with the message with this call and retrieved with the
	 * getFacade method.
	 * 
	 * @param wrapper
	 *            the new wrapper
	 */
	public void setWrapper(Object wrapper) {
		_wrapper = wrapper;
	}

	/* ------------------------------------------------------------ */
	/**
	 * Get an associated wrapper object.
	 * 
	 * @return Wrapper message or null.
	 */
	public Object getWrapper() {
		return _wrapper;
	}

	/* ------------------------------------------------------------ */
	/**
	 * Reset.
	 */
	protected void reset() {
		_state = __MSG_EDITABLE;
		_header.clear();
	}

	/* ------------------------------------------------------------ */
	/**
	 * Gets the http connection.
	 * 
	 * @return the http connection
	 */
	public HttpConnection getHttpConnection() {
		return _connection;
	}

	/* ------------------------------------------------------------ */
	/**
	 * Gets the input stream.
	 * 
	 * @return the input stream
	 */
	public InputStream getInputStream() {
		if (_connection == null)
			return null;
		return _connection.getInputStream();
	}

	/* ------------------------------------------------------------ */
	/**
	 * Gets the output stream.
	 * 
	 * @return the output stream
	 */
	public OutputStream getOutputStream() {
		if (_connection == null)
			return null;
		return _connection.getOutputStream();
	}

	/* ------------------------------------------------------------ */
	/**
	 * Get the message state.
	 * 
	 * <PRE>
	 * __MSG_EDITABLE = 0 - Created locally, all set methods enabled
	 * __MSG_BAD      = 1 - Bad message or send failure.
	 * __MSG_RECEIVED = 2 - Received from connection.
	 * __MSG_SENDING  = 3 - Headers sent.
	 * __MSG_SENT     = 4 - Entity and trailers sent.
	 * </PRE>
	 * 
	 * @return the state.
	 */
	public int getState() {
		return _state;
	}

	/* ------------------------------------------------------------ */
	/**
	 * Set the message state. This method should be used by experts only as it
	 * can prevent normal handling of a request/response.
	 * 
	 * @param state
	 *            The new state
	 * @return the last state.
	 */
	public int setState(int state) {
		int last = _state;
		_state = state;
		return last;
	}

	/* ------------------------------------------------------------ */
	/**
	 * Get the protocol version.
	 * 
	 * @return return the version.
	 */
	public String getVersion() {
		return _version;
	}

	/* ------------------------------------------------------------ */
	/**
	 * Get the protocol version.
	 * 
	 * @return return the version dot (0.9=-1 1.0=0 1.1=1)
	 */
	public int getDotVersion() {
		return _dotVersion;
	}

	/* ------------------------------------------------------------ */
	/**
	 * Get field names.
	 * 
	 * @return Enumeration of Field Names
	 */
	public Enumeration getFieldNames() {
		return _header.getFieldNames();
	}

	/* ------------------------------------------------------------ */
	/**
	 * Does the header or trailer contain a field?.
	 * 
	 * @param name
	 *            Name of the field
	 * @return True if contained in header or trailer.
	 */
	public boolean containsField(String name) {
		return _header.containsKey(name);
	}

	/* ------------------------------------------------------------ */
	/**
	 * Get a message field. Get a field from a message header. If no header
	 * field is found, trailer fields are searched.
	 * 
	 * @param name
	 *            The field name
	 * @return field value or null
	 */
	public String getField(String name) {
		return _header.get(name);
	}

	/* ------------------------------------------------------------ */
	/**
	 * Get a multi valued message field. Get a field from a message header.
	 * 
	 * @param name
	 *            The field name
	 * @return Enumeration of field values or null
	 */
	public Enumeration getFieldValues(String name) {
		return _header.getValues(name);
	}

	/* ------------------------------------------------------------ */
	/**
	 * Get a multi valued message field. Get a field from a message header.
	 * 
	 * @param name
	 *            The field name
	 * @param separators
	 *            String of separators.
	 * @return Enumeration of field values or null
	 */
	public Enumeration getFieldValues(String name, String separators) {
		return _header.getValues(name, separators);
	}

	/* ------------------------------------------------------------ */
	/**
	 * Set a field value. If the message is editable, then a header field is
	 * set. Otherwise if the message is sending and a HTTP/1.1 version, then a
	 * trailer field is set.
	 * 
	 * @param name
	 *            Name of field
	 * @param value
	 *            New value of field
	 * @return Old value of field
	 */
	public String setField(String name, String value) {
		if (_state != __MSG_EDITABLE)
			return null;

		if (HttpFields.__ContentType.equalsIgnoreCase(name)) {
			String old = _header.get(name);
			setContentType(value);
			return old;
		}

		return _header.put(name, value);
	}

	/* ------------------------------------------------------------ */
	/**
	 * Set a multi-value field value. If the message is editable, then a header
	 * field is set. Otherwise if the meesage is sending and a HTTP/1.1 version,
	 * then a trailer field is set.
	 * 
	 * @param name
	 *            Name of field
	 * @param value
	 *            New values of field
	 */
	public void setField(String name, List value) {
		if (_state != __MSG_EDITABLE)
			return;
		_header.put(name, value);
	}

	/* ------------------------------------------------------------ */
	/**
	 * Add to a multi-value field value. If the message is editable, then a
	 * header field is set. Otherwise if the meesage is sending and a HTTP/1.1
	 * version, then a trailer field is set.
	 * 
	 * @param name
	 *            Name of field
	 * @param value
	 *            New value to add to the field
	 * @throws IllegalStateException
	 *             Not editable or sending 1.1 with trailers
	 */
	public void addField(String name, String value)
			throws IllegalStateException {
		if (_state != __MSG_EDITABLE)
			return;
		_header.add(name, value);
	}

	/* -------------------------------------------------------------- */
	/**
	 * Get a field as an integer value. Look in header and trailer fields.
	 * Returns the value of an integer field, or -1 if not found. The case of
	 * the field name is ignored.
	 * 
	 * @param name
	 *            the case-insensitive field name
	 * @return the int field
	 */
	public int getIntField(String name) {
		return _header.getIntField(name);
	}

	/* -------------------------------------------------------------- */
	/**
	 * Sets the value of an integer field. Header or Trailer fields are set
	 * depending on message state.
	 * 
	 * @param name
	 *            the field name
	 * @param value
	 *            the field integer value
	 */
	public void setIntField(String name, int value) {
		if (_state != __MSG_EDITABLE)
			return;
		_header.put(name, TypeUtil.toString(value));
	}

	/* -------------------------------------------------------------- */
	/**
	 * Adds the value of an integer field. Header or Trailer fields are set
	 * depending on message state.
	 * 
	 * @param name
	 *            the field name
	 * @param value
	 *            the field integer value
	 */
	public void addIntField(String name, int value) {
		if (_state != __MSG_EDITABLE)
			return;
		_header.add(name, TypeUtil.toString(value));
	}

	/* -------------------------------------------------------------- */
	/**
	 * Get a header as a date value. Look in header and trailer fields. Returns
	 * the value of a date field, or -1 if not found. The case of the field name
	 * is ignored.
	 * 
	 * @param name
	 *            the case-insensitive field name
	 * @return the date field
	 */
	public long getDateField(String name) {
		return _header.getDateField(name);
	}

	/* -------------------------------------------------------------- */
	/**
	 * Sets the value of a date field. Header or Trailer fields are set
	 * depending on message state.
	 * 
	 * @param name
	 *            the field name
	 * @param date
	 *            the field date value
	 */
	public void setDateField(String name, Date date) {
		if (_state != __MSG_EDITABLE)
			return;
		_header.putDateField(name, date);
	}

	/* -------------------------------------------------------------- */
	/**
	 * Adds the value of a date field. Header or Trailer fields are set
	 * depending on message state.
	 * 
	 * @param name
	 *            the field name
	 * @param date
	 *            the field date value
	 */
	public void addDateField(String name, Date date) {
		if (_state != __MSG_EDITABLE)
			return;
		_header.addDateField(name, date);
	}

	/* -------------------------------------------------------------- */
	/**
	 * Sets the value of a date field. Header or Trailer fields are set
	 * depending on message state.
	 * 
	 * @param name
	 *            the field name
	 * @param date
	 *            the field date value
	 */
	public void setDateField(String name, long date) {
		if (_state != __MSG_EDITABLE)
			return;
		_header.putDateField(name, date);
	}

	/* -------------------------------------------------------------- */
	/**
	 * Add the value of a date field. Header or Trailer fields are set depending
	 * on message state.
	 * 
	 * @param name
	 *            the field name
	 * @param date
	 *            the field date value
	 */
	public void addDateField(String name, long date) {
		if (_state != __MSG_EDITABLE)
			return;
		_header.addDateField(name, date);
	}

	/* ------------------------------------------------------------ */
	/**
	 * Remove a field. If the message is editable, then a header field is
	 * removed. Otherwise if the message is sending and a HTTP/1.1 version, then
	 * a trailer field is removed.
	 * 
	 * @param name
	 *            Name of field
	 * @return Old value of field
	 * @throws IllegalStateException
	 *             the illegal state exception
	 */
	public String removeField(String name) throws IllegalStateException {
		if (_state != __MSG_EDITABLE)
			return null;
		return _header.remove(name);
	}

	/* ------------------------------------------------------------ */
	/**
	 * Set the request version.
	 * 
	 * @param version
	 *            the HTTP version string (eg HTTP/1.1)
	 */
	public void setVersion(String version) {
		if (_state != __MSG_EDITABLE)
			throw new IllegalStateException("Not EDITABLE");
		if (version.equalsIgnoreCase(__HTTP_1_1)) {
			_dotVersion = 1;
			_version = __HTTP_1_1;
		} else if (version.equalsIgnoreCase(__HTTP_1_0)) {
			_dotVersion = 0;
			_version = __HTTP_1_0;
		} else if (version.equalsIgnoreCase(__HTTP_0_9)) {
			_dotVersion = -1;
			_version = __HTTP_0_9;
		} else
			throw new IllegalArgumentException("Unknown version");
	}

	/* ------------------------------------------------------------ */
	/**
	 * Get the HTTP header fields.
	 * 
	 * @return Header or null
	 */
	public HttpFields getHeader() {
		if (_state != __MSG_EDITABLE)
			throw new IllegalStateException("Can't get header in "
					+ __state[_state]);

		return _header;
	}

	/* -------------------------------------------------------------- */
	/**
	 * Gets the content length.
	 * 
	 * @return the content length
	 */
	public int getContentLength() {
		return getIntField(HttpFields.__ContentLength);
	}

	/* ------------------------------------------------------------ */
	/**
	 * Sets the content length.
	 * 
	 * @param len
	 *            the new content length
	 */
	public void setContentLength(int len) {
		setIntField(HttpFields.__ContentLength, len);
	}

	/* -------------------------------------------------------------- */
	/**
	 * Character Encoding. The character encoding is extracted from the
	 * ContentType field when set.
	 * 
	 * @return Character Encoding or null
	 */
	public String getCharacterEncoding() {
		return _characterEncoding;
	}

	/* ------------------------------------------------------------ */
	/**
	 * Set Character Encoding.
	 * 
	 * @param encoding
	 *            An encoding that can override the encoding set from the
	 *            ContentType field.
	 * @param setField
	 *            the set field
	 */
	public void setCharacterEncoding(String encoding, boolean setField) {
		if (isCommitted())
			return;

		if (encoding == null) {
			// Clear any encoding.
			if (_characterEncoding != null) {
				_characterEncoding = null;
				if (setField)
					_header.put(HttpFields.__ContentType, _mimeType);
			}
		} else {
			// No, so just add this one to the mimetype
			_characterEncoding = encoding;
			if (setField && _mimeType != null) {
				_header.put(
						HttpFields.__ContentType,
						_mimeType
								+ ";charset="
								+ QuotedStringTokenizer.quote(
										_characterEncoding, ";= "));
			}
		}
	}

	/* -------------------------------------------------------------- */
	/**
	 * Gets the content type.
	 * 
	 * @return the content type
	 */
	public String getContentType() {
		return getField(HttpFields.__ContentType);
	}

	/* ------------------------------------------------------------ */
	/**
	 * Sets the content type.
	 * 
	 * @param contentType
	 *            the new content type
	 */
	public void setContentType(String contentType) {
		if (isCommitted())
			return;

		if (contentType == null) {
			_mimeType = null;
			_header.remove(HttpFields.__ContentType);
		} else {
			// Look for encoding in contentType
			int i0 = contentType.indexOf(';');

			if (i0 > 0) {
				// Strip params off mimetype
				_mimeType = contentType.substring(0, i0).trim();

				// Look for charset
				int i1 = contentType.indexOf("charset=", i0);
				if (i1 >= 0) {
					i1 += 8;
					int i2 = contentType.indexOf(' ', i1);
					_characterEncoding = (0 < i2) ? contentType.substring(i1,
							i2) : contentType.substring(i1);
					_characterEncoding = QuotedStringTokenizer
							.unquote(_characterEncoding);
				} else // No encoding in the params.
				{
					if (_characterEncoding != null)
						// Add any previously set encoding.
						contentType += ";charset="
								+ QuotedStringTokenizer.quote(
										_characterEncoding, ";= ");
				}
			} else // No encoding and no other params
			{
				_mimeType = contentType;
				// Add any previously set encoding.
				if (_characterEncoding != null)
					contentType += ";charset="
							+ QuotedStringTokenizer.quote(_characterEncoding,
									";= ");
			}

			_header.put(HttpFields.__ContentType, contentType);
		}
	}

	/* ------------------------------------------------------------ */
	/**
	 * Update mime type.
	 */
	public void updateMimeType() {
		_mimeType = null;
		_characterEncoding = null;

		String contentType = _header.get(HttpFields.__ContentType);
		if (contentType != null) {
			// Look for encoding in contentType
			int i0 = contentType.indexOf(';');

			if (i0 > 0) {
				// Strip params off mimetype
				_mimeType = contentType.substring(0, i0).trim();

				// Look for charset
				int i1 = contentType.indexOf("charset=", i0);
				if (i1 >= 0) {
					i1 += 8;
					int i2 = contentType.indexOf(' ', i1);
					_characterEncoding = (0 < i2) ? contentType.substring(i1,
							i2) : contentType.substring(i1);
					_characterEncoding = QuotedStringTokenizer
							.unquote(_characterEncoding);
				}
			} else {
				_mimeType = contentType;
			}
		}
	}

	/* -------------------------------------------------------------- */
	/**
	 * Mime Type. The mime type is extracted from the contenttype field when
	 * set.
	 * 
	 * @return Content type without parameters
	 */
	public String getMimeType() {
		return _mimeType;
	}

	/* ------------------------------------------------------------ */
	/**
	 * Recycle the message.
	 * 
	 * @param connection
	 *            the connection
	 */
	void recycle(HttpConnection connection) {
		_state = __MSG_EDITABLE;
		_version = __HTTP_1_1;
		_dotVersion = 1;
		_header.clear();
		_connection = connection;
		_characterEncoding = null;
		_mimeType = null;
		if (_attributes != null)
			_attributes.clear();
	}

	/* ------------------------------------------------------------ */
	/**
	 * Destroy the message. Help the garbage collector by nulling everything
	 * that we can.
	 */
	public void destroy() {
		recycle(null);
		if (_header != null)
			_header.destroy();
		_header = null;
	}

	/* ------------------------------------------------------------ */
	/**
	 * Convert to String. The message header is converted to a String.
	 * 
	 * @return String
	 */
	public synchronized String toString() {
		StringWriter writer = new StringWriter();

		int save_state = _state;
		try {
			_state = __MSG_EDITABLE;
			writeHeader(writer);
		} catch (IOException e) {
			log.warn(LogSupport.EXCEPTION, e);
		} finally {
			_state = save_state;
		}
		return writer.toString();
	}

	/* ------------------------------------------------------------ */
	/**
	 * Write the message header.
	 * 
	 * @param writer
	 *            the writer
	 * @throws IOException
	 *             Signals that an I/O exception has occurred.
	 */
	abstract void writeHeader(Writer writer) throws IOException;

	/* ------------------------------------------------------------ */
	/**
	 * Checks if is committed.
	 * 
	 * @return true, if is committed
	 */
	public boolean isCommitted() {
		return _state == __MSG_SENDING || _state == __MSG_SENT;
	}

	/* ------------------------------------------------------------ */
	/**
	 * Checks if is dirty.
	 * 
	 * @return true if the message has been modified.
	 */
	public boolean isDirty() {
		HttpOutputStream out = (HttpOutputStream) getOutputStream();
		return _state != __MSG_EDITABLE || (out != null && out.isWritten());
	}

	/* ------------------------------------------------------------ */
	/**
	 * Get a request attribute.
	 * 
	 * @param name
	 *            Attribute name
	 * @return Attribute value
	 */
	public Object getAttribute(String name) {
		if (_attributes == null)
			return null;
		return _attributes.get(name);
	}

	/* ------------------------------------------------------------ */
	/**
	 * Set a request attribute.
	 * 
	 * @param name
	 *            Attribute name
	 * @param attribute
	 *            Attribute value
	 * @return Previous Attribute value
	 */
	public Object setAttribute(String name, Object attribute) {
		if (_attributes == null)
			_attributes = new HashMap(11);
		return _attributes.put(name, attribute);
	}

	/* ------------------------------------------------------------ */
	/**
	 * Get Attribute names.
	 * 
	 * @return Enumeration of Strings
	 */
	public Enumeration getAttributeNames() {
		if (_attributes == null)
			return Collections.enumeration(Collections.EMPTY_LIST);
		return Collections.enumeration(_attributes.keySet());
	}

	/* ------------------------------------------------------------ */
	/**
	 * Remove a request attribute.
	 * 
	 * @param name
	 *            Attribute name
	 */
	public void removeAttribute(String name) {
		if (_attributes != null)
			_attributes.remove(name);
	}
}
