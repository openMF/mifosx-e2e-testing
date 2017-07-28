/*
 * 
 */
package org.browsermob.proxy.bricks;

import com.google.inject.Inject;
import com.google.inject.name.Named;
import com.google.sitebricks.At;
import com.google.sitebricks.client.transport.Json;
import com.google.sitebricks.headless.Reply;
import com.google.sitebricks.headless.Request;
import com.google.sitebricks.headless.Service;
import com.google.sitebricks.http.Delete;
import com.google.sitebricks.http.Get;
import com.google.sitebricks.http.Post;
import com.google.sitebricks.http.Put;
import org.browsermob.core.har.Har;
import org.browsermob.proxy.ProxyManager;
import org.browsermob.proxy.ProxyServer;
import org.browsermob.proxy.http.BrowserMobHttpRequest;
import org.browsermob.proxy.http.BrowserMobHttpResponse;
import org.browsermob.proxy.http.RequestInterceptor;
import org.browsermob.proxy.http.ResponseInterceptor;
import org.browsermob.proxy.util.Log;
import org.java_bandwidthlimiter.StreamManager;

import javax.script.*;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.util.HashMap;
import java.util.Hashtable;
import java.util.Map;

// TODO: Auto-generated Javadoc
/**
 * The Class ProxyResource.
 */
@At("/proxy")
@Service
public class ProxyResource {

	/** The Constant LOG. */
	private static final Log LOG = new Log();

	/** The proxy manager. */
	private ProxyManager proxyManager;

	/**
	 * Instantiates a new proxy resource.
	 * 
	 * @param proxyManager
	 *            the proxy manager
	 */
	@Inject
	public ProxyResource(ProxyManager proxyManager) {
		this.proxyManager = proxyManager;
	}

	/**
	 * New proxy.
	 * 
	 * @param request
	 *            the request
	 * @return the reply
	 * @throws Exception
	 *             the exception
	 */
	@Post
	public Reply<ProxyDescriptor> newProxy(Request request) throws Exception {
		String systemProxyHost = System.getProperty("http.proxyHost");
		String systemProxyPort = System.getProperty("http.proxyPort");
		String httpProxy = request.param("httpProxy");
		Hashtable<String, String> options = new Hashtable<String, String>();

		// If the upstream proxy is specified via query params that should
		// override any default system level proxy.
		if (httpProxy != null) {
			options.put("httpProxy", httpProxy);
		} else if ((systemProxyHost != null) && (systemProxyPort != null)) {
			options.put("httpProxy",
					String.format("%s:%s", systemProxyHost, systemProxyPort));
		}

		String paramPort = request.param("port");
		int port = 0;
		if (paramPort != null) {
			port = Integer.parseInt(paramPort);
			ProxyServer proxy = proxyManager.create(options, port);
		} else {
			ProxyServer proxy = proxyManager.create(options);
			port = proxy.getPort();
		}
		return Reply.with(new ProxyDescriptor(port)).as(Json.class);
	}

	/**
	 * Gets the har.
	 * 
	 * @param port
	 *            the port
	 * @return the har
	 */
	@Get
	@At("/:port/har")
	public Reply<Har> getHar(@Named("port") int port) {
		ProxyServer proxy = proxyManager.get(port);
		Har har = proxy.getHar();

		return Reply.with(har).as(Json.class);
	}

	/**
	 * New har.
	 * 
	 * @param port
	 *            the port
	 * @param request
	 *            the request
	 * @return the reply
	 */
	@Put
	@At("/:port/har")
	public Reply<?> newHar(@Named("port") int port, Request request) {
		String initialPageRef = request.param("initialPageRef");
		ProxyServer proxy = proxyManager.get(port);
		Har oldHar = proxy.newHar(initialPageRef);

		String captureHeaders = request.param("captureHeaders");
		String captureContent = request.param("captureContent");
		String captureBinaryContent = request.param("captureBinaryContent");
		proxy.setCaptureHeaders(Boolean.parseBoolean(captureHeaders));
		proxy.setCaptureContent(Boolean.parseBoolean(captureContent));
		proxy.setCaptureBinaryContent(Boolean
				.parseBoolean(captureBinaryContent));

		if (oldHar != null) {
			return Reply.with(oldHar).as(Json.class);
		} else {
			return Reply.saying().noContent();
		}
	}

