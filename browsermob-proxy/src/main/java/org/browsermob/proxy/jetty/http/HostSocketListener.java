//========================================================================
//$Id: HostSocketListener.java,v 1.1 2004/10/13 22:31:53 gregwilkins Exp $
//Copyright 2004 Mort Bay Consulting Pty. Ltd.
//------------------------------------------------------------------------
//Licensed under the Apache License, Version 2.0 (the "License");
//you may not use this file except in compliance with the License.
//You may obtain a copy of the License at 
//http://www.apache.org/licenses/LICENSE-2.0
//Unless required by applicable law or agreed to in writing, software
//distributed under the License is distributed on an "AS IS" BASIS,
//WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
//See the License for the specific language governing permissions and
//limitations under the License.
//========================================================================

package org.browsermob.proxy.jetty.http;

import org.browsermob.proxy.jetty.util.InetAddrPort;

import java.net.Socket;

// TODO: Auto-generated Javadoc
/**
 * Forced Host Listener this simple listener extention forces the host header to
 * be set to a specific value. It is useful when deployed behind old apache
 * mod_proxy implementations that lie about the real host used by the client.
 * 
 * @see HostSocketEvent
 */
public class HostSocketListener extends SocketListener {

	/** The _host. */
	String _host;

	/**
	 * Instantiates a new host socket listener.
	 */
	public HostSocketListener() {
		super();
	}

	/**
	 * Instantiates a new host socket listener.
	 * 
	 * @param address
	 *            the address
	 */
	public HostSocketListener(InetAddrPort address) {
		super(address);
	}

	/**
	 * Gets the forced host.
	 * 
	 * @return Returns the host.
	 */
	public String getForcedHost() {
		return _host;
	}

	/**
	 * Sets the forced host.
	 * 
	 * @param host
	 *            The host to set.
	 */
	public void setForcedHost(String host) {
		_host = host;
	}

	/*
	 * @see
	 * org.browsermob.proxy.jetty.http.SocketListener#customizeRequest(java.
	 * net.Socket, org.browsermob.proxy.jetty.http.HttpRequest)
	 */
	/*
	 * (non-Javadoc)
	 * 
	 * @see
	 * org.browsermob.proxy.jetty.http.SocketListener#customizeRequest(java.
	 * net.Socket, org.browsermob.proxy.jetty.http.HttpRequest)
	 */
	protected void customizeRequest(Socket socket, HttpRequest request) {
		request.setState(HttpMessage.__MSG_EDITABLE);
		if (_host == null)
			request.removeField(HttpFields.__Host);
		else
			request.setField(HttpFields.__Host, _host);
		request.setState(HttpMessage.__MSG_RECEIVED);
		super.customizeRequest(socket, request);
	}
}
