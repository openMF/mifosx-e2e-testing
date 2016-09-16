// ========================================================================
// $Id: AJP13ResponsePacket.java,v 1.3 2006/10/08 14:13:05 gregwilkins Exp $
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
 * AJP13ResponsePacket used by AJP13OutputStream.
 * 
 * @author Jason Jenkins <jj@aol.net>
 * 
 *         This class has the HTTP head encodings for AJP13 Response Packets
 */
public class AJP13ResponsePacket extends AJP13Packet {

	/** The __ response header. */
	public static String[] __ResponseHeader = { "ERROR", "Content-Type",
			"Content-Language", "Content-Length", "Date", "Last-Modified",
			"Location", "Set-Cookie", "Set-Cookie2", "Servlet-Engine",
			"Status", "WWW-Authenticate" };

	/**
	 * Instantiates a new aJ p13 response packet.
	 * 
	 * @param buffer
	 *            the buffer
	 * @param len
	 *            the len
	 */
	public AJP13ResponsePacket(byte[] buffer, int len) {

		super(buffer, len);

	}

	/**
	 * Instantiates a new aJ p13 response packet.
	 * 
	 * @param buffer
	 *            the buffer
	 */
	public AJP13ResponsePacket(byte[] buffer) {
		super(buffer);

	}

	/**
	 * Instantiates a new aJ p13 response packet.
	 * 
	 * @param size
	 *            the size
	 */
	public AJP13ResponsePacket(int size) {
		super(size);

	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see org.browsermob.proxy.jetty.http.ajp.AJP13Packet#populateHeaders()
	 */
	public void populateHeaders() {
		__header = __ResponseHeader;
		for (int i = 1; i < __ResponseHeader.length; i++)
			__headerMap.put(__ResponseHeader[i], new Integer(0xA000 + i));
	}
}