	/**
	 * Sets the page.
	 * 
	 * @param port
	 *            the port
	 * @param request
	 *            the request
	 * @return the reply
	 */
	@Put
	@At("/:port/har/pageRef")
	public Reply<?> setPage(@Named("port") int port, Request request) {
		String pageRef = request.param("pageRef");
		ProxyServer proxy = proxyManager.get(port);
		proxy.newPage(pageRef);

		return Reply.saying().ok();
	}

	/**
	 * Blacklist.
	 * 
	 * @param port
	 *            the port
	 * @param request
	 *            the request
	 * @return the reply
	 */
	@Put
	@At("/:port/blacklist")
	public Reply<?> blacklist(@Named("port") int port, Request request) {
		String blacklist = request.param("regex");
		int responseCode = parseResponseCode(request.param("status"));
		ProxyServer proxy = proxyManager.get(port);
		proxy.blacklistRequests(blacklist, responseCode);

		return Reply.saying().ok();
	}

	/**
	 * Whitelist.
	 * 
	 * @param port
	 *            the port
	 * @param request
	 *            the request
	 * @return the reply
	 */
	@Put
	@At("/:port/whitelist")
	public Reply<?> whitelist(@Named("port") int port, Request request) {
		String regex = request.param("regex");
		int responseCode = parseResponseCode(request.param("status"));
		ProxyServer proxy = proxyManager.get(port);
		proxy.whitelistRequests(regex.split(","), responseCode);

		return Reply.saying().ok();
	}

	/**
	 * Auto basic auth.
	 * 
	 * @param port
	 *            the port
	 * @param domain
	 *            the domain
	 * @param request
	 *            the request
	 * @return the reply
	 */
	@Post
	@At("/:port/auth/basic/:domain")
	public Reply<?> autoBasicAuth(@Named("port") int port,
			@Named("domain") String domain, Request request) {
		Map<String, String> credentials = request.read(HashMap.class).as(
				Json.class);
		ProxyServer proxy = proxyManager.get(port);
		proxy.autoBasicAuthorization(domain, credentials.get("username"),
				credentials.get("password"));

		return Reply.saying().ok();
	}

	/**
	 * Update headers.
	 * 
	 * @param port
	 *            the port
	 * @param request
	 *            the request
	 * @return the reply
	 */
	@Post
	@At("/:port/headers")
	public Reply<?> updateHeaders(@Named("port") int port, Request request) {
		ProxyServer proxy = proxyManager.get(port);
		Map<String, String> headers = request.read(Map.class).as(Json.class);
		for (Map.Entry<String, String> entry : headers.entrySet()) {
			String key = entry.getKey();
			String value = entry.getValue();
			proxy.addHeader(key, value);
		}
		return Reply.saying().ok();
	}

	/**
	 * Adds the response interceptor.
	 * 
	 * @param port
	 *            the port
	 * @param request
	 *            the request
	 * @return the reply
	 * @throws IOException
	 *             Signals that an I/O exception has occurred.
	 * @throws ScriptException
	 *             the script exception
	 */
	@Post
	@At("/:port/interceptor/response")
	public Reply<?> addResponseInterceptor(@Named("port") int port,
			Request request) throws IOException, ScriptException {
		ProxyServer proxy = proxyManager.get(port);

		ByteArrayOutputStream baos = new ByteArrayOutputStream();
		request.readTo(baos);

		ScriptEngineManager mgr = new ScriptEngineManager();
		final ScriptEngine engine = mgr.getEngineByName("JavaScript");
		Compilable compilable = (Compilable) engine;
		final CompiledScript script = compilable.compile(baos.toString());

		proxy.addResponseInterceptor(new ResponseInterceptor() {
			@Override
			public void process(BrowserMobHttpResponse response) {
				Bindings bindings = engine.createBindings();
				bindings.put("response", response);
				bindings.put("log", LOG);
				try {
					script.eval(bindings);
				} catch (ScriptException e) {
					LOG.severe(
							"Could not execute JS-based response interceptor",
							e);
				}
			}
		});

		return Reply.saying().ok();
	}

