// ========================================================================
// $Id: ResourceCache.java,v 1.13 2006/04/04 22:28:02 gregwilkins Exp $
// Copyright 2000-2004 Mort Bay Consulting Pty. Ltd.
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

import org.apache.commons.logging.Log;
import org.browsermob.proxy.jetty.log.LogFactory;
import org.browsermob.proxy.jetty.util.*;

import java.io.IOException;
import java.io.Serializable;
import java.util.*;

// TODO: Auto-generated Javadoc
/* ------------------------------------------------------------ */
/**
 * The Class ResourceCache.
 * 
 * @version $Id: ResourceCache.java,v 1.13 2006/04/04 22:28:02 gregwilkins Exp $
 * @author Greg Wilkins
 */
public class ResourceCache implements LifeCycle, Serializable {

	/** The log. */
	private static Log log = LogFactory.getLog(ResourceCache.class);

	/* ------------------------------------------------------------ */
	/* ------------------------------------------------------------ */
	/** The Constant __dftMimeMap. */
	private final static Map __dftMimeMap = new HashMap();

	/** The Constant __encodings. */
	private final static Map __encodings = new HashMap();
	static {
		ResourceBundle mime = ResourceBundle
				.getBundle("org/browsermob/proxy/jetty/http/mime");
		Enumeration i = mime.getKeys();
		while (i.hasMoreElements()) {
			String ext = (String) i.nextElement();
			__dftMimeMap.put(StringUtil.asciiToLowerCase(ext),
					mime.getString(ext));
		}
		ResourceBundle encoding = ResourceBundle
				.getBundle("org/browsermob/proxy/jetty/http/encoding");
		i = encoding.getKeys();
		while (i.hasMoreElements()) {
			String type = (String) i.nextElement();
			__encodings.put(type, encoding.getString(type));
		}
	}

	/* ------------------------------------------------------------ */
	/* ------------------------------------------------------------ */
	// TODO - handle this
	// These attributes are serialized by WebApplicationContext, which needs
	// to be updated if you add to these

	/** The _max cached file size. */
	private int _maxCachedFileSize = 1 * 1024;

	/** The _max cache size. */
	private int _maxCacheSize = 1 * 1024;

	/* ------------------------------------------------------------ */
	/** The _resource base. */
	private Resource _resourceBase;

	/** The _mime map. */
	private Map _mimeMap;

	/** The _encoding map. */
	private Map _encodingMap;

	/* ------------------------------------------------------------ */
	/** The _started. */
	private transient boolean _started;

	/** The _cache. */
	protected transient Map _cache;

	/** The _cache size. */
	protected transient int _cacheSize;

	/** The _most recently used. */
	protected transient CachedMetaData _mostRecentlyUsed;

	/** The _least recently used. */
	protected transient CachedMetaData _leastRecentlyUsed;

	/* ------------------------------------------------------------ */
	/**
	 * Constructor.
	 */
	public ResourceCache() {
		_cache = new HashMap();
	}

	/* ------------------------------------------------------------ */
	/**
	 * Read object.
	 * 
	 * @param in
	 *            the in
	 * @throws IOException
	 *             Signals that an I/O exception has occurred.
	 * @throws ClassNotFoundException
	 *             the class not found exception
	 */
	private void readObject(java.io.ObjectInputStream in) throws IOException,
			ClassNotFoundException {
		in.defaultReadObject();
		_cache = new HashMap();
	}

	/* ------------------------------------------------------------ */
	/**
	 * Set the Resource Base. The base resource is the Resource to use as a
	 * relative base for all context resources. The ResourceBase attribute is a
	 * string version of the baseResource. If a relative file is passed, it is
	 * converted to a file URL based on the current working directory.
	 * 
	 * @return The file or URL to use as the base for all resources within the
	 *         context.
	 */
	public String getResourceBase() {
		if (_resourceBase == null)
			return null;
		return _resourceBase.toString();
	}

	/* ------------------------------------------------------------ */
	/**
	 * Set the Resource Base. The base resource is the Resource to use as a
	 * relative base for all context resources. The ResourceBase attribute is a
	 * string version of the baseResource. If a relative file is passed, it is
	 * converted to a file URL based on the current working directory.
	 * 
	 * @param resourceBase
	 *            A URL prefix or directory name.
	 */
	public void setResourceBase(String resourceBase) {
		try {
			_resourceBase = Resource.newResource(resourceBase);
			if (log.isDebugEnabled())
				log.debug("resourceBase=" + _resourceBase + " for " + this);
		} catch (IOException e) {
			log.debug(LogSupport.EXCEPTION, e);
			throw new IllegalArgumentException(resourceBase + ":"
					+ e.toString());
		}
	}

