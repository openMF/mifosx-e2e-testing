/*
 * 
 */
package org.browsermob.proxy.util;

import java.io.File;
import java.io.FileWriter;
import java.io.IOException;
import java.util.concurrent.locks.ReentrantLock;

// TODO: Auto-generated Javadoc
/**
 * The Class LockingChainingWriter.
 */
public class LockingChainingWriter extends ChainableWriter {

	/** The lock. */
	private ReentrantLock lock = new ReentrantLock();

	/** The file. */
	private File file;

	/**
	 * Instantiates a new locking chaining writer.
	 * 
	 * @param file
	 *            the file
	 * @throws IOException
	 *             Signals that an I/O exception has occurred.
	 */
	public LockingChainingWriter(File file) throws IOException {
		super(new FileWriter(file));
		this.file = file;
	}

	/**
	 * Lock.
	 */
	public void lock() {
		lock.lock();
	}

	/**
	 * Unlock.
	 */
	public void unlock() {
		lock.unlock();
	}

	/**
	 * Close safely.
	 * 
	 * @throws IOException
	 *             Signals that an I/O exception has occurred.
	 */
	public void closeSafely() throws IOException {
		try {
			lock();
			close();
		} finally {
			unlock();
		}
	}

	/**
	 * Delete.
	 */
	public void delete() {
		file.delete();
	}

	/**
	 * Gets the file.
	 * 
	 * @return the file
	 */
	public File getFile() {
		return file;
	}
}