	/**
	 * Adds the request interceptor.
	 * 
	 * @param port
	 *            the port
	 * @param request
	 *            the request
	 * @return the reply
	 * @throws IOException
	 *             Signals that an I/O exception has occurred.
	 * @throws ScriptException
	 *             the script exception
	 */
	@Post
	@At("/:port/interceptor/request")
	public Reply<?> addRequestInterceptor(@Named("port") int port,
			Request request) throws IOException, ScriptException {
		ProxyServer proxy = proxyManager.get(port);

		ByteArrayOutputStream baos = new ByteArrayOutputStream();
		request.readTo(baos);

		ScriptEngineManager mgr = new ScriptEngineManager();
		final ScriptEngine engine = mgr.getEngineByName("JavaScript");
		Compilable compilable = (Compilable) engine;
		final CompiledScript script = compilable.compile(baos.toString());

		proxy.addRequestInterceptor(new RequestInterceptor() {
			@Override
			public void process(BrowserMobHttpRequest request) {
				Bindings bindings = engine.createBindings();
				bindings.put("request", request);
				bindings.put("log", LOG);
				try {
					script.eval(bindings);
				} catch (ScriptException e) {
					LOG.severe(
							"Could not execute JS-based response interceptor",
							e);
				}
			}
		});

		return Reply.saying().ok();
	}

	/**
	 * Limit.
	 * 
	 * @param port
	 *            the port
	 * @param request
	 *            the request
	 * @return the reply
	 */
	@Put
	@At("/:port/limit")
	public Reply<?> limit(@Named("port") int port, Request request) {
		ProxyServer proxy = proxyManager.get(port);
		StreamManager streamManager = proxy.getStreamManager();
		String upstreamKbps = request.param("upstreamKbps");
		if (upstreamKbps != null) {
			try {
				streamManager.setUpstreamKbps(Integer.parseInt(upstreamKbps));
				streamManager.enable();
			} catch (NumberFormatException e) {
			}
		}
		String downstreamKbps = request.param("downstreamKbps");
		if (downstreamKbps != null) {
			try {
				streamManager.setDownstreamKbps(Integer
						.parseInt(downstreamKbps));
				streamManager.enable();
			} catch (NumberFormatException e) {
			}
		}
		String latency = request.param("latency");
		if (latency != null) {
			try {
				streamManager.setLatency(Integer.parseInt(latency));
				streamManager.enable();
			} catch (NumberFormatException e) {
			}
		}
		String payloadPercentage = request.param("payloadPercentage");
		if (payloadPercentage != null) {
			try {
				streamManager.setPayloadPercentage(Integer
						.parseInt(payloadPercentage));
			} catch (NumberFormatException e) {
			}
		}
		String maxBitsPerSecond = request.param("maxBitsPerSecond");
		if (maxBitsPerSecond != null) {
			try {
				streamManager.setMaxBitsPerSecondThreshold(Integer
						.parseInt(maxBitsPerSecond));
			} catch (NumberFormatException e) {
			}
		}
		String enable = request.param("enable");
		if (enable != null) {
			if (Boolean.parseBoolean(enable)) {
				streamManager.enable();
			} else {
				streamManager.disable();
			}
		}
		return Reply.saying().ok();
	}

	/**
	 * Timeout.
	 * 
	 * @param port
	 *            the port
	 * @param request
	 *            the request
	 * @return the reply
	 */
	@Put
	@At("/:port/timeout")
	public Reply<?> timeout(@Named("port") int port, Request request) {
		ProxyServer proxy = proxyManager.get(port);
		String requestTimeout = request.param("requestTimeout");
		if (requestTimeout != null) {
			try {
				proxy.setRequestTimeout(Integer.parseInt(requestTimeout));
			} catch (NumberFormatException e) {
			}
		}
		String readTimeout = request.param("readTimeout");
		if (readTimeout != null) {
			try {
				proxy.setSocketOperationTimeout(Integer.parseInt(readTimeout));
			} catch (NumberFormatException e) {
			}
		}
		String connectionTimeout = request.param("connectionTimeout");
		if (connectionTimeout != null) {
			try {
				proxy.setConnectionTimeout(Integer.parseInt(connectionTimeout));
			} catch (NumberFormatException e) {
			}
		}
		String dnsCacheTimeout = request.param("dnsCacheTimeout");
		if (dnsCacheTimeout != null) {
			try {
				proxy.setDNSCacheTimeout(Integer.parseInt(dnsCacheTimeout));
			} catch (NumberFormatException e) {
			}
		}
		return Reply.saying().ok();
	}

