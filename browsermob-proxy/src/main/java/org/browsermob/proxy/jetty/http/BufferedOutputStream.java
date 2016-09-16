// ========================================================================
// $Id: BufferedOutputStream.java,v 1.8 2006/06/29 12:41:11 gregwilkins Exp $
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

package org.browsermob.proxy.jetty.http;

import org.browsermob.proxy.jetty.util.ByteArrayISO8859Writer;
import org.browsermob.proxy.jetty.util.ByteBufferOutputStream;
import org.browsermob.proxy.jetty.util.OutputObserver;

import java.io.IOException;
import java.io.OutputStream;

// TODO: Auto-generated Javadoc
/* ------------------------------------------------------------ */
/**
 * Buffered Output Stream. Uses ByteBufferOutputStream to allow pre and post
 * writes.
 * 
 * @version $Revision: 1.8 $
 * @author Greg Wilkins (gregw)
 */
public class BufferedOutputStream extends ByteBufferOutputStream implements
		HttpMessage.HeaderWriter {

	/** The _out. */
	protected OutputStream _out;

	/** The _http message writer. */
	protected ByteArrayISO8859Writer _httpMessageWriter;

	/** The _commit observer. */
	private OutputObserver _commitObserver;

	/** The _commited. */
	private boolean _commited;

	/** The _pre reserve. */
	private int _preReserve;

	/** The _bypass buffer. */
	private boolean _bypassBuffer;

	/* ------------------------------------------------------------ */
	/**
	 * Constructor.
	 * 
	 * @param out
	 *            the OutputStream to buffer to.
	 * @param capacity
	 *            Buffer capacity.
	 * @param headerReserve
	 *            The reserve of bytes for prepending to be used for the first
	 *            buffer after reset
	 * @param preReserve
	 *            The reserve of bytes for prepending
	 * @param postReserve
	 *            The reserve of bytes for appending
	 */
	public BufferedOutputStream(OutputStream out, int capacity,
			int headerReserve, int preReserve, int postReserve) {
		super(capacity, headerReserve, postReserve);
		_out = out;
		_preReserve = preReserve;
		_httpMessageWriter = new ByteArrayISO8859Writer(headerReserve);
	}

	/* ------------------------------------------------------------ */
	/**
	 * Gets the output stream.
	 * 
	 * @return the output stream
	 */
	public OutputStream getOutputStream() {
		return _out;
	}

	/* ------------------------------------------------------------ */
	/**
	 * Gets the commit observer.
	 * 
	 * @return OutputObserver to receives commit events from this stream.
	 */
	public OutputObserver getCommitObserver() {
		return _commitObserver;
	}

	/* ------------------------------------------------------------ */
	/**
	 * Sets the commit observer.
	 * 
	 * @param commitObserver
	 *            OutputObserver to receives commit events from this stream.
	 */
	public void setCommitObserver(OutputObserver commitObserver) {
		_commitObserver = commitObserver;
	}

	/* ------------------------------------------------------------ */
	/**
	 * Checks if is committed.
	 * 
	 * @return true, if is committed
	 */
	public boolean isCommitted() {
		return _commited;
	}

	/* ------------------------------------------------------------ */
	/**
	 * Gets the bypass buffer.
	 * 
	 * @return If true, the buffer is bypassed for large writes to a committed
	 *         stream.
	 */
	public boolean getBypassBuffer() {
		return _bypassBuffer;
	}

	/* ------------------------------------------------------------ */
	/**
	 * Sets the bypass buffer.
	 * 
	 * @param bypassBuffer
	 *            If true, the buffer is bypassed for large writes to a
	 *            committed stream.
	 */
	public void setBypassBuffer(boolean bypassBuffer) {
		_bypassBuffer = bypassBuffer;
	}

	/* ------------------------------------------------------------ */
	/*
	 * (non-Javadoc)
	 * 
	 * @see
	 * org.browsermob.proxy.jetty.http.HttpMessage.HeaderWriter#writeHeader(
	 * org.browsermob.proxy.jetty.http.HttpMessage)
	 */
	public void writeHeader(HttpMessage httpMessage) throws IOException {
		httpMessage.writeHeader(_httpMessageWriter);
		if (_httpMessageWriter.size() > capacity())
			throw new IllegalStateException("Header too large");
	}

	/* ------------------------------------------------------------ */
	/*
	 * (non-Javadoc)
	 * 
	 * @see org.browsermob.proxy.jetty.util.ByteBufferOutputStream#write(byte[])
	 */
	public void write(byte[] b) throws IOException {
		write(b, 0, b.length);
	}

	/* ------------------------------------------------------------ */
	/*
	 * (non-Javadoc)
	 * 
	 * @see org.browsermob.proxy.jetty.util.ByteBufferOutputStream#write(byte[],
	 * int, int)
	 */
	public void write(byte[] b, int offset, int length) throws IOException {
		int o = offset;
		int l = length;
		while (l > 0) {
			int c = capacity();

			if (_bypassBuffer && isCommitted() && size() == 0 && l > c) {
				// Bypass buffer
				bypassWrite(b, o, l);
				break;
			}

			if (l < c || !isFixed()) {
				// Write all
				super.write(b, o, l);
				break;
			} else {
				// Write a block
				super.write(b, o, c);
				flush();
				l -= c;
				o += c;
			}
		}
	}

	/* ------------------------------------------------------------ */
	/**
	 * Bypass write.
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
	protected void bypassWrite(byte[] b, int offset, int length)
			throws IOException {
		try {
			_out.write(b, offset, length);
			_out.flush();
		} catch (IOException e) {
			throw new EOFException(e);
		}
	}

	/* ------------------------------------------------------------ */
	/**
	 * This implementation calls the commitObserver on the first flush since
	 * construction or reset.
	 * 
	 * @throws IOException
	 *             Signals that an I/O exception has occurred.
	 */
	public void flush() throws IOException {
		try {
			if (!_commited) {
				_commited = true;
				if (_commitObserver != null)
					_commitObserver.outputNotify(this,
							OutputObserver.__COMMITING, null);
			}

			wrapBuffer();

			// Add headers
			if (_httpMessageWriter.size() > 0) {
				prewrite(_httpMessageWriter.getBuf(), 0,
						_httpMessageWriter.size());
				_httpMessageWriter.resetWriter();
			}

			if (size() > 0)
				writeTo(_out);
		} catch (IOException e) {
			throw new EOFException(e);
		} finally {
			reset(_preReserve);
		}
	}

	/* ------------------------------------------------------------ */
	/**
	 * Wrap Buffer. Called by flush() to allow the data in the buffer to be pre
	 * and post written for any protocol wrapping. The default implementation
	 * does nothing.
	 * 
	 * @throws IOException
	 *             Signals that an I/O exception has occurred.
	 */
	protected void wrapBuffer() throws IOException {
	}

	/* ------------------------------------------------------------ */
	/*
	 * (non-Javadoc)
	 * 
	 * @see org.browsermob.proxy.jetty.util.ByteBufferOutputStream#close()
	 */
	public void close() throws IOException {
		flush();
		_out.close();
	}

	/* ------------------------------------------------------------ */
	/*
	 * (non-Javadoc)
	 * 
	 * @see org.browsermob.proxy.jetty.util.ByteBufferOutputStream#resetStream()
	 */
	public void resetStream() {
		super.reset(_httpMessageWriter.capacity());
		_commited = false;
	}

	/* ------------------------------------------------------------ */
	/*
	 * (non-Javadoc)
	 * 
	 * @see org.browsermob.proxy.jetty.util.ByteBufferOutputStream#destroy()
	 */
	public void destroy() {
		super.destroy();
		if (_httpMessageWriter != null)
			_httpMessageWriter.destroy();
		_httpMessageWriter = null;
		_out = null;
	}

}
