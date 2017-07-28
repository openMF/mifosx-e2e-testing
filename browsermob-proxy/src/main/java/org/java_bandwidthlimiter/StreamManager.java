/*
This file is part of the Java-BandwidthLimiter project from Luca Colantonio - from Neustar inc.
The project can be found at https://github.com/lucabox/Java-BandwidthLimiter

Copyright (c) 2012, Luca Colantonio <luca.colantonio@gmail.com / lucabox@gmail.com>
All rights reserved.

Redistribution and use in source and binary forms, with or without modification,
are permitted provided that the following conditions are met:

 * Redistributions of source code must retain the above copyright notice,
      this list of conditions and the following disclaimer.
 * Redistributions in binary form must reproduce the above copyright notice,
      this list of conditions and the following disclaimer in the documentation
      and/or other materials provided with the distribution.

THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" AND
ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED
WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE FOR
ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES
(INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES;
LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON
ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
(INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS
SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
 */

package org.java_bandwidthlimiter;

import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.Random;

// TODO: Auto-generated Javadoc
/**
 * A class that manages the bandwidth of all the registered streams (both input
 * and output streams). Note: when you see B, it stands for byte
 * 
 * The maximum Downstream kilobits per sec speed can be set via
 * {@link #setDownstreamKbps(long)}. The maximum Upstream kilobits per sec speed
 * can be set via {@link #setUpstreamKbps(long)}. Additional latency can be
 * added via {@link #setLatency(long)}. It is possible to fine tune the amount
 * of payload that gets actually sent to the pipe via
 * {@link #setPayloadPercentage}.
 * 
 * Note: there is no fairness in how the bandwidth is currently assigned to the
 * registered streams. If this causes problems for your purposes you have to
 * override/change {@link #registerStream(InputStream)}
 * {@link #registerStream(OutputStream)}
 * {@link #getAllowedBytesRead(org.java_bandwidthlimiter.StreamManager.ManagedInputStream, int)}
 * {@link #getAllowedBytesWrite(org.java_bandwidthlimiter.StreamManager.ManagedOutputStream, int)}
 * and implement fairness there.
 * 
 */
public class StreamManager implements BandwidthLimiter {

	// helper class to parameters for a stream direction (upstream or
	// downstream)
	/**
	 * The Class StreamParams.
	 */
	private class StreamParams {

		/** The max bps. */
		public long maxBps;

		/** The adjusted max bps. */
		public long adjustedMaxBps; // just a placeholder so we don't have to do
									// maxBps*actualPayloadPercentage all the
									// time

		/** The remaining bps. */
		public long remainingBps;

		/** The next reset timestamp. */
		public long nextResetTimestamp;

		/** The next reset sub intervals. */
		public long nextResetSubIntervals;

		/**
		 * Time to next reset.
		 * 
		 * @return the long
		 */
		private long timeToNextReset() {
			return nextResetTimestamp - System.currentTimeMillis();
		}

		/**
		 * Reset.
		 */
		private void reset() {
			remainingBps = adjustedMaxBps / nextResetSubIntervals;
			nextResetTimestamp = System.currentTimeMillis()
					+ (OneSecond / nextResetSubIntervals);
		}

		/**
		 * Adjust bytes.
		 * 
		 * @param bytesNumber
		 *            the bytes number
		 */
		private void adjustBytes(long bytesNumber) {
			// make sure that this adjustment didn't go over the max allowed
			remainingBps = Math.min(remainingBps + bytesNumber, adjustedMaxBps
					/ nextResetSubIntervals);
		}
	}

	// allow 5% as overhead (this can be fine tuned via setPayloadPercentage)
	/** The actual payload percentage. */
	private double actualPayloadPercentage = 0.95;

	/** The enabled. */
	private boolean enabled = false;

	// this is the overall threshold the stream manager won't ever allow to go
	// over.
	// even calls to setDownstreamKbps and setUpstreamKbps will be forced to
	// honor this upperbound.
	/** The max bytes per second. */
	private long maxBytesPerSecond;

	/** The down stream. */
	private StreamParams downStream = new StreamParams();

