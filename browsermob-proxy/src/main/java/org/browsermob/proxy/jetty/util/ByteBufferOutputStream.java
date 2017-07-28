// ========================================================================
// $Id: ByteBufferOutputStream.java,v 1.18 2006/10/08 14:13:19 gregwilkins Exp $
// Copyright 2001-2004 Mort Bay Consulting Pty. Ltd.
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

package org.browsermob.proxy.jetty.util;

import org.apache.commons.logging.Log;
import org.browsermob.proxy.jetty.log.LogFactory;

import java.io.IOException;
import java.io.OutputStream;

// TODO: Auto-generated Javadoc
/* ------------------------------------------------------------ */
/**
 * ByteBuffer OutputStream. This stream is similar to the
 * java.io.ByteArrayOutputStream, except that it maintains a reserve of bytes at
 * the start of the buffer and allows efficient prepending of data.
 * 
 * @version $Revision: 1.18 $
 * @author Greg Wilkins (gregw)
 */
public class ByteBufferOutputStream extends OutputStream {

	/** The log. */
	private static Log log = LogFactory.getLog(ByteBufferOutputStream.class);

	/** The _buf. */
	protected byte[] _buf;

	/** The start of data capacity in the buffer. */
	private int _start;

	/** The end of data capacity in the buffer. */
	private int _end;

	/** The last byte of data written to the buffer _start <= _pos <= _end. */
	private int _pos;

	/** The _pre reserve. */
	private int _preReserve;

	/** The _post reserve. */
	private int _postReserve;

	/** The _resized. */
	private boolean _resized;

	/** The _fixed. */
	private boolean _fixed;

	/* ------------------------------------------------------------ */
	/**
	 * Constructor.
	 */
	public ByteBufferOutputStream() {
		this(4096, 0, 0);
	}

	/* ------------------------------------------------------------ */
	/**
	 * Constructor.
	 * 
	 * @param capacity
	 *            Buffer capacity
	 */
	public ByteBufferOutputStream(int capacity) {
		this(capacity, 0, 0);
	}

	/* ------------------------------------------------------------ */
	/**
	 * Constructor.
	 * 
	 * @param capacity
	 *            Buffer capacity.
	 * @param preReserve
	 *            The reserve of byte for prepending
	 */
	public ByteBufferOutputStream(int capacity, int preReserve) {
		this(capacity, preReserve, 0);
	}

	/* ------------------------------------------------------------ */
	/**
	 * Constructor.
	 * 
	 * @param bufferSize
	 *            The size of the buffer == capacity+preReserve+postReserve
	 * @param preReserve
	 *            The reserve of byte for prepending
	 * @param postReserve
	 *            The reserve of byte for appending
	 */
	public ByteBufferOutputStream(int bufferSize, int preReserve,
			int postReserve) {
		_buf = ByteArrayPool.getByteArray(bufferSize);
		_end = _buf.length - postReserve;
		_preReserve = preReserve;
		_start = preReserve;
		_pos = preReserve;
		_postReserve = postReserve;
	}

	/* ------------------------------------------------------------ */
	/**
	 * Checks if is fixed.
	 * 
	 * @return True if the buffer cannot be expanded
	 */
	public boolean isFixed() {
		return _fixed;
	}

	/* ------------------------------------------------------------ */
	/**
	 * Sets the fixed.
	 * 
	 * @param fixed
	 *            True if the buffer cannot be expanded
	 */
	public void setFixed(boolean fixed) {
		_fixed = fixed;
	}

	/* ------------------------------------------------------------ */
	/**
	 * Size.
	 * 
	 * @return The size of valid data in the buffer.
	 */
	public int size() {
		return _pos - _start;
	}

	/* ------------------------------------------------------------ */
	/**
	 * Buffer size.
	 * 
	 * @return The size of the buffer.
	 */
	public int bufferSize() {
		return _buf.length;
	}

	/* ------------------------------------------------------------ */
	/**
	 * Capacity.
	 * 
	 * @return The capacity of the buffer excluding pre and post reserves.
	 */
	public int capacity() {
		return _end - _start;
	}

