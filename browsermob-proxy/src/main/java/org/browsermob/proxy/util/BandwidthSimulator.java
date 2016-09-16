/*
 * 
 */
package org.browsermob.proxy.util;

// TODO: Auto-generated Javadoc
/**
 * The Class BandwidthSimulator.
 */
public class BandwidthSimulator {
	// Too large and the instantaneous bandwidth varies too much.
	// Too small and we don't reach the target fast enough.
	/** The Constant DAMPING_FACTOR. */
	private static final float DAMPING_FACTOR = 0.5f;

	/** The start time. */
	private long startTime;

	/** The sleep time. */
	private int sleepTime;

	/** The damping. */
	private float damping;

	/** The target bps. */
	private final int targetBps;

	/** The buffer increment. */
	private final int bufferIncrement;

	/**
	 * Instantiates a new bandwidth simulator.
	 * 
	 * @param targetBPS
	 *            the target bps
	 */
	public BandwidthSimulator(int targetBPS) {
		targetBps = targetBPS;

		// We must use a larger buffer increment for higher BPS rates due to the
		// precision to which we can sleep (maybe ~10ms). Limiting for higher
		// BPS rates will only apply to large messages, but that's not something
		// we can help.
		//
		// I considered adjusting the buffer increment based on the target baud,
		// or
		// dynamically based on the measured performance. I discounted this
		// because
		// there's no obvious algorithm, and its likely to cause non-linear
		// behaviour due to external influences such as the MTU size. Also,
		// having
		// the increment too small will increase the work that we have to do
		// within
		// The Grinder, which might significantly skew timings.
		bufferIncrement = Math.max(100, targetBps / 500);
	}

	/**
	 * Maximum bytes.
	 * 
	 * @param position
	 *            the position
	 * @return the int
	 */
	public int maximumBytes(int position) {
		if (targetBps == 0) {
			return Integer.MAX_VALUE;
		}

		final long now = System.currentTimeMillis();

		if (position == 0) {
			startTime = now;

			// Set the initial sleep time to 0 so we start pumping bytes
			// straight
			// away.
			sleepTime = 0;

			// Set the second sleep time based on the first lot of bytes
			// transfered.
			// The damping is 2 to account for the initial call.
			damping = 2;
		} else {
			final long expectedTime = (long) position * 8 * 1000 / targetBps;
			final long actualTime = now - startTime;
			sleepTime += (expectedTime - actualTime) * damping;

			if (sleepTime < 0) {
				sleepTime = 0;
			}

			damping = DAMPING_FACTOR;
		}

		try {
			Thread.sleep(sleepTime, 0);
		} catch (InterruptedException e) {
			Thread.interrupted();
		}

		// Allow bufferIncrement bytes to be read.
		return bufferIncrement;
	}
}