	/** The up stream. */
	private StreamParams upStream = new StreamParams();

	/** The latency. */
	private long latency = 0;

	/** The random generator. */
	private Random randomGenerator = new Random();

	/**
	 * Create an instance of StreamManager. This stream manager will throttle
	 * avery input/output stream is registered to it via
	 * {@link #registerStream(java.io.InputStream)} and/or
	 * {@link #registerStream(java.io.OutputStream)}. It is disabled by default,
	 * hence to begin throttling {@link #enable()} has to be called first.
	 * 
	 * @param maxBitsPerSecond
	 *            the default and max speed this instance of StreamManager will
	 *            throttle to. It is an upper bound to what
	 *            {@link #setDownstreamKbps(long)} and
	 *            {@link #setUpstreamKbps(long)} can request. This upper bound
	 *            can _only_ be changed via
	 *            {@link #setMaxBitsPerSecondThreshold(long)}
	 * 
	 */
	public StreamManager(long maxBitsPerSecond) {
		setMaxBitsPerSecondThreshold(maxBitsPerSecond);
		setDownstreamKbps(maxBitsPerSecond / 1000);
		setUpstreamKbps(maxBitsPerSecond / 1000);
		setPayloadPercentage(95);
		disable();
	}

	/**
	 * Calling this method to start throttling all registered streams. By
	 * default the StreamManager is disabled
	 */
	public void enable() {
		this.enabled = true;
	}

	/**
	 * Calling this method to stop throttling all registered streams. By default
	 * the StreamManager is disabled
	 */
	public void disable() {
		this.enabled = false;
	}

	/**
	 * setting the max kilobits per seconds this StreamManager should apply in
	 * downstream, as aggregate bandwidth of all the InputStream registered.
	 * 
	 * @param downstreamKbps
	 *            the desired max kilobits per second downstream rate.
	 */
	@Override
	public void setDownstreamKbps(long downstreamKbps) {
		long bytesPerSecond = (downstreamKbps * 1000) / 8;
		setMaxBps(this.downStream, bytesPerSecond);
	}

	/**
	 * setting the max kilobits per seconds this StreamManager should apply in
	 * upstream, as aggregate bandwidth of all the OutputStream registered.
	 * 
	 * @param upstreamKbps
	 *            the desired max kilobits per second upstream rate.
	 */
	@Override
	public void setUpstreamKbps(long upstreamKbps) {
		long bytesPerSecond = (upstreamKbps * 1000) / 8;
		setMaxBps(this.upStream, bytesPerSecond);
	}

	/**
	 * setting the additional (simulated) latency that the streams will suffer.
	 * By default the latency applied is equal to zero.
	 * 
	 * @param latency
	 *            the desired additional latency in milliseconds
	 */
	@Override
	public void setLatency(long latency) {
		this.latency = latency;
	}

	/**
	 * To take into account overhead due to underlying protocols (e.g. TCP/IP)
	 * 
	 * @param payloadPercentage
	 *            a ] 0 , 100] value. where 100 means that the required
	 *            downstream/upstream bandwidth will be full used for sending
	 *            payload. Default value is 95%. The default value is applied if
	 *            an out of boundaries value is passed in.
	 */
	public void setPayloadPercentage(int payloadPercentage) {
		if (!(payloadPercentage > 0 && payloadPercentage <= 100)) {
			// if an invalid percentage is given
			payloadPercentage = 95;
		}
		this.actualPayloadPercentage = (double) payloadPercentage / 100;
		setMaxBps(this.downStream, this.downStream.maxBps);
		setMaxBps(this.upStream, this.upStream.maxBps);
	}

	/**
	 * Register an input stream. A client would then use the returned
	 * InputStream, which will throttle the one passed as parameter.
	 * 
	 * @param in
	 *            The InputStream that will throttled
	 * @return a new throttled InputStream (wrapping the one given as parameter)
	 */
	public InputStream registerStream(InputStream in) {
		return new ManagedInputStream(in, this);
	}