	/**
	 * Delete.
	 * 
	 * @param port
	 *            the port
	 * @return the reply
	 * @throws Exception
	 *             the exception
	 */
	@Delete
	@At("/:port")
	public Reply<?> delete(@Named("port") int port) throws Exception {
		proxyManager.delete(port);
		return Reply.saying().ok();
	}

	/**
	 * Remap hosts.
	 * 
	 * @param port
	 *            the port
	 * @param request
	 *            the request
	 * @return the reply
	 */
	@Post
	@At("/:port/hosts")
	public Reply<?> remapHosts(@Named("port") int port, Request request) {
		ProxyServer proxy = proxyManager.get(port);
		@SuppressWarnings("unchecked")
		Map<String, String> headers = request.read(Map.class).as(Json.class);

		for (Map.Entry<String, String> entry : headers.entrySet()) {
			String key = entry.getKey();
			String value = entry.getValue();
			proxy.remapHost(key, value);
			proxy.setDNSCacheTimeout(0);
			proxy.clearDNSCache();
		}

		return Reply.saying().ok();
	}

	/**
	 * Wait.
	 * 
	 * @param port
	 *            the port
	 * @param request
	 *            the request
	 * @return the reply
	 */
	@Put
	@At("/:port/wait")
	public Reply<?> wait(@Named("port") int port, Request request) {
		String quietPeriodInMs = request.param("quietPeriodInMs");
		String timeoutInMs = request.param("timeoutInMs");
		ProxyServer proxy = proxyManager.get(port);
		proxy.waitForNetworkTrafficToStop(Integer.parseInt(quietPeriodInMs),
				Integer.parseInt(timeoutInMs));
		return Reply.saying().ok();
	}

	/**
	 * Clear dns cache.
	 * 
	 * @param port
	 *            the port
	 * @return the reply
	 * @throws Exception
	 *             the exception
	 */
	@Delete
	@At("/:port/dns/cache")
	public Reply<?> clearDnsCache(@Named("port") int port) throws Exception {
		ProxyServer proxy = proxyManager.get(port);
		proxy.clearDNSCache();
		return Reply.saying().ok();
	}

	/**
	 * Rewrite url.
	 * 
	 * @param port
	 *            the port
	 * @param request
	 *            the request
	 * @return the reply
	 */
	@Put
	@At("/:port/rewrite")
	public Reply<?> rewriteUrl(@Named("port") int port, Request request) {
		String match = request.param("matchRegex");
		String replace = request.param("replace");
		ProxyServer proxy = proxyManager.get(port);
		proxy.rewriteUrl(match, replace);
		return Reply.saying().ok();
	}

	/**
	 * Retry count.
	 * 
	 * @param port
	 *            the port
	 * @param request
	 *            the request
	 * @return the reply
	 */
	@Put
	@At("/:port/retry")
	public Reply<?> retryCount(@Named("port") int port, Request request) {
		String count = request.param("retrycount");
		ProxyServer proxy = proxyManager.get(port);
		proxy.setRetryCount(Integer.parseInt(count));
		return Reply.saying().ok();
	}

	/**
	 * Parses the response code.
	 * 
	 * @param response
	 *            the response
	 * @return the int
	 */
	private int parseResponseCode(String response) {
		int responseCode = 200;
		if (response != null) {
			try {
				responseCode = Integer.parseInt(response);
			} catch (NumberFormatException e) {
			}
		}
		return responseCode;
	}

	/**
	 * The Class ProxyDescriptor.
	 */
	public static class ProxyDescriptor {

		/** The port. */
		private int port;

		/**
		 * Instantiates a new proxy descriptor.
		 */
		public ProxyDescriptor() {
		}

		/**
		 * Instantiates a new proxy descriptor.
		 * 
		 * @param port
		 *            the port
		 */
		public ProxyDescriptor(int port) {
			this.port = port;
		}

		/**
		 * Gets the port.
		 * 
		 * @return the port
		 */
		public int getPort() {
			return port;
		}

		/**
		 * Sets the port.
		 * 
		 * @param port
		 *            the new port
		 */
		public void setPort(int port) {
			this.port = port;
		}
	}
}
