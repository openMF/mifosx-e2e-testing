// ========================================================================
// $Id: ChunkingOutputStream.java,v 1.6 2004/10/19 00:27:23 gregwilkins Exp $
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

package org.browsermob.proxy.jetty.http;

import java.io.IOException;
import java.io.OutputStream;

// TODO: Auto-generated Javadoc
/* ---------------------------------------------------------------- */
/**
 * HTTP Chunking OutputStream.
 * 
 * @version $Id: ChunkingOutputStream.java,v 1.6 2004/10/19 00:27:23 gregwilkins
 *          Exp $
 * @author Greg Wilkins
 */
public class ChunkingOutputStream extends BufferedOutputStream implements
		HttpMessage.HeaderWriter {
	/* ------------------------------------------------------------ */
	/** The Constant __CRLF. */
	final static byte[] __CRLF = { (byte) '\015', (byte) '\012' };

	/** The Constant __CHUNK_EOF. */
	final static byte[] __CHUNK_EOF = { (byte) '0', (byte) '\015',
			(byte) '\012', (byte) '\015', (byte) '\012' };

	/** The Constant __CHUNK_RESERVE. */
	final static int __CHUNK_RESERVE = 8;

	/** The Constant __EOF_RESERVE. */
	final static int __EOF_RESERVE = 8;

	/* ------------------------------------------------------------ */
	/** The _chunking. */
	private boolean _chunking;

	/** The _complete. */
	private boolean _complete;

	/** The _completed. */
	private boolean _completed;

	/* ------------------------------------------------------------ */
	/**
	 * Constructor.
	 * 
	 * @param outputStream
	 *            The outputStream to buffer or chunk to.
	 * @param bufferSize
	 *            the buffer size
	 * @param headerReserve
	 *            the header reserve
	 */
	public ChunkingOutputStream(OutputStream outputStream, int bufferSize,
			int headerReserve) {
		this(outputStream, bufferSize, headerReserve, true);
	}

	/* ------------------------------------------------------------ */
	/**
	 * Constructor.
	 * 
	 * @param outputStream
	 *            The outputStream to buffer or chunk to.
	 * @param bufferSize
	 *            the buffer size
	 * @param headerReserve
	 *            the header reserve
	 * @param chunking
	 *            the chunking
	 */
	public ChunkingOutputStream(OutputStream outputStream, int bufferSize,
			int headerReserve, boolean chunking) {
		super(outputStream, bufferSize, headerReserve, __CHUNK_RESERVE,
				__EOF_RESERVE);
		_chunking = chunking;
		setBypassBuffer(true);
		setFixed(true);
	}

	/* ------------------------------------------------------------ */
	/**
	 * Checks if is chunking.
	 * 
	 * @return true, if is chunking
	 */
	public boolean isChunking() {
		return _chunking;
	}

	/* ------------------------------------------------------------ */
	/**
	 * Sets the chunking.
	 * 
	 * @param chunking
	 *            the new chunking
	 */
	public void setChunking(boolean chunking) {
		_chunking = chunking;
	}

	/* ------------------------------------------------------------ */
	/*
	 * (non-Javadoc)
	 * 
	 * @see org.browsermob.proxy.jetty.http.BufferedOutputStream#close()
	 */
	public void close() throws IOException {
		_complete = true;
		flush();
	}

	/* ------------------------------------------------------------ */
	/*
	 * (non-Javadoc)
	 * 
	 * @see org.browsermob.proxy.jetty.http.BufferedOutputStream#resetStream()
	 */
	public void resetStream() {
		_complete = false;
		_completed = false;
		_chunking = true;
		super.resetStream();
	}

	/* ------------------------------------------------------------ */
	/*
	 * (non-Javadoc)
	 * 
	 * @see org.browsermob.proxy.jetty.http.BufferedOutputStream#wrapBuffer()
	 */
	protected void wrapBuffer() throws IOException {
		// Handle chunking
		int size = size();
		if (_chunking && size() > 0) {
			prewrite(__CRLF, 0, __CRLF.length);
			while (size > 0) {
				int d = size % 16;
				if (d <= 9)
					prewrite('0' + d);
				else
					prewrite('a' - 10 + d);
				size = size / 16;
			}
			postwrite(__CRLF, 0, __CRLF.length);
		}

		// Complete it if we must.
		if (_complete && !_completed) {
			_completed = true;
			if (_chunking)
				postwrite(__CHUNK_EOF, 0, __CHUNK_EOF.length);
		}
	}

	/* ------------------------------------------------------------ */
	/*
	 * (non-Javadoc)
	 * 
	 * @see
	 * org.browsermob.proxy.jetty.http.BufferedOutputStream#bypassWrite(byte[],
	 * int, int)
	 */
	protected void bypassWrite(byte[] b, int offset, int length)
			throws IOException {
		int i = 9;
		int chunk = length;
		_buf[10] = (byte) '\012';
		_buf[9] = (byte) '\015';
		while (chunk > 0) {
			int d = chunk % 16;
			if (d <= 9)
				_buf[--i] = (byte) ('0' + d);
			else
				_buf[--i] = (byte) ('a' - 10 + d);
			chunk = chunk / 16;
		}
		if (_chunking)
			_out.write(_buf, i, 10 - i + 1);
		_out.write(b, offset, length);
		if (_chunking)
			_out.write(__CRLF, 0, __CRLF.length);
		_out.flush();
	}

}