	/**
	 * Register an output stream. A client would then use the returned
	 * OutputStream, which will throttle the one passed as parameter. * @param
	 * in The OutputStream that will be throttled
	 * 
	 * @param out
	 *            the out
	 * @return a new throttled OutputStream (wrapping the one given as
	 *         parameter)
	 */
	public OutputStream registerStream(OutputStream out) {
		return new ManagedOutputStream(out, this);
	}

	/**
	 * This function sets the max bits per second threshold.
	 * 
	 * @param maxBitsPerSecond
	 *            The max bits per seconds you want this instance of
	 *            StreamManager to respect. {@link #setDownstreamKbps} and
	 *            {@link #setDownstreamKbps(long)} won't be allowed to set a
	 *            bandwidth higher than what specified here.
	 */
	public void setMaxBitsPerSecondThreshold(long maxBitsPerSecond) {
		// setting the maximimum threshold of bits per second that
		// we can send EVER in upstream/downstream
		// the user can later decrease this value but not increment it
		this.maxBytesPerSecond = maxBitsPerSecond / 8;
		// make sure the streams parameters honor the new max limit
		setMaxBps(this.downStream, this.downStream.maxBps);
		setMaxBps(this.upStream, this.upStream.maxBps);
	}

	/**
	 * Sets the max bps.
	 * 
	 * @param direction
	 *            the direction
	 * @param maxBps
	 *            the max bps
	 */
	private void setMaxBps(StreamParams direction, long maxBps) {
		synchronized (direction) {
			// accept the desired maxBps only if it's less or equal than
			// the maximum allowed (previously set via
			// setMaxBitsPerSecondThreshold)
			direction.maxBps = Math.min(this.maxBytesPerSecond, maxBps);
			direction.adjustedMaxBps = (long) (direction.maxBps * actualPayloadPercentage);
			direction.nextResetSubIntervals = 2;
			direction.reset();
		}
	}

	/**
	 * Time to next reset.
	 * 
	 * @param direction
	 *            the direction
	 * @return the long
	 */
	private long timeToNextReset(StreamParams direction) {
		synchronized (direction) {
			return direction.timeToNextReset();
		}
	}

	/**
	 * Reset counter if necessary.
	 * 
	 * @param direction
	 *            the direction
	 */
	private void resetCounterIfNecessary(StreamParams direction) {
		synchronized (direction) {
			if (direction.timeToNextReset() < 0) {
				direction.reset();
			}
		}
	}

	/**
	 * Gets the allowed bytes read.
	 * 
	 * @param stream
	 *            the stream
	 * @param bufferLength
	 *            the buffer length
	 * @return the allowed bytes read
	 */
	private int getAllowedBytesRead(ManagedInputStream stream, int bufferLength) {
		// TODO: no fairness implemented here, we need to add some logic to use
		// the stream param
		return getAllowedBytesUnFair(this.downStream, bufferLength);

	}

	/**
	 * Gets the allowed bytes write.
	 * 
	 * @param stream
	 *            the stream
	 * @param bufferLength
	 *            the buffer length
	 * @return the allowed bytes write
	 */
	private int getAllowedBytesWrite(ManagedOutputStream stream,
			int bufferLength) {
		// TODO: no fairness implemented here, we need to add some logic to use
		// the stream param
		return getAllowedBytesUnFair(this.upStream, bufferLength);
	}

	/**
	 * Gets the allowed bytes un fair.
	 * 
	 * @param direction
	 *            the direction
	 * @param bufferLength
	 *            the buffer length
	 * @return the allowed bytes un fair
	 */
	private int getAllowedBytesUnFair(StreamParams direction, int bufferLength) {
		// this is an unfair allocation of bytes/second because it gives as many
		// bytes as possible to anyone who ask for them
		int allowed = 0;
		synchronized (direction) {
			resetCounterIfNecessary(direction);
			// this stream desires to read up to bufferLength bytes
			if (bufferLength > direction.remainingBps) {
				// if there are less bytes allowed for this time period
				// use what is left
				allowed = (int) direction.remainingBps;
			} else {
				// if the total allowance grants it take them all
				allowed = bufferLength;
			}
			direction.remainingBps -= allowed;
		}
		return allowed;
	}

