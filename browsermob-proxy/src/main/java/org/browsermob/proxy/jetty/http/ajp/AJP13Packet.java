// ========================================================================
// $Id: AJP13Packet.java,v 1.24 2006/10/08 14:13:05 gregwilkins Exp $
// Copyright 2002-2004 Mort Bay Consulting Pty. Ltd.
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

package org.browsermob.proxy.jetty.http.ajp;

import org.apache.commons.logging.Log;
import org.browsermob.proxy.jetty.log.LogFactory;
import org.browsermob.proxy.jetty.util.ByteArrayISO8859Writer;
import org.browsermob.proxy.jetty.util.ByteArrayPool;
import org.browsermob.proxy.jetty.util.LogSupport;
import org.browsermob.proxy.jetty.util.StringUtil;

import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.UnsupportedEncodingException;
import java.util.HashMap;

// TODO: Auto-generated Javadoc
/* ------------------------------------------------------------ */
/**
 * The Class AJP13Packet.
 * 
 * @version $Id: AJP13Packet.java,v 1.24 2006/10/08 14:13:05 gregwilkins Exp $
 * @author Greg Wilkins (gregw)
 */
public abstract class AJP13Packet {

	/** The log. */
	private static Log log = LogFactory.getLog(AJP13Packet.class);

	/* ------------------------------------------------------------ */
	/** The Constant __MAX_BUF. */
	public static final int __MAX_BUF = 8192;

	/** The Constant __HDR_SIZE. */
	public static final int __HDR_SIZE = 4;

	/** The Constant __DATA_HDR. */
	public static final int __DATA_HDR = 7;

	/** The Constant __MAX_DATA. */
	public static final int __MAX_DATA = __MAX_BUF - __DATA_HDR;

	/** The Constant __GET_BODY_CHUNK. */
	public static final byte __FORWARD_REQUEST = 2, __SHUTDOWN = 7,
			__SEND_BODY_CHUNK = 3, __SEND_HEADERS = 4, __END_RESPONSE = 5,
			__GET_BODY_CHUNK = 6;

	/** The Constant __method. */
	public static final String[] __method = { "ERROR", "OPTIONS", "GET",
			"HEAD", "POST", "PUT", "DELETE", "TRACE", "PROPFIND", "PROPPATCH",
			"MKCOL", "COPY", "MOVE", "LOCK", "UNLOCK", "ACL", "REPORT",
			"VERSION-CONTROL", "CHECKIN", "CHECKOUT", "UNCHECKOUT", "SEARCH" };

	/** The __header. */
	public String[] __header;

	/** The __header map. */
	protected HashMap __headerMap = new HashMap();

	/**
	 * Abstract method to populate the header array and hash map.
	 * 
	 */
	abstract public void populateHeaders();

	/* ------------------------------------------------------------ */
	/** The _buf. */
	private byte[] _buf;

	/** The _bytes. */
	private int _bytes;

	/** The _pos. */
	private int _pos;

	/** The _byte writer. */
	private ByteArrayISO8859Writer _byteWriter;

	/** The _own buffer. */
	private boolean _ownBuffer;

	/* ------------------------------------------------------------ */
	/**
	 * Instantiates a new aJ p13 packet.
	 * 
	 * @param buffer
	 *            the buffer
	 * @param len
	 *            the len
	 */
	public AJP13Packet(byte[] buffer, int len) {
		populateHeaders();
		_buf = buffer;
		_ownBuffer = false;
		_bytes = len;
	}

	/* ------------------------------------------------------------ */
	/**
	 * Instantiates a new aJ p13 packet.
	 * 
	 * @param buffer
	 *            the buffer
	 */
	public AJP13Packet(byte[] buffer) {
		populateHeaders();
		_buf = buffer;
		_ownBuffer = false;
	}

	/* ------------------------------------------------------------ */
	/**
	 * Instantiates a new aJ p13 packet.
	 * 
	 * @param size
	 *            the size
	 */
	public AJP13Packet(int size) {
		populateHeaders();
		_buf = ByteArrayPool.getByteArray(size);
		_ownBuffer = true;
	}