	/* ------------------------------------------------------------ */
	/**
	 * Get the base resource. The base resource is the Resource to use as a
	 * relative base for all context resources. The ResourceBase attribute is a
	 * string version of the baseResource.
	 * 
	 * @return The resourceBase as a Resource instance
	 */
	public Resource getBaseResource() {
		return _resourceBase;
	}

	/* ------------------------------------------------------------ */
	/**
	 * Set the base resource. The base resource is the Resource to use as a
	 * relative base for all context resources. The ResourceBase attribute is a
	 * string version of the baseResource.
	 * 
	 * @param base
	 *            The resourceBase as a Resource instance
	 */
	public void setBaseResource(Resource base) {
		_resourceBase = base;
	}

	/* ------------------------------------------------------------ */
	/**
	 * Gets the max cached file size.
	 * 
	 * @return the max cached file size
	 */
	public int getMaxCachedFileSize() {
		return _maxCachedFileSize;
	}

	/* ------------------------------------------------------------ */
	/**
	 * Sets the max cached file size.
	 * 
	 * @param maxCachedFileSize
	 *            the new max cached file size
	 */
	public void setMaxCachedFileSize(int maxCachedFileSize) {
		_maxCachedFileSize = maxCachedFileSize;
		_cache.clear();
	}

	/* ------------------------------------------------------------ */
	/**
	 * Gets the max cache size.
	 * 
	 * @return the max cache size
	 */
	public int getMaxCacheSize() {
		return _maxCacheSize;
	}

	/* ------------------------------------------------------------ */
	/**
	 * Sets the max cache size.
	 * 
	 * @param maxCacheSize
	 *            the new max cache size
	 */
	public void setMaxCacheSize(int maxCacheSize) {
		_maxCacheSize = maxCacheSize;
		_cache.clear();
	}

	/* ------------------------------------------------------------ */
	/**
	 * Flush cache.
	 */
	public void flushCache() {
		_cache.clear();
		System.gc();
	}

	/* ------------------------------------------------------------ */
	/**
	 * Get a resource from the context. Cached Resources are returned if the
	 * resource fits within the LRU cache. Directories may have CachedResources
	 * returned, but the caller must use the CachedResource.setCachedData method
	 * to set the formatted directory content.
	 * 
	 * @param pathInContext
	 *            the path in context
	 * @return Resource
	 * @throws IOException
	 *             Signals that an I/O exception has occurred.
	 */
	public Resource getResource(String pathInContext) throws IOException {
		if (log.isTraceEnabled())
			log.trace("getResource " + pathInContext);
		if (_resourceBase == null)
			return null;

		Resource resource = null;

		// Cache operations
		synchronized (_cache) {
			// Look for it in the cache
			CachedResource cached = (CachedResource) _cache.get(pathInContext);
			if (cached != null) {
				if (log.isTraceEnabled())
					log.trace("CACHE HIT: " + cached);
				CachedMetaData cmd = (CachedMetaData) cached.getAssociate();
				if (cmd != null && cmd.isValid())
					return cached;
			}

			// Make the resource
			resource = _resourceBase.addPath(_resourceBase
					.encode(pathInContext));
			if (log.isTraceEnabled())
				log.trace("CACHE MISS: " + resource);
			if (resource == null)
				return null;

			// Check for file aliasing
			if (resource.getAlias() != null) {
				log.warn("Alias request of '" + resource.getAlias() + "' for '"
						+ resource + "'");
				return null;
			}

			// Is it an existing file?
			long len = resource.length();
			if (resource.exists()) {
				// Is it badly named?
				if (!resource.isDirectory() && pathInContext.endsWith("/"))
					return null;

				// Guess directory length.
				if (resource.isDirectory()) {
					if (resource.list() != null)
						len = resource.list().length * 100;
					else
						len = 0;
				}

				// Is it cacheable?
				if (len > 0 && len < _maxCachedFileSize && len < _maxCacheSize) {
					int needed = _maxCacheSize - (int) len;
					while (_cacheSize > needed)
						_leastRecentlyUsed.invalidate();

					cached = resource.cache();
					if (log.isTraceEnabled())
						log.trace("CACHED: " + resource);
					new CachedMetaData(cached, pathInContext);
					return cached;
				}
			}
		}

		// Non cached response
		new ResourceMetaData(resource);
		return resource;
	}

