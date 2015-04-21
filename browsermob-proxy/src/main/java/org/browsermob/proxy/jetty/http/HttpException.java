// ========================================================================
// $Id: HttpException.java,v 1.5 2004/05/09 20:31:40 gregwilkins Exp $
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

package org.browsermob.proxy.jetty.http;

import org.browsermob.proxy.jetty.util.TypeUtil;

import java.io.IOException;

// TODO: Auto-generated Javadoc
/* ------------------------------------------------------------ */
/**
 * Exception for known HTTP error status.
 * 
 * @version $Revision: 1.5 $
 * @author Greg Wilkins (gregw)
 */
public class HttpException extends IOException {

	/** The _code. */
	private int _code;

	/**
	 * Gets the code.
	 * 
	 * @return the code
	 */
	public int getCode() {
		return _code;
	}

	/**
	 * Gets the reason.
	 * 
	 * @return the reason
	 */
	public String getReason() {
		return (String) HttpResponse.__statusMsg
				.get(TypeUtil.newInteger(_code));
	}

	/**
	 * Instantiates a new http exception.
	 */
	public HttpException() {
		_code = HttpResponse.__400_Bad_Request;
	}

	/**
	 * Instantiates a new http exception.
	 * 
	 * @param code
	 *            the code
	 */
	public HttpException(int code) {
		_code = code;
	}

	/**
	 * Instantiates a new http exception.
	 * 
	 * @param code
	 *            the code
	 * @param message
	 *            the message
	 */
	public HttpException(int code, String message) {
		super(message);
		_code = code;
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see java.lang.Throwable#toString()
	 */
	public String toString() {
		String message = getMessage();
		String reason = getReason();
		return "HttpException(" + _code + "," + reason + "," + message + ")";
	}
}
