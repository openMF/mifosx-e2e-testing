/*
 * 
 */
package org.browsermob.core.util;

import java.lang.management.ManagementFactory;
import java.lang.management.ThreadInfo;
import java.util.concurrent.TimeUnit;

// TODO: Auto-generated Javadoc
/**
 * The Class ThreadUtils.
 */
public class ThreadUtils {

	/**
	 * Dump all threads.
	 * 
	 * @return the string
	 */
	public static String dumpAllThreads() {
		ThreadInfo[] dumps = ManagementFactory.getThreadMXBean()
				.dumpAllThreads(true, true);
		StringBuilder out = new StringBuilder("Thread Dump\n");
		for (ThreadInfo dump : dumps) {
			out.append("-------------------------\n").append(dump);
		}

		return out.toString();
	}

	/**
	 * The Interface WaitCondition.
	 */
	public static interface WaitCondition {

		/**
		 * Check condition.
		 * 
		 * @param elapsedTimeInMs
		 *            the elapsed time in ms
		 * @return true, if successful
		 */
		public boolean checkCondition(long elapsedTimeInMs);
	}

	/**
	 * Sleep.
	 * 
	 * @param timeUnit
	 *            the time unit
	 * @param duration
	 *            the duration
	 */
	public static void sleep(TimeUnit timeUnit, long duration) {
		try {
			timeUnit.sleep(duration);
		} catch (InterruptedException ex) {
			Thread.currentThread().interrupt();
		}
	}

	/**
	 * Wait for.
	 * 
	 * @param condition
	 *            the condition
	 * @return true, if successful
	 */
	public static boolean waitFor(WaitCondition condition) {
		boolean result = false;
		if (condition != null) {
			long startTime = System.currentTimeMillis();

			while (!(result = condition.checkCondition(System
					.currentTimeMillis() - startTime))) {
				try {
					Thread.sleep(100);
				} catch (InterruptedException ex) {
					Thread.currentThread().interrupt();
				}
			}
		}

		return result;
	}

	/**
	 * Wait for.
	 * 
	 * @param condition
	 *            the condition
	 * @param timeUnit
	 *            the time unit
	 * @param timeoutDuration
	 *            the timeout duration
	 * @return true, if successful
	 */
	public static boolean waitFor(WaitCondition condition, TimeUnit timeUnit,
			long timeoutDuration) {
		long timeout = timeUnit.toMillis(timeoutDuration);

		boolean result = false;
		if (condition != null) {
			long startTime = System.currentTimeMillis();
			long curTime = startTime;

			while (!(result = condition.checkCondition(curTime - startTime))
					&& (curTime - startTime < timeout)) {
				try {
					Thread.sleep(100);
				} catch (InterruptedException ex) {
					Thread.currentThread().interrupt();
				}
				curTime = System.currentTimeMillis();
			}
		}

		return result;
	}

	/**
	 * Wait for.
	 * 
	 * @param condition
	 *            the condition
	 * @param timeUnitTimeout
	 *            the time unit timeout
	 * @param timeoutDuration
	 *            the timeout duration
	 * @param timeUnitSleep
	 *            the time unit sleep
	 * @param sleepDuration
	 *            the sleep duration
	 * @return true, if successful
	 */
	public static boolean waitFor(WaitCondition condition,
			TimeUnit timeUnitTimeout, long timeoutDuration,
			TimeUnit timeUnitSleep, long sleepDuration) {
		long timeout = timeUnitTimeout.toMillis(timeoutDuration);
		long sleepBetween = timeUnitSleep.toMillis(sleepDuration);

		boolean result = false;
		if (condition != null) {
			long startTime = System.currentTimeMillis();
			long curTime = startTime;

			while (!(result = condition.checkCondition(curTime - startTime))
					&& (curTime - startTime < timeout)) {
				try {
					Thread.sleep(sleepBetween);
				} catch (InterruptedException ex) {
					Thread.currentThread().interrupt();
				}
				curTime = System.currentTimeMillis();
			}
		}

		return result;
	}
}