// ========================================================================
// $Id: RolloverFileOutputStream.java,v 1.14 2005/08/13 00:01:28 gregwilkins Exp $
// Copyright 1997-2004 Mort Bay Consulting Pty. Ltd.
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

import org.apache.commons.logging.Log;
import org.browsermob.proxy.jetty.log.LogFactory;

import java.io.*;
import java.lang.ref.WeakReference;
import java.text.SimpleDateFormat;
import java.util.*;

// TODO: Auto-generated Javadoc
/* ------------------------------------------------------------ */
/**
 * A File OutputStream that rolls overs. If the passed filename contains the
 * string "yyyy_mm_dd" on daily intervals.
 * 
 * @version $Id: RolloverFileOutputStream.java,v 1.14 2005/08/13 00:01:28
 *          gregwilkins Exp $
 * @author Greg Wilkins (gregw)
 */
public class RolloverFileOutputStream extends FilterOutputStream {

	/** The log. */
	static Log log = LogFactory.getLog(RolloverFileOutputStream.class);

	/** The __rollover. */
	static Rollover __rollover;

	/** The Constant YYYY_MM_DD. */
	final static String YYYY_MM_DD = "yyyy_mm_dd";

	/** The Constant __rollovers. */
	final static ArrayList __rollovers = new ArrayList();

	/** The _file backup format. */
	private SimpleDateFormat _fileBackupFormat = new SimpleDateFormat(
			System.getProperty("ROLLOVERFILE_BACKUP_FORMAT", "HHmmssSSS"));

	/** The _file date format. */
	private SimpleDateFormat _fileDateFormat = new SimpleDateFormat(
			System.getProperty("ROLLOVERFILE_DATE_FORMAT", "yyyy_MM_dd"));

	/** The _filename. */
	private String _filename;

	/** The _file. */
	private File _file;

	/** The _append. */
	private boolean _append;

	/** The _retain days. */
	private int _retainDays;

	/** The _ref. */
	private WeakReference _ref;

	/* ------------------------------------------------------------ */
	/**
	 * Instantiates a new rollover file output stream.
	 * 
	 * @param filename
	 *            the filename
	 * @throws IOException
	 *             Signals that an I/O exception has occurred.
	 */
	public RolloverFileOutputStream(String filename) throws IOException {
		this(filename, true, Integer.getInteger("ROLLOVERFILE_RETAIN_DAYS", 31)
				.intValue());
	}

	/* ------------------------------------------------------------ */
	/**
	 * Instantiates a new rollover file output stream.
	 * 
	 * @param filename
	 *            the filename
	 * @param append
	 *            the append
	 * @throws IOException
	 *             Signals that an I/O exception has occurred.
	 */
	public RolloverFileOutputStream(String filename, boolean append)
			throws IOException {
		this(filename, append, Integer.getInteger("ROLLOVERFILE_RETAIN_DAYS",
				31).intValue());
	}

	/* ------------------------------------------------------------ */
	/**
	 * Instantiates a new rollover file output stream.
	 * 
	 * @param filename
	 *            the filename
	 * @param append
	 *            the append
	 * @param retainDays
	 *            the retain days
	 * @throws IOException
	 *             Signals that an I/O exception has occurred.
	 */
	public RolloverFileOutputStream(String filename, boolean append,
			int retainDays) throws IOException {
		super(null);

		if (filename != null) {
			filename = filename.trim();
			if (filename.length() == 0)
				filename = null;
		}
		if (filename == null)
			throw new IllegalArgumentException("Invalid filename");

		_filename = filename;
		_append = append;
		_retainDays = retainDays;
		_ref = new WeakReference(this);
		setFile();

		synchronized (__rollovers) {
			if (__rollover == null) {
				__rollover = new Rollover();
				__rollover.start();
			}
			__rollovers.add(_ref);
		}
	}

	/* ------------------------------------------------------------ */
	/**
	 * Gets the filename.
	 * 
	 * @return the filename
	 */
	public String getFilename() {
		return _filename;
	}

	/* ------------------------------------------------------------ */
	/**
	 * Gets the dated filename.
	 * 
	 * @return the dated filename
	 */
	public String getDatedFilename() {
		if (_file == null)
			return null;
		return _file.toString();
	}

	/* ------------------------------------------------------------ */
	/**
	 * Gets the retain days.
	 * 
	 * @return the retain days
	 */
	public int getRetainDays() {
		return _retainDays;
	}

	/* ------------------------------------------------------------ */
	/**
	 * Sets the file.
	 * 
	 * @throws IOException
	 *             Signals that an I/O exception has occurred.
	 */
	private synchronized void setFile() throws IOException {
		// Check directory
		File file = new File(_filename);
		_filename = file.getCanonicalPath();
		file = new File(_filename);
		File dir = new File(file.getParent());
		if (!dir.isDirectory() || !dir.canWrite())
			throw new IOException("Cannot write log directory " + dir);

		Date now = new Date();

		// Is this a rollover file?
		String filename = file.getName();
		int i = filename.toLowerCase().indexOf(YYYY_MM_DD);
		if (i >= 0) {
			file = new File(dir, filename.substring(0, i)
					+ _fileDateFormat.format(now)
					+ filename.substring(i + YYYY_MM_DD.length()));
		}

		if (file.exists() && !file.canWrite())
			throw new IOException("Cannot write log file " + file);

		// Do we need to change the output stream?
		if (out == null || !file.equals(_file)) {
			// Yep
			_file = file;
			if (!_append && file.exists())
				file.renameTo(new File(file.toString() + "."
						+ _fileBackupFormat.format(now)));
			OutputStream oldOut = out;
			out = new FileOutputStream(file.toString(), _append);
			if (oldOut != null)
				oldOut.close();
			if (log.isDebugEnabled())
				log.debug("Opened " + _file);
		}
	}

