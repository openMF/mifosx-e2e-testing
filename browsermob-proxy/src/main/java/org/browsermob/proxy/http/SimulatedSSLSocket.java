/*
 * 
 */
package org.browsermob.proxy.http;

import org.java_bandwidthlimiter.StreamManager;

import javax.net.ssl.*;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.InetAddress;
import java.net.SocketAddress;
import java.net.SocketException;
import java.nio.channels.SocketChannel;
import java.util.Date;

// TODO: Auto-generated Javadoc
/**
 * The Class SimulatedSSLSocket.
 */
public class SimulatedSSLSocket extends SSLSocket {

	/** The socket. */
	private SSLSocket socket;

	/** The stream manager. */
	private StreamManager streamManager;

	/** The handshake start. */
	private Date handshakeStart;

	/**
	 * Instantiates a new simulated ssl socket.
	 * 
	 * @param socket
	 *            the socket
	 * @param streamManager
	 *            the stream manager
	 */
	public SimulatedSSLSocket(SSLSocket socket, StreamManager streamManager) {
		this.socket = socket;
		this.streamManager = streamManager;
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see javax.net.ssl.SSLSocket#getSupportedCipherSuites()
	 */
	@Override
	public String[] getSupportedCipherSuites() {
		return socket.getSupportedCipherSuites();
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see javax.net.ssl.SSLSocket#getEnabledCipherSuites()
	 */
	@Override
	public String[] getEnabledCipherSuites() {
		return socket.getEnabledCipherSuites();
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see javax.net.ssl.SSLSocket#setEnabledCipherSuites(java.lang.String[])
	 */
	@Override
	public void setEnabledCipherSuites(String[] strings) {
		socket.setEnabledCipherSuites(strings);
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see javax.net.ssl.SSLSocket#getSupportedProtocols()
	 */
	@Override
	public String[] getSupportedProtocols() {
		return socket.getSupportedProtocols();
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see javax.net.ssl.SSLSocket#getEnabledProtocols()
	 */
	@Override
	public String[] getEnabledProtocols() {
		return socket.getEnabledProtocols();
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see javax.net.ssl.SSLSocket#setEnabledProtocols(java.lang.String[])
	 */
	@Override
	public void setEnabledProtocols(String[] strings) {
		socket.setEnabledProtocols(strings);
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see javax.net.ssl.SSLSocket#getSession()
	 */
	@Override
	public SSLSession getSession() {
		return socket.getSession();
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see javax.net.ssl.SSLSocket#addHandshakeCompletedListener(javax.net.ssl.
	 * HandshakeCompletedListener)
	 */
	@Override
	public void addHandshakeCompletedListener(
			HandshakeCompletedListener handshakeCompletedListener) {
		socket.addHandshakeCompletedListener(handshakeCompletedListener);
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see
	 * javax.net.ssl.SSLSocket#removeHandshakeCompletedListener(javax.net.ssl
	 * .HandshakeCompletedListener)
	 */
	@Override
	public void removeHandshakeCompletedListener(
			HandshakeCompletedListener handshakeCompletedListener) {
		socket.removeHandshakeCompletedListener(handshakeCompletedListener);
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see javax.net.ssl.SSLSocket#startHandshake()
	 */
	@Override
	public void startHandshake() throws IOException {
		socket.startHandshake();
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see javax.net.ssl.SSLSocket#setUseClientMode(boolean)
	 */
	@Override
	public void setUseClientMode(boolean b) {
		socket.setUseClientMode(b);
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see javax.net.ssl.SSLSocket#getUseClientMode()
	 */
	@Override
	public boolean getUseClientMode() {
		return socket.getUseClientMode();
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see javax.net.ssl.SSLSocket#setNeedClientAuth(boolean)
	 */
	@Override
	public void setNeedClientAuth(boolean b) {
		socket.setNeedClientAuth(b);
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see javax.net.ssl.SSLSocket#getNeedClientAuth()
	 */
	@Override
	public boolean getNeedClientAuth() {
		return socket.getNeedClientAuth();
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see javax.net.ssl.SSLSocket#setWantClientAuth(boolean)
	 */
	@Override
	public void setWantClientAuth(boolean b) {
		socket.setWantClientAuth(b);
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see javax.net.ssl.SSLSocket#getWantClientAuth()
	 */
	@Override
	public boolean getWantClientAuth() {
		return socket.getWantClientAuth();
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see javax.net.ssl.SSLSocket#setEnableSessionCreation(boolean)
	 */
	@Override
	public void setEnableSessionCreation(boolean b) {
		socket.setEnableSessionCreation(b);
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see javax.net.ssl.SSLSocket#getEnableSessionCreation()
	 */
	@Override
	public boolean getEnableSessionCreation() {
		return socket.getEnableSessionCreation();
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see javax.net.ssl.SSLSocket#getSSLParameters()
	 */
	@Override
	public SSLParameters getSSLParameters() {
		return socket.getSSLParameters();
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see
	 * javax.net.ssl.SSLSocket#setSSLParameters(javax.net.ssl.SSLParameters)
	 */
	@Override
	public void setSSLParameters(SSLParameters sslParameters) {
		socket.setSSLParameters(sslParameters);
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see java.net.Socket#connect(java.net.SocketAddress)
	 */
	@Override
	public void connect(SocketAddress endpoint) throws IOException {
		this.connect(endpoint, 60000);
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see java.net.Socket#connect(java.net.SocketAddress, int)
	 */
	@Override
	public void connect(SocketAddress endpoint, int timeout) throws IOException {
		Date start = new Date();
		socket.connect(endpoint, timeout);
		Date end = new Date();
		RequestInfo.get().connect(start, end);
		handshakeStart = new Date();
		startHandshake();
		this.addHandshakeCompletedListener(new HandshakeCompletedListener() {
			@Override
			public void handshakeCompleted(
					HandshakeCompletedEvent handshakeCompletedEvent) {
				if (handshakeStart != null) {
					RequestInfo.get().ssl(handshakeStart, new Date());
				}
			}
		});
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see java.net.Socket#bind(java.net.SocketAddress)
	 */
	@Override
	public void bind(SocketAddress bindpoint) throws IOException {
		socket.bind(bindpoint);
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see java.net.Socket#getInetAddress()
	 */
	@Override
	public InetAddress getInetAddress() {
		return socket.getInetAddress();
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see java.net.Socket#getLocalAddress()
	 */
	@Override
	public InetAddress getLocalAddress() {
		return socket.getLocalAddress();
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see java.net.Socket#getPort()
	 */
	@Override
	public int getPort() {
		return socket.getPort();
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see java.net.Socket#getLocalPort()
	 */
	@Override
	public int getLocalPort() {
		return socket.getLocalPort();
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see java.net.Socket#getRemoteSocketAddress()
	 */
	@Override
	public SocketAddress getRemoteSocketAddress() {
		return socket.getRemoteSocketAddress();
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see java.net.Socket#getLocalSocketAddress()
	 */
	@Override
	public SocketAddress getLocalSocketAddress() {
		return socket.getLocalSocketAddress();
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see java.net.Socket#getChannel()
	 */
	@Override
	public SocketChannel getChannel() {
		return socket.getChannel();
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see java.net.Socket#getInputStream()
	 */
	@Override
	public InputStream getInputStream() throws IOException {
		return streamManager.registerStream(socket.getInputStream());
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see java.net.Socket#getOutputStream()
	 */
	@Override
	public OutputStream getOutputStream() throws IOException {
		return streamManager.registerStream(socket.getOutputStream());
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see java.net.Socket#setTcpNoDelay(boolean)
	 */
	@Override
	public void setTcpNoDelay(boolean on) throws SocketException {
		socket.setTcpNoDelay(on);
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see java.net.Socket#getTcpNoDelay()
	 */
	@Override
	public boolean getTcpNoDelay() throws SocketException {
		return socket.getTcpNoDelay();
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see java.net.Socket#setSoLinger(boolean, int)
	 */
	@Override
	public void setSoLinger(boolean on, int linger) throws SocketException {
		socket.setSoLinger(on, linger);
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see java.net.Socket#getSoLinger()
	 */
	@Override
	public int getSoLinger() throws SocketException {
		return socket.getSoLinger();
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see java.net.Socket#sendUrgentData(int)
	 */
	@Override
	public void sendUrgentData(int data) throws IOException {
		socket.sendUrgentData(data);
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see java.net.Socket#setOOBInline(boolean)
	 */
	@Override
	public void setOOBInline(boolean on) throws SocketException {
		socket.setOOBInline(on);
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see java.net.Socket#getOOBInline()
	 */
	@Override
	public boolean getOOBInline() throws SocketException {
		return socket.getOOBInline();
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see java.net.Socket#setSoTimeout(int)
	 */
	@Override
	public void setSoTimeout(int timeout) throws SocketException {
		socket.setSoTimeout(timeout);
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see java.net.Socket#getSoTimeout()
	 */
	@Override
	public int getSoTimeout() throws SocketException {
		return socket.getSoTimeout();
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see java.net.Socket#setSendBufferSize(int)
	 */
	@Override
	public void setSendBufferSize(int size) throws SocketException {
		socket.setSendBufferSize(size);
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see java.net.Socket#getSendBufferSize()
	 */
	@Override
	public int getSendBufferSize() throws SocketException {
		return socket.getSendBufferSize();
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see java.net.Socket#setReceiveBufferSize(int)
	 */
	@Override
	public void setReceiveBufferSize(int size) throws SocketException {
		socket.setReceiveBufferSize(size);
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see java.net.Socket#getReceiveBufferSize()
	 */
	@Override
	public int getReceiveBufferSize() throws SocketException {
		return socket.getReceiveBufferSize();
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see java.net.Socket#setKeepAlive(boolean)
	 */
	@Override
	public void setKeepAlive(boolean on) throws SocketException {
		socket.setKeepAlive(on);
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see java.net.Socket#getKeepAlive()
	 */
	@Override
	public boolean getKeepAlive() throws SocketException {
		return socket.getKeepAlive();
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see java.net.Socket#setTrafficClass(int)
	 */
	@Override
	public void setTrafficClass(int tc) throws SocketException {
		socket.setTrafficClass(tc);
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see java.net.Socket#getTrafficClass()
	 */
	@Override
	public int getTrafficClass() throws SocketException {
		return socket.getTrafficClass();
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see java.net.Socket#setReuseAddress(boolean)
	 */
	@Override
	public void setReuseAddress(boolean on) throws SocketException {
		socket.setReuseAddress(on);
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see java.net.Socket#getReuseAddress()
	 */
	@Override
	public boolean getReuseAddress() throws SocketException {
		return socket.getReuseAddress();
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see java.net.Socket#close()
	 */
	@Override
	public void close() throws IOException {
		socket.close();
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see java.net.Socket#shutdownInput()
	 */
	@Override
	public void shutdownInput() throws IOException {
		socket.shutdownInput();
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see java.net.Socket#shutdownOutput()
	 */
	@Override
	public void shutdownOutput() throws IOException {
		socket.shutdownOutput();
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see java.net.Socket#toString()
	 */
	@Override
	public String toString() {
		return socket.toString();
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see java.net.Socket#isConnected()
	 */
	@Override
	public boolean isConnected() {
		return socket.isConnected();
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see java.net.Socket#isBound()
	 */
	@Override
	public boolean isBound() {
		return socket.isBound();
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see java.net.Socket#isClosed()
	 */
	@Override
	public boolean isClosed() {
		return socket.isClosed();
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see java.net.Socket#isInputShutdown()
	 */
	@Override
	public boolean isInputShutdown() {
		return socket.isInputShutdown();
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see java.net.Socket#isOutputShutdown()
	 */
	@Override
	public boolean isOutputShutdown() {
		return socket.isOutputShutdown();
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see java.net.Socket#setPerformancePreferences(int, int, int)
	 */
	@Override
	public void setPerformancePreferences(int connectionTime, int latency,
			int bandwidth) {
		socket.setPerformancePreferences(connectionTime, latency, bandwidth);
	}
}