	/**
	 * Adjust bytes.
	 * 
	 * @param direction
	 *            the direction
	 * @param adjustBy
	 *            the adjust by
	 */
	private void adjustBytes(StreamParams direction, long adjustBy) {
		synchronized (direction) {
			direction.adjustBytes(adjustBy);
		}
	}

	/**
	 * Manage read.
	 * 
	 * @param stream
	 *            the stream
	 * @param b
	 *            the b
	 * @param off
	 *            the off
	 * @param len
	 *            the len
	 * @return the int
	 * @throws IOException
	 *             Signals that an I/O exception has occurred.
	 */
	private int manageRead(ManagedInputStream stream, byte[] b, int off, int len)
			throws IOException {
		if (!this.enabled) { // < no op, this stream manager is not throttling
								// at all
			return stream.doRead(b, off, len);
		} else {
			assert maxBytesPerSecond > 0;
			// Get how many bytes we are allowed to read
			int allowed = getAllowedBytesRead(stream, len);
			if (allowed > 0) {
				// Read a maximum of "allowed" bytes
				long start = System.currentTimeMillis();
				int bytesRead = stream.doRead(b, off, allowed);
				long end = System.currentTimeMillis();

				// If less than the "allowed" bytes were read, adjust how many
				// we can still read for this period of time
				adjustBytes(this.downStream, allowed - bytesRead);

				// apply latency if it's the case, we only apply it if the last
				// activity
				// happened more than the latency itself ago.
				long latency = (start - stream.getLastActivity()) > this.latency ? this.latency
						: 0;
				// sleep for the amount of time it should have taken to read the
				// amount of bytes read
				StreamManager.simulate(this.downStream.adjustedMaxBps, latency,
						bytesRead, end - start, stream.getRoundUp());
				return bytesRead;
			} else {
				long sleepTime = timeToNextReset(this.downStream);
				if (sleepTime > 0) {
					// if there aren't any remaining allowed bytes in this
					// period
					// let's sleep until the next batch is allocated
					// add also a bit of randomness (between 0 and 20
					// milliseconds)
					// so all the threads waiting won't _ideally_ wake up all at
					// the same time
					sleepTime += randomGenerator.nextInt(21);
					StreamManager.threadSleep(sleepTime);
				}
				return 0;
			}
		}
	}

	/**
	 * Manage write.
	 * 
	 * @param stream
	 *            the stream
	 * @param b
	 *            the b
	 * @param off
	 *            the off
	 * @param len
	 *            the len
	 * @throws IOException
	 *             Signals that an I/O exception has occurred.
	 */
	private void manageWrite(ManagedOutputStream stream, byte[] b, int off,
			int len) throws IOException {
		if (!this.enabled) { // < no op, this stream manager is not throttling
								// at all
			stream.doWrite(b, off, len);
		} else {
			assert maxBytesPerSecond > 0;

			int bytesWritten = 0;
			int allowed = 0;
			// we need a while loop since the write doesn't return a
			// "written bytes" count,
			// rather it expects that all of them are written
			// hence we loop here until all of them have been written
			long start = System.currentTimeMillis();
			while (bytesWritten < len) {
				allowed = getAllowedBytesWrite(stream, len);
				if (allowed > 0) {
					stream.doWrite(b, off, allowed);
					bytesWritten += allowed;
				} else {
					long sleepTime = timeToNextReset(this.upStream);
					if (sleepTime > 0) {
						// if there aren't any remaining allowed bytes in this
						// period
						// let's sleep until the next batch is allocated
						// add a bit of randomness (between 0 and 10
						// milliseconds)
						// so all the threads waiting won't _ideally_ wake up
						// all at the same time
						sleepTime += randomGenerator.nextInt(11);
						StreamManager.threadSleep(sleepTime);
					}
				}
			}
			long end = System.currentTimeMillis();

			// sleep for the amount of time it should have taken to write the
			// amount of bytes written
			long latency = (start - stream.getLastActivity()) > this.latency ? this.latency
					: 0;
			StreamManager.simulate(this.upStream.adjustedMaxBps, latency,
					bytesWritten, end - start, stream.getRoundUp());
		}
	}