	/* ------------------------------------------------------------ */
	/**
	 * Prepare.
	 */
	public void prepare() {
		_bytes = 0;
		_pos = 0;
		addByte((byte) 'A');
		addByte((byte) 'B');
		addInt(0);
	}

	/* ------------------------------------------------------------ */
	/**
	 * Destroy.
	 */
	public void destroy() {
		if (_ownBuffer)
			ByteArrayPool.returnByteArray(_buf);
		_buf = null;
		_byteWriter = null;
	}

	/* ------------------------------------------------------------ */
	/**
	 * Reset.
	 */
	public void reset() {
		_bytes = 0;
		_pos = 0;
	}

	/* ------------------------------------------------------------ */
	/**
	 * Gets the buffer.
	 * 
	 * @return the buffer
	 */
	public byte[] getBuffer() {
		return _buf;
	}

	/* ------------------------------------------------------------ */
	/**
	 * Reset data.
	 */
	public void resetData() {
		_bytes = __HDR_SIZE;
		_pos = 0;
	}

	/* ------------------------------------------------------------ */
	/**
	 * Gets the mark.
	 * 
	 * @return the mark
	 */
	public int getMark() {
		return _bytes;
	}

	/* ------------------------------------------------------------ */
	/**
	 * Gets the buffer size.
	 * 
	 * @return the buffer size
	 */
	public int getBufferSize() {
		return _buf.length;
	}

	/* ------------------------------------------------------------ */
	/**
	 * Unconsumed data.
	 * 
	 * @return Bytes of data remaining
	 */
	public int unconsumedData() {
		return _bytes - _pos;
	}

	/* ------------------------------------------------------------ */
	/**
	 * Unconsumed capacity.
	 * 
	 * @return Bytes of capacity remaining
	 */
	public int unconsumedCapacity() {
		return _buf.length - _bytes;
	}

	/* ------------------------------------------------------------ */
	/**
	 * Read.
	 * 
	 * @param in
	 *            the in
	 * @return true, if successful
	 * @throws IOException
	 *             Signals that an I/O exception has occurred.
	 */
	public boolean read(InputStream in) throws IOException {
		_bytes = 0;
		_pos = 0;

		// read header
		do {
			int l = in.read(_buf, _bytes, __HDR_SIZE - _bytes);
			if (l < 0)
				return false;
			_bytes += l;
		} while (_bytes < __HDR_SIZE);

		// decode header
		int magic = getInt();
		if (magic != 0x1234)
			throw new IOException("Bad JSP13 rcv packet:" + magic + " " + this);
		int len = getInt();

		// check packet fits into the buffer
		int packetLength = __HDR_SIZE + len;
		if (packetLength > _buf.length)
			throw new IOException("AJP13 packet (" + packetLength
					+ "bytes) too large for buffer (" + _buf.length + " bytes)");

		// read packet
		do {
			int l = in.read(_buf, _bytes, packetLength - _bytes);
			if (l < 0)
				return false;
			_bytes += l;
		} while (_bytes < packetLength);

		if (log.isTraceEnabled())
			log.trace("AJP13 rcv: " + this.toString(64));
		// System.err.println(Thread.currentThread()+" AJP13 rcv
		// "+this.toString());

		return true;
	}

	/* ------------------------------------------------------------ */
	/**
	 * Write.
	 * 
	 * @param out
	 *            the out
	 * @throws IOException
	 *             Signals that an I/O exception has occurred.
	 */
	public void write(OutputStream out) throws IOException {
		if (log.isTraceEnabled())
			log.trace("AJP13 snd: " + this.toString(64));
		// System.err.println(Thread.currentThread()+" AJP13 snd
		// "+this.toString());
		out.write(_buf, 0, _bytes);
	}