	/* ------------------------------------------------------------ */
	/**
	 * Gets the mime map.
	 * 
	 * @return the mime map
	 */
	public synchronized Map getMimeMap() {
		return _mimeMap;
	}

	/* ------------------------------------------------------------ */
	/**
	 * Also sets the org.mortbay.http.mimeMap context attribute
	 * 
	 * @param mimeMap
	 *            the new mime map
	 */
	public void setMimeMap(Map mimeMap) {
		_mimeMap = mimeMap;
	}

	/* ------------------------------------------------------------ */
	/**
	 * Get the MIME type by filename extension.
	 * 
	 * @param filename
	 *            A file name
	 * @return MIME type matching the longest dot extension of the file name.
	 */
	public String getMimeByExtension(String filename) {
		String type = null;

		if (filename != null) {
			int i = -1;
			while (type == null) {
				i = filename.indexOf(".", i + 1);

				if (i < 0 || i >= filename.length())
					break;

				String ext = StringUtil.asciiToLowerCase(filename
						.substring(i + 1));
				if (_mimeMap != null)
					type = (String) _mimeMap.get(ext);
				if (type == null)
					type = (String) __dftMimeMap.get(ext);
			}
		}

		if (type == null) {
			if (_mimeMap != null)
				type = (String) _mimeMap.get("*");
			if (type == null)
				type = (String) __dftMimeMap.get("*");
		}

		return type;
	}

	/* ------------------------------------------------------------ */
	/**
	 * Set a mime mapping.
	 * 
	 * @param extension
	 *            the extension
	 * @param type
	 *            the type
	 */
	public void setMimeMapping(String extension, String type) {
		if (_mimeMap == null)
			_mimeMap = new HashMap();
		_mimeMap.put(StringUtil.asciiToLowerCase(extension), type);
	}

	/* ------------------------------------------------------------ */
	/**
	 * Get the map of mime type to char encoding.
	 * 
	 * @return Map of mime type to character encodings.
	 */
	public synchronized Map getEncodingMap() {
		if (_encodingMap == null)
			_encodingMap = Collections.unmodifiableMap(__encodings);
		return _encodingMap;
	}

	/* ------------------------------------------------------------ */
	/**
	 * Set the map of mime type to char encoding. Also sets the
	 * org.mortbay.http.encodingMap context attribute
	 * 
	 * @param encodingMap
	 *            Map of mime type to character encodings.
	 */
	public void setEncodingMap(Map encodingMap) {
		_encodingMap = encodingMap;
	}

	/* ------------------------------------------------------------ */
	/**
	 * Get char encoding by mime type.
	 * 
	 * @param type
	 *            A mime type.
	 * @return The prefered character encoding for that type if known.
	 */
	public String getEncodingByMimeType(String type) {
		String encoding = null;

		if (type != null)
			encoding = (String) _encodingMap.get(type);

		return encoding;
	}

	/* ------------------------------------------------------------ */
	/**
	 * Set the encoding that should be used for a mimeType.
	 * 
	 * @param mimeType
	 *            the mime type
	 * @param encoding
	 *            the encoding
	 */
	public void setTypeEncoding(String mimeType, String encoding) {
		getEncodingMap().put(mimeType, encoding);
	}

	/* ------------------------------------------------------------ */
	/*
	 * (non-Javadoc)
	 * 
	 * @see org.browsermob.proxy.jetty.util.LifeCycle#start()
	 */
	public synchronized void start() throws Exception {
		if (isStarted())
			return;
		getMimeMap();
		getEncodingMap();
		_started = true;
	}

	/* ------------------------------------------------------------ */
	/*
	 * (non-Javadoc)
	 * 
	 * @see org.browsermob.proxy.jetty.util.LifeCycle#isStarted()
	 */
	public boolean isStarted() {
		return _started;
	}

	/* ------------------------------------------------------------ */
	/**
	 * Stop the context.
	 * 
	 * @throws InterruptedException
	 *             the interrupted exception
	 */
	public void stop() throws InterruptedException {
		_started = false;
		_cache.clear();
	}

	/* ------------------------------------------------------------ */
	/**
	 * Destroy a context. Destroy a context and remove it from the HttpServer.
	 * The HttpContext must be stopped before it can be destroyed.
	 */
	public void destroy() {
		if (isStarted())
			throw new IllegalStateException("Started");

		setMimeMap(null);
		_encodingMap = null;
	}

	/* ------------------------------------------------------------ */
	/**
	 * Get Resource MetaData.
	 * 
	 * @param resource
	 *            the resource
	 * @return Meta data for the resource.
	 */
	public ResourceMetaData getResourceMetaData(Resource resource) {
		Object o = resource.getAssociate();
		if (o instanceof ResourceMetaData)
			return (ResourceMetaData) o;
		return new ResourceMetaData(resource);
	}

