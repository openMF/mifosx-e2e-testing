// ========================================================================
// $Id: AJP13RequestPacket.java,v 1.3 2006/10/08 14:13:05 gregwilkins Exp $
// Copyright 2004-2004 Mort Bay Consulting Pty. Ltd.
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

// TODO: Auto-generated Javadoc
/**
 * AJP13RequestPacket used by AJP13InputStream.
 * 
 * @author Jason Jenkins <jj@aol.net>
 * 
 *         This class has the HTTP head encodings for AJP13 Request Packets
 */
public class AJP13RequestPacket extends AJP13Packet {

	/** The __ request header. */
	public static String[] __RequestHeader = { "ERROR", "accept",
			"accept-charset", "accept-encoding", "accept-language",
			"authorization", "connection", "content-type", "content-length",
			"cookie", "cookie2", "host", "pragma", "referer", "user-agent" };

	/**
	 * Instantiates a new aJ p13 request packet.
	 * 
	 * @param buffer
	 *            the buffer
	 * @param len
	 *            the len
	 */
	public AJP13RequestPacket(byte[] buffer, int len) {
		super(buffer, len);

	}

	/**
	 * Instantiates a new aJ p13 request packet.
	 * 
	 * @param buffer
	 *            the buffer
	 */
	public AJP13RequestPacket(byte[] buffer) {
		super(buffer);

	}

	/**
	 * Instantiates a new aJ p13 request packet.
	 * 
	 * @param size
	 *            the size
	 */
	public AJP13RequestPacket(int size) {
		super(size);

	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see org.browsermob.proxy.jetty.http.ajp.AJP13Packet#populateHeaders()
	 */
	public void populateHeaders() {
		__header = __RequestHeader;
		for (int i = 1; i < __RequestHeader.length; i++)
			__headerMap.put(__RequestHeader[i], new Integer(0xA000 + i));
	}

}