	/* ------------------------------------------------------------ */
	/**
	 * Spare capacity.
	 * 
	 * @return The available capacity of the buffer excluding pre and post
	 *         reserves and data already written.
	 */
	public int spareCapacity() {
		return _end - _pos;
	}

	/* ------------------------------------------------------------ */
	/**
	 * Pre reserve.
	 * 
	 * @return The current pre reserve.
	 */
	public int preReserve() {
		return _start;
	}

	/* ------------------------------------------------------------ */
	/**
	 * Post reserve.
	 * 
	 * @return The current post reserve.
	 */
	public int postReserve() {
		return _buf.length - _end;
	}

	/* ------------------------------------------------------------ */
	/**
	 * Write to.
	 * 
	 * @param out
	 *            the out
	 * @throws IOException
	 *             Signals that an I/O exception has occurred.
	 */
	public void writeTo(OutputStream out) throws IOException {
		out.write(_buf, _start, _pos - _start);
	}

	/* ------------------------------------------------------------ */
	/*
	 * (non-Javadoc)
	 * 
	 * @see java.io.OutputStream#write(int)
	 */
	public void write(int b) throws IOException {
		ensureSpareCapacity(1);
		_buf[_pos++] = (byte) b;
	}

	/* ------------------------------------------------------------ */
	/*
	 * (non-Javadoc)
	 * 
	 * @see java.io.OutputStream#write(byte[])
	 */
	public void write(byte[] b) throws IOException {
		ensureSpareCapacity(b.length);
		System.arraycopy(b, 0, _buf, _pos, b.length);
		_pos += b.length;
	}

	/* ------------------------------------------------------------ */
	/*
	 * (non-Javadoc)
	 * 
	 * @see java.io.OutputStream#write(byte[], int, int)
	 */
	public void write(byte[] b, int offset, int length) throws IOException {
		ensureSpareCapacity(length);
		System.arraycopy(b, offset, _buf, _pos, length);
		_pos += length;
	}

	/* ------------------------------------------------------------ */
	/**
	 * Write byte to start of the buffer.
	 * 
	 * @param b
	 *            the b
	 */
	public void prewrite(int b) {
		ensureReserve(1);
		_buf[--_start] = (byte) b;
	}

	/* ------------------------------------------------------------ */
	/**
	 * Write byte array to start of the buffer.
	 * 
	 * @param b
	 *            the b
	 */
	public void prewrite(byte[] b) {
		ensureReserve(b.length);
		System.arraycopy(b, 0, _buf, _start - b.length, b.length);
		_start -= b.length;
	}

	/* ------------------------------------------------------------ */
	/**
	 * Write byte range to start of the buffer.
	 * 
	 * @param b
	 *            the b
	 * @param offset
	 *            the offset
	 * @param length
	 *            the length
	 */
	public void prewrite(byte[] b, int offset, int length) {
		ensureReserve(length);
		System.arraycopy(b, offset, _buf, _start - length, length);
		_start -= length;
	}

	/* ------------------------------------------------------------ */
	/**
	 * Write bytes into the postreserve. The capacity is not checked.
	 * 
	 * @param b
	 *            the b
	 * @throws IOException
	 *             Signals that an I/O exception has occurred.
	 */
	public void postwrite(byte b) throws IOException {
		_buf[_pos++] = b;
	}

	/* ------------------------------------------------------------ */
	/**
	 * Write bytes into the postreserve. The capacity is not checked.
	 * 
	 * @param b
	 *            the b
	 * @param offset
	 *            the offset
	 * @param length
	 *            the length
	 * @throws IOException
	 *             Signals that an I/O exception has occurred.
	 */
	public void postwrite(byte[] b, int offset, int length) throws IOException {
		System.arraycopy(b, offset, _buf, _pos, length);
		_pos += length;
	}

	/* ------------------------------------------------------------ */
	/*
	 * (non-Javadoc)
	 * 
	 * @see java.io.OutputStream#flush()
	 */
	public void flush() throws IOException {
	}

	/* ------------------------------------------------------------ */
	/**
	 * Reset stream.
	 */
	public void resetStream() {
		_pos = _preReserve;
		_start = _preReserve;
	}

	/* ------------------------------------------------------------ */
	/**
	 * Reset.
	 * 
	 * @param reserve
	 *            the reserve
	 */
	public void reset(int reserve) {
		_preReserve = reserve;
		_pos = _preReserve;
		_start = _preReserve;
	}