	/* ------------------------------------------------------------ */
	/* ------------------------------------------------------------ */
	/**
	 * MetaData associated with a context Resource.
	 */
	public class ResourceMetaData {

		/** The _name. */
		protected String _name;

		/** The _resource. */
		protected Resource _resource;

		/**
		 * Instantiates a new resource meta data.
		 * 
		 * @param resource
		 *            the resource
		 */
		ResourceMetaData(Resource resource) {
			_resource = resource;
			_name = _resource.toString();
			_resource.setAssociate(this);
		}

		/**
		 * Gets the length.
		 * 
		 * @return the length
		 */
		public String getLength() {
			return Long.toString(_resource.length());
		}

		/**
		 * Gets the last modified.
		 * 
		 * @return the last modified
		 */
		public String getLastModified() {
			return HttpFields.formatDate(_resource.lastModified(), false);
		}

		/**
		 * Gets the mime type.
		 * 
		 * @return the mime type
		 */
		public String getMimeType() {
			return getMimeByExtension(_name);
		}
	}

	/* ------------------------------------------------------------ */
	/* ------------------------------------------------------------ */
	/**
	 * The Class CachedMetaData.
	 */
	private class CachedMetaData extends ResourceMetaData {

		/** The _last modified. */
		String _lastModified;

		/** The _encoding. */
		String _encoding;

		/** The _length. */
		String _length;

		/** The _key. */
		String _key;

		/** The _cached. */
		CachedResource _cached;

		/** The _prev. */
		CachedMetaData _prev;

		/** The _next. */
		CachedMetaData _next;

		/**
		 * Instantiates a new cached meta data.
		 * 
		 * @param resource
		 *            the resource
		 * @param pathInContext
		 *            the path in context
		 */
		CachedMetaData(CachedResource resource, String pathInContext) {
			super(resource);
			_cached = resource;
			_length = super.getLength();
			_lastModified = super.getLastModified();
			_encoding = super.getMimeType();
			_key = pathInContext;

			_next = _mostRecentlyUsed;
			_mostRecentlyUsed = this;
			if (_next != null)
				_next._prev = this;
			_prev = null;
			if (_leastRecentlyUsed == null)
				_leastRecentlyUsed = this;

			_cache.put(_key, resource);

			_cacheSize += _cached.length();

		}

		/*
		 * (non-Javadoc)
		 * 
		 * @see
		 * org.browsermob.proxy.jetty.http.ResourceCache.ResourceMetaData#getLength
		 * ()
		 */
		public String getLength() {
			return _length;
		}

		/*
		 * (non-Javadoc)
		 * 
		 * @see org.browsermob.proxy.jetty.http.ResourceCache.ResourceMetaData#
		 * getLastModified()
		 */
		public String getLastModified() {
			return _lastModified;
		}

		/*
		 * (non-Javadoc)
		 * 
		 * @see org.browsermob.proxy.jetty.http.ResourceCache.ResourceMetaData#
		 * getMimeType()
		 */
		public String getMimeType() {
			return _encoding;
		}

		/* ------------------------------------------------------------ */
		/**
		 * Checks if is valid.
		 * 
		 * @return true, if is valid
		 * @throws IOException
		 *             Signals that an I/O exception has occurred.
		 */
		boolean isValid() throws IOException {
			if (_cached.isUptoDate()) {
				if (_mostRecentlyUsed != this) {
					CachedMetaData tp = _prev;
					CachedMetaData tn = _next;

					_next = _mostRecentlyUsed;
					_mostRecentlyUsed = this;
					if (_next != null)
						_next._prev = this;
					_prev = null;

					if (tp != null)
						tp._next = tn;
					if (tn != null)
						tn._prev = tp;

					if (_leastRecentlyUsed == this && tp != null)
						_leastRecentlyUsed = tp;
				}
				return true;
			}

			invalidate();
			return false;
		}

		/**
		 * Invalidate.
		 */
		public void invalidate() {
			// Invalidate it
			_cache.remove(_key);
			_cacheSize = _cacheSize - (int) _cached.length();

			if (_mostRecentlyUsed == this)
				_mostRecentlyUsed = _next;
			else
				_prev._next = _next;

			if (_leastRecentlyUsed == this)
				_leastRecentlyUsed = _prev;
			else
				_next._prev = _prev;

			_prev = null;
			_next = null;
		}
	}

}