	// this function emulates the time a stream should take to read/write a
	// @bytesPerSecond
	// it takes a parameter @timeTaken which is the time it actually took so we
	// can subtract it
	// to adjust the waiting time
	/**
	 * Simulate.
	 * 
	 * @param bytesPerSecond
	 *            the bytes per second
	 * @param latency
	 *            the latency
	 * @param bytes
	 *            the bytes
	 * @param timeTaken
	 *            the time taken
	 * @param roundUp
	 *            the round up
	 * @return the long
	 */
	private static long simulate(long bytesPerSecond, long latency, int bytes,
			long timeTaken, boolean roundUp) {
		if (bytesPerSecond <= 0) { // < defensive code
			return 0;
		}

		// workout how much we should have waited to read this amount of bytes
		double d = ((double) bytes / bytesPerSecond) * 1000;

		long expectedTime = (long) (roundUp ? Math.ceil(d) : Math.floor(d))
				+ latency;
		long diff = expectedTime - timeTaken; // < subtract the amount of time
												// ALREADY taken to get those
												// bytes

		if (diff > 0) {
			StreamManager.threadSleep(diff);
		}
		return diff;
	}

	/**
	 * Thread sleep.
	 * 
	 * @param sleepTime
	 *            the sleep time
	 */
	private static void threadSleep(long sleepTime) {
		try {
			Thread.sleep(sleepTime);
		} catch (InterruptedException e) {
			Thread.interrupted();
		}
	}

	// here are the declaration of the input/output streams
	// that this StreamManager can handle
	// they redirect any call to read/write to the StreamManager
	/**
	 * The Class ManagedOutputStream.
	 */
	private class ManagedOutputStream extends OutputStream {

		/** The stream. */
		OutputStream stream;

		/** The manager. */
		StreamManager manager;

		/** The last activity. */
		long lastActivity;

		/** The round up. */
		boolean roundUp;
		// just an helper buffer so we don't allocate it all the time when
		// calling void write(int b) which writes ONE byte!
		/** The one byte buff. */
		private byte[] oneByteBuff = new byte[1];

		/**
		 * Instantiates a new managed output stream.
		 * 
		 * @param stream
		 *            the stream
		 * @param manager
		 *            the manager
		 */
		public ManagedOutputStream(OutputStream stream, StreamManager manager) {
			assert manager != null;
			assert stream != null;
			this.stream = stream;
			this.manager = manager;
			lastActivity = System.currentTimeMillis() - 2 * latency;
		}

		/**
		 * Gets the wrapped stream.
		 * 
		 * @return the wrapped stream
		 */
		public OutputStream getWrappedStream() {
			return stream;
		}

		/**
		 * Gets the last activity.
		 * 
		 * @return the last activity
		 */
		public long getLastActivity() {
			return lastActivity;
		}

		/**
		 * Gets the round up.
		 * 
		 * @return the round up
		 */
		public boolean getRoundUp() {
			roundUp = !roundUp;
			return roundUp;
		}

		/*
		 * (non-Javadoc)
		 * 
		 * @see java.io.OutputStream#write(int)
		 */
		@Override
		public void write(int b) throws IOException {
			oneByteBuff[0] = (byte) b;
			write(oneByteBuff, 0, 1);
		}

		/*
		 * (non-Javadoc)
		 * 
		 * @see java.io.OutputStream#write(byte[])
		 */
		@Override
		public void write(byte[] b) throws IOException {
			write(b, 0, b.length);
		}

		/*
		 * (non-Javadoc)
		 * 
		 * @see java.io.OutputStream#write(byte[], int, int)
		 */
		@Override
		public void write(byte[] b, int off, int len) throws IOException {
			manager.manageWrite(this, b, off, len);
			lastActivity = System.currentTimeMillis();
		}

		/**
		 * Do write.
		 * 
		 * @param b
		 *            the b
		 * @param offset
		 *            the offset
		 * @param length
		 *            the length
		 * @throws IOException
		 *             Signals that an I/O exception has occurred.
		 */
		public void doWrite(byte[] b, int offset, int length)
				throws IOException {
			if (length <= 0) {
				// 0 bytes ??? :)
				return;
			}
			stream.write(b, offset, length);
		}