	/* ------------------------------------------------------------ */
	/**
	 * Gets the byte.
	 * 
	 * @return the byte
	 */
	public byte getByte() {
		return _buf[_pos++];
	}

	/* ------------------------------------------------------------ */
	/**
	 * Gets the bytes.
	 * 
	 * @param buf
	 *            the buf
	 * @param offset
	 *            the offset
	 * @param length
	 *            the length
	 * @return the bytes
	 */
	public int getBytes(byte[] buf, int offset, int length) {
		if (length > unconsumedData())
			length = unconsumedData();
		System.arraycopy(_buf, _pos, buf, offset, length);
		_pos += length;
		return length;
	}

	/* ------------------------------------------------------------ */
	/**
	 * Gets the boolean.
	 * 
	 * @return the boolean
	 */
	public boolean getBoolean() {
		return _buf[_pos++] != 0;
	}

	/* ------------------------------------------------------------ */
	/**
	 * Gets the int.
	 * 
	 * @return the int
	 */
	public int getInt() {
		int i = _buf[_pos++] & 0xFF;
		i = (i << 8) + (_buf[_pos++] & 0xFF);
		return i;
	}

	/* ------------------------------------------------------------ */
	/**
	 * Gets the string.
	 * 
	 * @return the string
	 */
	public String getString() {
		int len = getInt();
		if (len == 0xFFFF)
			return null;
		try {
			String s = new String(_buf, _pos, len, StringUtil.__ISO_8859_1);
			_pos += len + 1;
			return s;
		} catch (IndexOutOfBoundsException e) {
			// Bad request!!!
			LogSupport.ignore(log, e);
			return null;
		} catch (UnsupportedEncodingException e) {
			log.fatal(e);
			System.exit(1);
			return null;
		}
	}

	/* ------------------------------------------------------------ */
	/**
	 * Gets the method.
	 * 
	 * @return the method
	 */
	public String getMethod() {
		return __method[getByte()];
	}

	/* ------------------------------------------------------------ */
	/**
	 * Gets the header.
	 * 
	 * @return the header
	 */
	public String getHeader() {
		if ((0xFF & _buf[_pos]) == 0xA0) {
			_pos++;

			return __header[_buf[_pos++]];
		}
		return getString();
	}

	/* ------------------------------------------------------------ */
	/**
	 * Adds the byte.
	 * 
	 * @param b
	 *            the b
	 */
	public void addByte(byte b) {
		_buf[_bytes++] = b;
	}

	/* ------------------------------------------------------------ */
	/**
	 * Adds the bytes.
	 * 
	 * @param buf
	 *            the buf
	 * @param offset
	 *            the offset
	 * @param length
	 *            the length
	 * @return the int
	 */
	public int addBytes(byte[] buf, int offset, int length) {
		if (length > unconsumedCapacity())
			length = unconsumedCapacity();
		System.arraycopy(buf, offset, _buf, _bytes, length);
		_bytes += length;
		return length;
	}

	/* ------------------------------------------------------------ */
	/**
	 * Adds the boolean.
	 * 
	 * @param b
	 *            the b
	 */
	public void addBoolean(boolean b) {
		_buf[_bytes++] = (byte) (b ? 1 : 0);
	}

	/* ------------------------------------------------------------ */
	/**
	 * Adds the int.
	 * 
	 * @param i
	 *            the i
	 */
	public void addInt(int i) {
		_buf[_bytes++] = (byte) ((i >> 8) & 0xFF);
		_buf[_bytes++] = (byte) (i & 0xFF);
	}

	/* ------------------------------------------------------------ */
	/**
	 * Sets the int.
	 * 
	 * @param mark
	 *            the mark
	 * @param i
	 *            the i
	 */
	public void setInt(int mark, int i) {
		_buf[mark] = (byte) ((i >> 8) & 0xFF);
		_buf[mark + 1] = (byte) (i & 0xFF);
	}

