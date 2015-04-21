/*
 * 
 */
package org.browsermob.proxy.http;

import org.apache.http.conn.scheme.HostNameResolver;
import org.browsermob.proxy.util.Log;
import org.xbill.DNS.*;

import java.io.IOException;
import java.net.InetAddress;
import java.net.UnknownHostException;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

// TODO: Auto-generated Javadoc
/**
 * The Class BrowserMobHostNameResolver.
 */
public class BrowserMobHostNameResolver implements HostNameResolver {

	/** The Constant LOG. */
	private static final Log LOG = new Log();

	/** The fake slow. */
	public static ThreadLocal<Boolean> fakeSlow = new ThreadLocal<Boolean>() {
		@Override
		protected Boolean initialValue() {
			return false;
		}
	};

	/** The remappings. */
	private Map<String, String> remappings = new ConcurrentHashMap<String, String>();

	/** The reverse mapping. */
	private Map<String, List<String>> reverseMapping = new ConcurrentHashMap<String, List<String>>();

	/** The cache. */
	private Cache cache;

	/** The resolver. */
	private Resolver resolver;

	/**
	 * Instantiates a new browser mob host name resolver.
	 * 
	 * @param cache
	 *            the cache
	 */
	public BrowserMobHostNameResolver(Cache cache) {
		this.cache = cache;
		try {
			resolver = new ExtendedResolver();
		} catch (UnknownHostException e) {
			throw new RuntimeException(e);
		}
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see
	 * org.apache.http.conn.scheme.HostNameResolver#resolve(java.lang.String)
	 */
	@Override
	public InetAddress resolve(String hostname) throws IOException {
		String remapping = remappings.get(hostname);
		if (remapping != null) {
			hostname = remapping;
		}

		try {
			return Address.getByAddress(hostname);
		} catch (UnknownHostException e) {
			// that's fine, this just means it's not an IP address and we gotta
			// look it up, which is common
		}

		boolean isCached = this.isCached(hostname);

		Lookup lookup = new Lookup(Name.fromString(hostname), Type.A);
		lookup.setCache(cache);
		lookup.setResolver(resolver);

		Date start = new Date();
		Record[] records = lookup.run();
		if (fakeSlow.get()) {
			fakeSlow.set(false);
			try {
				Thread.sleep(3000);
			} catch (InterruptedException e) {
				e.printStackTrace();
			}
		}
		Date end = new Date();

		if (records == null || records.length == 0) {
			throw new UnknownHostException(hostname);
		}

		// assembly the addr object
		ARecord a = (ARecord) records[0];
		InetAddress addr = InetAddress.getByAddress(hostname, a.getAddress()
				.getAddress());

		if (!isCached) {
			// TODO: Associate the the host name with the connection. We do this
			// because when using persistent
			// connections there won't be a lookup on the 2nd, 3rd, etc
			// requests, and as such we wouldn't be able to
			// know what IP address we were requesting.
			RequestInfo.get().dns(start, end, addr.getHostAddress());
		} else {
			// if it is a cached hit, we just record zero since we don't want
			// to skew the data with method call timings (specially under load)
			RequestInfo.get().dns(end, end, addr.getHostAddress());
		}

		return addr;
	}

	/**
	 * Remap.
	 * 
	 * @param source
	 *            the source
	 * @param target
	 *            the target
	 */
	public void remap(String source, String target) {
		remappings.put(source, target);
		List<String> list = reverseMapping.get(target);
		if (list == null) {
			list = new ArrayList<String>();
		}
		list.add(source);
		reverseMapping.put(target, list);
	}

	/**
	 * Remapping.
	 * 
	 * @param host
	 *            the host
	 * @return the string
	 */
	public String remapping(String host) {
		return remappings.get(host);
	}

	/**
	 * Original.
	 * 
	 * @param host
	 *            the host
	 * @return the list
	 */
	public List<String> original(String host) {
		return reverseMapping.get(host);
	}

	/**
	 * Clear cache.
	 */
	public void clearCache() {
		this.cache.clearCache();
	}

	/**
	 * Sets the cache timeout.
	 * 
	 * @param timeout
	 *            the new cache timeout
	 */
	public void setCacheTimeout(int timeout) {
		cache.setMaxCache(timeout);
	}

	/**
	 * Checks if is cached.
	 * 
	 * @param hostname
	 *            the hostname
	 * @return true, if is cached
	 * @throws TextParseException
	 *             the text parse exception
	 */
	public boolean isCached(String hostname) throws TextParseException {
		return cache.lookupRecords(Name.fromString(hostname), Type.ANY, 3)
				.isSuccessful();
	}
}