		/*
		 * (non-Javadoc)
		 * 
		 * @see java.io.OutputStream#flush()
		 */
		public void flush() throws IOException {
			stream.flush();
		}

		/*
		 * (non-Javadoc)
		 * 
		 * @see java.io.OutputStream#close()
		 */
		public void close() throws IOException {
			stream.close();
		}
	}

	/**
	 * The Class ManagedInputStream.
	 */
	private class ManagedInputStream extends InputStream {

		/** The stream. */
		InputStream stream;

		/** The manager. */
		StreamManager manager;

		/** The last activity. */
		long lastActivity;

		/** The round up. */
		boolean roundUp;
		// just an helper buffer so we don't allocate it all the time when
		// calling int read() which reads ONE byte!
		/** The one byte buff. */
		private byte[] oneByteBuff = new byte[1];

		/**
		 * Instantiates a new managed input stream.
		 * 
		 * @param stream
		 *            the stream
		 * @param manager
		 *            the manager
		 */
		public ManagedInputStream(InputStream stream, StreamManager manager) {
			assert manager != null;
			assert stream != null;
			this.stream = stream;
			this.manager = manager;
			lastActivity = System.currentTimeMillis() - 2 * latency;
		}

		/**
		 * Gets the wrapped stream.
		 * 
		 * @return the wrapped stream
		 */
		public InputStream getWrappedStream() {
			return stream;
		}

		/**
		 * Gets the last activity.
		 * 
		 * @return the last activity
		 */
		public long getLastActivity() {
			return lastActivity;
		}

		/**
		 * Gets the round up.
		 * 
		 * @return the round up
		 */
		public boolean getRoundUp() {
			roundUp = !roundUp;
			return roundUp;
		}

		/*
		 * (non-Javadoc)
		 * 
		 * @see java.io.InputStream#read()
		 */
		public int read() throws IOException {
			read(oneByteBuff, 0, 1);
			return oneByteBuff[0];
		}

		/*
		 * (non-Javadoc)
		 * 
		 * @see java.io.InputStream#read(byte[])
		 */
		public int read(byte[] b) throws IOException {
			int length = b.length;
			int bytesRead = read(b, 0, length);
			return bytesRead;
		}

		/*
		 * (non-Javadoc)
		 * 
		 * @see java.io.InputStream#read(byte[], int, int)
		 */
		public int read(byte[] b, int off, int len) throws IOException {
			int readBytes = manager.manageRead(this, b, off, len);
			if (readBytes > 0) {
				lastActivity = System.currentTimeMillis();
			}
			return readBytes;
		}

		/**
		 * Do read.
		 * 
		 * @param b
		 *            the b
		 * @param offset
		 *            the offset
		 * @param length
		 *            the length
		 * @return the int
		 * @throws IOException
		 *             Signals that an I/O exception has occurred.
		 */
		public int doRead(byte[] b, int offset, int length) throws IOException {
			if (length <= 0) {
				// 0 bytes ??? :)
				return 0;
			}
			return stream.read(b, offset, length);
		}

		/*
		 * (non-Javadoc)
		 * 
		 * @see java.io.InputStream#skip(long)
		 */
		public long skip(long n) throws IOException {
			return stream.skip(n);
		}

		/*
		 * (non-Javadoc)
		 * 
		 * @see java.io.InputStream#available()
		 */
		public int available() throws IOException {
			return stream.available();
		}

		/*
		 * (non-Javadoc)
		 * 
		 * @see java.io.InputStream#close()
		 */
		public void close() throws IOException {
			stream.close();
		}

		/*
		 * (non-Javadoc)
		 * 
		 * @see java.io.InputStream#mark(int)
		 */
		public void mark(int readLimit) {
			stream.mark(readLimit);
		}

		/*
		 * (non-Javadoc)
		 * 
		 * @see java.io.InputStream#reset()
		 */
		public void reset() throws IOException {
			stream.reset();
		}

		/*
		 * (non-Javadoc)
		 * 
		 * @see java.io.InputStream#markSupported()
		 */
		public boolean markSupported() {
			return stream.markSupported();
		}
	}
}