	/* ------------------------------------------------------------ */
	/**
	 * Removes the old files.
	 */
	private void removeOldFiles() {
		if (_retainDays > 0) {
			Calendar retainDate = Calendar.getInstance();
			retainDate.add(Calendar.DATE, -_retainDays);
			int borderYear = retainDate.get(java.util.Calendar.YEAR);
			int borderMonth = retainDate.get(java.util.Calendar.MONTH) + 1;
			int borderDay = retainDate.get(java.util.Calendar.DAY_OF_MONTH);

			File file = new File(_filename);
			File dir = new File(file.getParent());
			String fn = file.getName();
			int s = fn.toLowerCase().indexOf(YYYY_MM_DD);
			if (s < 0)
				return;
			String prefix = fn.substring(0, s);
			String suffix = fn.substring(s + YYYY_MM_DD.length());

			String[] logList = dir.list();
			for (int i = 0; i < logList.length; i++) {
				fn = logList[i];
				if (fn.startsWith(prefix)
						&& fn.indexOf(suffix, prefix.length()) >= 0) {
					try {
						StringTokenizer st = new StringTokenizer(fn.substring(
								prefix.length(),
								prefix.length() + YYYY_MM_DD.length()), "_.");
						int nYear = Integer.parseInt(st.nextToken());
						int nMonth = Integer.parseInt(st.nextToken());
						int nDay = Integer.parseInt(st.nextToken());

						if (nYear < borderYear
								|| (nYear == borderYear && nMonth < borderMonth)
								|| (nYear == borderYear
										&& nMonth == borderMonth && nDay <= borderDay)) {
							log.info("Log age " + fn);
							new File(dir, fn).delete();
						}
					} catch (Exception e) {
						if (log.isDebugEnabled())
							e.printStackTrace();
					}
				}
			}
		}
	}

	/* ------------------------------------------------------------ */
	/*
	 * (non-Javadoc)
	 * 
	 * @see java.io.FilterOutputStream#write(byte[])
	 */
	public void write(byte[] buf) throws IOException {
		out.write(buf);
	}

	/* ------------------------------------------------------------ */
	/*
	 * (non-Javadoc)
	 * 
	 * @see java.io.FilterOutputStream#write(byte[], int, int)
	 */
	public void write(byte[] buf, int off, int len) throws IOException {
		out.write(buf, off, len);
	}

	/* ------------------------------------------------------------ */
	/*
	 * (non-Javadoc)
	 * 
	 * @see java.io.FilterOutputStream#close()
	 */
	public void close() throws IOException {
		synchronized (__rollovers) {
			__rollovers.remove(_ref);
			_ref = null;
			try {
				super.close();
			} finally {
				out = null;
				_file = null;
			}

			// this will kill the thread when the last stream is removed.
			if (__rollovers.size() == 0) {
				__rollover.timeToStop();
				__rollover.interrupt();
				__rollover = null;
			}
		}
	}

	/* ------------------------------------------------------------ */
	/* ------------------------------------------------------------ */
	/* ------------------------------------------------------------ */
	/**
	 * The Class Rollover.
	 */
	private class Rollover extends Thread {

		/** The time to stop. */
		private boolean timeToStop = false;

		/**
		 * Instantiates a new rollover.
		 */
		Rollover() {
			setName("Rollover");
			setDaemon(true);
		}

		/**
		 * Time to stop.
		 */
		synchronized void timeToStop() {
			timeToStop = true;
		}

		/*
		 * (non-Javadoc)
		 * 
		 * @see java.lang.Thread#run()
		 */
		public void run() {
			while (!timeToStop) {
				try {
					// Sleep until midnight
					Calendar now = Calendar.getInstance();
					GregorianCalendar midnight = new GregorianCalendar(
							now.get(Calendar.YEAR), now.get(Calendar.MONTH),
							now.get(Calendar.DAY_OF_MONTH), 23, 0);
					midnight.add(Calendar.HOUR, 1);
					long sleeptime = midnight.getTime().getTime()
							- now.getTime().getTime();
					if (log.isDebugEnabled())
						log.debug("Rollover sleep until " + midnight.getTime());
					Thread.sleep(sleeptime);
				} catch (InterruptedException e) {
					if (!timeToStop)
						e.printStackTrace();
				}

				synchronized (__rollovers) {
					ListIterator iter = __rollovers.listIterator();
					while (iter.hasNext()) {
						WeakReference ref = (WeakReference) iter.next();
						RolloverFileOutputStream rfos = (RolloverFileOutputStream) ref
								.get();

						if (rfos == null)
							iter.remove();
						else {
							try {
								rfos.setFile();
								rfos.removeOldFiles();
							} catch (IOException e) {
								if (!timeToStop)
									e.printStackTrace();
							}
						}
					}
				}
			}
		}
	}
}