	/* ------------------------------------------------------------ */
	/**
	 * Adds the string.
	 * 
	 * @param s
	 *            the s
	 * @throws IOException
	 *             Signals that an I/O exception has occurred.
	 */
	public void addString(String s) throws IOException {
		if (s == null) {
			addInt(0xFFFF);
			return;
		}

		if (_byteWriter == null)
			_byteWriter = new ByteArrayISO8859Writer(_buf);

		int p = _bytes + 2;
		_byteWriter.setLength(p);
		_byteWriter.write(s);
		int l = _byteWriter.size() - p;

		addInt(l);
		_bytes += l;
		_buf[_bytes++] = (byte) 0;
	}

	/* ------------------------------------------------------------ */
	/**
	 * Adds the header.
	 * 
	 * @param s
	 *            the s
	 * @throws IOException
	 *             Signals that an I/O exception has occurred.
	 */
	public void addHeader(String s) throws IOException {
		Integer h = (Integer) __headerMap.get(s);
		if (h != null)
			addInt(h.intValue());
		else
			addString(s);
	}

	/* ------------------------------------------------------------ */
	/**
	 * Gets the data size.
	 * 
	 * @return the data size
	 */
	public int getDataSize() {
		return _bytes - __HDR_SIZE;
	}

	/* ------------------------------------------------------------ */
	/**
	 * Sets the data size.
	 */
	public void setDataSize() {
		setDataSize(_bytes - __HDR_SIZE);
	}

	/* ------------------------------------------------------------ */
	/**
	 * Sets the data size.
	 * 
	 * @param s
	 *            the new data size
	 */
	public void setDataSize(int s) {
		_bytes = s + __HDR_SIZE;

		if (_buf[4] == __SEND_BODY_CHUNK)
			s = s + 1;

		_buf[2] = (byte) ((s >> 8) & 0xFF);
		_buf[3] = (byte) (s & 0xFF);

		if (_buf[4] == __SEND_BODY_CHUNK) {
			s = s - 4;
			_buf[5] = (byte) ((s >> 8) & 0xFF);
			_buf[6] = (byte) (s & 0xFF);
		}
	}

	/* ------------------------------------------------------------ */
	/*
	 * (non-Javadoc)
	 * 
	 * @see java.lang.Object#toString()
	 */
	public String toString() {
		return toString(-1);
	}

	/* ------------------------------------------------------------ */
	/**
	 * To string.
	 * 
	 * @param max
	 *            the max
	 * @return the string
	 */
	public String toString(int max) {
		StringBuffer b = new StringBuffer();
		StringBuffer a = new StringBuffer();

		b.append(_bytes);
		b.append('/');
		b.append(_buf.length);
		b.append('[');
		b.append(_pos);
		b.append("]: ");

		switch (_buf[__HDR_SIZE]) {
		case __FORWARD_REQUEST:
			b.append("FORWARD_REQUEST{:");
			break;
		case __SHUTDOWN:
			b.append("SHUTDOWN        :");
			break;
		case __SEND_BODY_CHUNK:
			b.append("SEND_BODY_CHUNK :");
			break;
		case __SEND_HEADERS:
			b.append("SEND_HEADERS  ( :");
			break;
		case __END_RESPONSE:
			b.append("END_RESPONSE  )}:");
			break;
		case __GET_BODY_CHUNK:
			b.append("GET_BODY_CHUNK  :");
			break;
		}

		if (max == 0)
			return b.toString();

		b.append("\n");

		for (int i = 0; i < _bytes; i++) {
			int d = _buf[i] & 0xFF;
			if (d < 16)
				b.append('0');
			b.append(Integer.toString(d, 16));

			char c = (char) d;

			if (Character.isLetterOrDigit(c))
				a.append(c);
			else
				a.append('.');

			if (i % 32 == 31 || i == (_bytes - 1)) {
				b.append(" : ");
				b.append(a.toString());
				a.setLength(0);
				b.append("\n");
				if (max > 0 && (i + 1) >= max)
					break;
			} else
				b.append(",");
		}

		return b.toString();
	}
}