	/* ------------------------------------------------------------ */
	/*
	 * (non-Javadoc)
	 * 
	 * @see java.io.OutputStream#close()
	 */
	public void close() throws IOException {
		flush();
	}

	/* ------------------------------------------------------------ */
	/**
	 * Destroy.
	 */
	public void destroy() {
		if (!_resized)
			ByteArrayPool.returnByteArray(_buf);
		_buf = null;
	}

	/* ------------------------------------------------------------ */
	/**
	 * Ensure reserve.
	 * 
	 * @param n
	 *            the n
	 */
	public void ensureReserve(int n) {
		if (n > _start) {
			if (log.isDebugEnabled())
				log.debug("Reserve: " + n + ">" + _start);
			if ((_pos + n) < _end) {
				if (log.isDebugEnabled())
					log.debug("Shift reserve: " + _pos + "+" + n + "<" + _end);
				System.arraycopy(_buf, _start, _buf, n, _pos - _start);
				_pos = _pos + n - _start;
				_start = n;
			} else {
				if (log.isDebugEnabled())
					log.debug("New reserve: " + _pos + "+" + n + ">=" + _end);
				byte[] buf = new byte[_buf.length + n - _start];
				System.arraycopy(_buf, _start, buf, n, _pos - _start);
				_pos = n + _pos - _start;
				_start = n;
				_buf = buf;
				_end = _buf.length - _postReserve;
			}
		}
	}

	/* ------------------------------------------------------------ */
	/**
	 * Ensure size.
	 * 
	 * @param bufSize
	 *            the buf size
	 * @throws IOException
	 *             Signals that an I/O exception has occurred.
	 */
	public void ensureSize(int bufSize) throws IOException {
		ensureSize(bufSize, _preReserve, _postReserve);
	}

	/* ------------------------------------------------------------ */
	/**
	 * Ensure size.
	 * 
	 * @param bufSize
	 *            the buf size
	 * @param pre
	 *            the pre
	 * @param post
	 *            the post
	 * @throws IOException
	 *             Signals that an I/O exception has occurred.
	 */
	public void ensureSize(int bufSize, int pre, int post) throws IOException {
		// Do we have space?
		if (bufSize > _buf.length || pre > _preReserve || post > _postReserve) {
			// Make a bigger buffer if we are allowed.
			if (_fixed)
				throw new IllegalStateException("Fixed");

			byte[] old = _buf;
			_buf = ByteArrayPool.getByteArray(bufSize);

			if (_pos > _start)
				System.arraycopy(old, _start, _buf, pre, _pos - _start);
			if (!_resized)
				ByteArrayPool.returnByteArray(old);

			_end = _buf.length - post;
			_preReserve = pre;
			_start = pre;
			_pos = pre;
			_postReserve = post;
		}
	}

	/* ------------------------------------------------------------ */
	/**
	 * Ensure spare capacity.
	 * 
	 * @param n
	 *            the n
	 * @throws IOException
	 *             Signals that an I/O exception has occurred.
	 */
	public void ensureSpareCapacity(int n) throws IOException {
		// Do we have space?
		if (n > spareCapacity()) {
			// No, then try flushing what we do have
			if (_pos > _start)
				flush();

			ensureCapacity(n);
		}
	}

	/* ------------------------------------------------------------ */
	/**
	 * Ensure capacity.
	 * 
	 * @param n
	 *            the n
	 * @throws IOException
	 *             Signals that an I/O exception has occurred.
	 */
	public void ensureCapacity(int n) throws IOException {
		// Do we have space?
		if (n > capacity()) {
			// Make a bigger buffer if we are allowed.
			if (_fixed)
				throw new IllegalStateException("Fixed");

			int new_size = ((n + _preReserve + _postReserve + 4095) / 4096) * 4096;

			byte[] old = _buf;
			_buf = new byte[new_size];
			if (_pos > _start)
				System.arraycopy(old, _start, _buf, _start, _pos - _start);
			if (!_resized)
				ByteArrayPool.returnByteArray(old);

			_end = _buf.length - _postReserve;
			_resized = true;
		}
	}
}
