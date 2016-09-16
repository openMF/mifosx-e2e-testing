// ========================================================================
// $Id: ByteArrayPool.java,v 1.9 2004/05/09 20:32:49 gregwilkins Exp $
// Copyright 2002-2004 Mort Bay Consulting Pty. Ltd.
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

package org.browsermob.proxy.jetty.util;

// TODO: Auto-generated Javadoc
/* ------------------------------------------------------------ */
/**
 * Byte Array Pool Simple pool for recycling byte arrays of a fixed size.
 * 
 * @version $Id: ByteArrayPool.java,v 1.9 2004/05/09 20:32:49 gregwilkins Exp $
 * @author Greg Wilkins (gregw)
 */
public class ByteArrayPool {

	/** The Constant __POOL_SIZE. */
	public static final int __POOL_SIZE = Integer.getInteger(
			"org.browsermob.proxy.jetty.util.ByteArrayPool.pool_size", 8)
			.intValue();

	/** The Constant __pools. */
	public static final ThreadLocal __pools = new BAThreadLocal();

	/** The __slot. */
	public static int __slot;

	/* ------------------------------------------------------------ */
	/**
	 * Get a byte array from the pool of known size.
	 * 
	 * @param size
	 *            Size of the byte array.
	 * @return Byte array of known size.
	 */
	public static byte[] getByteArray(int size) {
		byte[][] pool = (byte[][]) __pools.get();
		boolean full = true;
		for (int i = pool.length; i-- > 0;) {
			if (pool[i] != null && pool[i].length == size) {
				byte[] b = pool[i];
				pool[i] = null;
				return b;
			} else
				full = false;
		}

		if (full)
			for (int i = pool.length; i-- > 0;)
				pool[i] = null;

		return new byte[size];
	}

	/* ------------------------------------------------------------ */
	/**
	 * Gets the byte array at least.
	 * 
	 * @param minSize
	 *            the min size
	 * @return the byte array at least
	 */
	public static byte[] getByteArrayAtLeast(int minSize) {
		byte[][] pool = (byte[][]) __pools.get();
		for (int i = pool.length; i-- > 0;) {
			if (pool[i] != null && pool[i].length >= minSize) {
				byte[] b = pool[i];
				pool[i] = null;
				return b;
			}
		}

		return new byte[minSize];
	}

	/* ------------------------------------------------------------ */
	/**
	 * Return byte array.
	 * 
	 * @param b
	 *            the b
	 */
	public static void returnByteArray(final byte[] b) {
		if (b == null)
			return;

		byte[][] pool = (byte[][]) __pools.get();
		for (int i = pool.length; i-- > 0;) {
			if (pool[i] == null) {
				pool[i] = b;
				return;
			}
		}

		// slot.
		int s = __slot++;
		if (s < 0)
			s = -s;
		pool[s % pool.length] = b;
	}

	/* ------------------------------------------------------------ */
	/* ------------------------------------------------------------ */
	/**
	 * The Class BAThreadLocal.
	 */
	private static final class BAThreadLocal extends ThreadLocal {

		/*
		 * (non-Javadoc)
		 * 
		 * @see java.lang.ThreadLocal#initialValue()
		 */
		protected Object initialValue() {
			return new byte[__POOL_SIZE][];
		}
	}
}
