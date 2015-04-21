// ========================================================================
// $Id: IO.java,v 1.13 2005/08/13 00:01:28 gregwilkins Exp $
// Copyright 1996-2004 Mort Bay Consulting Pty. Ltd.
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

// TODO: Auto-generated Javadoc
/* ======================================================================== */
/**
 * IO Utilities. Provides stream handling utilities in singleton Threadpool
 * implementation accessed by static members.
 */
public class IO extends ThreadPool {

	/** The log. */
	private static Log log = LogFactory.getLog(IO.class);

	/* ------------------------------------------------------------------- */
	/** The Constant CRLF. */
	public final static String CRLF = "\015\012";

	/* ------------------------------------------------------------------- */
	/** The Constant CRLF_BYTES. */
	public final static byte[] CRLF_BYTES = { (byte) '\015', (byte) '\012' };

	/* ------------------------------------------------------------------- */
	/** The buffer size. */
	public static int bufferSize = Integer.getInteger(
			"org.browsermob.proxy.jetty.util.IO.bufferSize", 8192).intValue();

	/* ------------------------------------------------------------------- */
	/**
	 * The Class Singleton.
	 */
	private static class Singleton {

		/** The Constant __instance. */
		static final IO __instance = new IO();
		static {
			try {
				__instance.start();
			} catch (Exception e) {
				log.fatal(e);
				System.exit(1);
			}
		}
	}

	/**
	 * Instance.
	 * 
	 * @return the io
	 */
	public static IO instance() {
		return Singleton.__instance;
	}

	/* ------------------------------------------------------------------- */
	/**
	 * The Class Job.
	 */
	static class Job {

		/** The in. */
		InputStream in;

		/** The out. */
		OutputStream out;

		/** The read. */
		Reader read;

		/** The write. */
		Writer write;

		/**
		 * Instantiates a new job.
		 * 
		 * @param in
		 *            the in
		 * @param out
		 *            the out
		 */
		Job(InputStream in, OutputStream out) {
			this.in = in;
			this.out = out;
			this.read = null;
			this.write = null;
		}

		/**
		 * Instantiates a new job.
		 * 
		 * @param read
		 *            the read
		 * @param write
		 *            the write
		 */
		Job(Reader read, Writer write) {
			this.in = null;
			this.out = null;
			this.read = read;
			this.write = write;
		}
	}

	/* ------------------------------------------------------------------- */
	/**
	 * Copy Stream in to Stream out until EOF or exception. in own thread
	 * 
	 * @param in
	 *            the in
	 * @param out
	 *            the out
	 */
	public static void copyThread(InputStream in, OutputStream out) {
		try {
			instance().run(new Job(in, out));
		} catch (InterruptedException e) {
			log.warn(LogSupport.EXCEPTION, e);
		}
	}

	/* ------------------------------------------------------------------- */
	/**
	 * Copy Stream in to Stream out until EOF or exception.
	 * 
	 * @param in
	 *            the in
	 * @param out
	 *            the out
	 * @throws IOException
	 *             Signals that an I/O exception has occurred.
	 */
	public static void copy(InputStream in, OutputStream out)
			throws IOException {
		copy(in, out, -1);
	}

	/* ------------------------------------------------------------------- */
	/**
	 * Copy Stream in to Stream out until EOF or exception in own thread.
	 * 
	 * @param in
	 *            the in
	 * @param out
	 *            the out
	 */
	public static void copyThread(Reader in, Writer out) {
		try {
			instance().run(new Job(in, out));
		} catch (InterruptedException e) {
			log.warn(LogSupport.EXCEPTION, e);
		}
	}

	/* ------------------------------------------------------------------- */
	/**
	 * Copy Reader to Writer out until EOF or exception.
	 * 
	 * @param in
	 *            the in
	 * @param out
	 *            the out
	 * @return TODO
	 * @throws IOException
	 *             Signals that an I/O exception has occurred.
	 */
	public static void copy(Reader in, Writer out) throws IOException {
		copy(in, out, -1);
	}

	/* ------------------------------------------------------------------- */
	/**
	 * Copy Stream in to Stream for byteCount bytes or until EOF or exception.
	 * 
	 * @param in
	 *            the in
	 * @param out
	 *            the out
	 * @param byteCount
	 *            the byte count
	 * @return Copied bytes count or -1 if no bytes were read *and* EOF was
	 *         reached
	 * @throws IOException
	 *             Signals that an I/O exception has occurred.
	 */
	public static void copy(InputStream in, OutputStream out, long byteCount)
			throws IOException {
		byte buffer[] = new byte[bufferSize];
		int len = bufferSize;

		if (byteCount >= 0) {
			while (byteCount > 0) {
				if (byteCount < bufferSize)
					len = in.read(buffer, 0, (int) byteCount);
				else
					len = in.read(buffer, 0, bufferSize);

				if (len == -1)
					break;

				byteCount -= len;
				out.write(buffer, 0, len);
			}
		} else {
			while (true) {
				len = in.read(buffer, 0, bufferSize);
				if (len < 0)
					break;
				out.write(buffer, 0, len);
			}
		}
	}

	/* ------------------------------------------------------------------- */
	/**
	 * Copy Reader to Writer for byteCount bytes or until EOF or exception.
	 * 
	 * @param in
	 *            the in
	 * @param out
	 *            the out
	 * @param byteCount
	 *            the byte count
	 * @throws IOException
	 *             Signals that an I/O exception has occurred.
	 */
	public static void copy(Reader in, Writer out, long byteCount)
			throws IOException {
		char buffer[] = new char[bufferSize];
		int len = bufferSize;

		if (byteCount >= 0) {
			while (byteCount > 0) {
				if (byteCount < bufferSize)
					len = in.read(buffer, 0, (int) byteCount);
				else
					len = in.read(buffer, 0, bufferSize);

				if (len == -1)
					break;

				byteCount -= len;
				out.write(buffer, 0, len);
			}
		} else {
			while (true) {
				len = in.read(buffer, 0, bufferSize);
				if (len == -1)
					break;
				out.write(buffer, 0, len);
			}
		}
	}

	/* ------------------------------------------------------------ */
	/**
	 * Read input stream to string.
	 * 
	 * @param in
	 *            the in
	 * @return the string
	 * @throws IOException
	 *             Signals that an I/O exception has occurred.
	 */
	public static String toString(InputStream in) throws IOException {
		ByteArrayOutputStream out = new ByteArrayOutputStream();
		copy(in, out);
		return new String(out.toByteArray());
	}

	/* ------------------------------------------------------------ */
	/**
	 * Delete File. This delete will recursively delete directories - BE
	 * CAREFULL
	 * 
	 * @param file
	 *            The file to be deleted.
	 * @return true, if successful
	 */
	public static boolean delete(File file) {
		if (!file.exists())
			return false;
		if (file.isDirectory()) {
			File[] files = file.listFiles();
			for (int i = 0; files != null && i < files.length; i++)
				delete(files[i]);
		}
		return file.delete();
	}

	/* ------------------------------------------------------------ */
	/**
	 * Run copy for copyThread().
	 * 
	 * @param o
	 *            the o
	 */
	public void handle(Object o) {
		Job job = (Job) o;
		try {
			if (job.in != null)
				copy(job.in, job.out, -1);
			else
				copy(job.read, job.write, -1);
		} catch (IOException e) {
			LogSupport.ignore(log, e);
			try {
				if (job.out != null)
					job.out.close();
				if (job.write != null)
					job.write.close();
			} catch (IOException e2) {
				LogSupport.ignore(log, e2);
			}
		}
	}

	/* ------------------------------------------------------------ */
	/**
	 * Gets the null stream.
	 * 
	 * @return An outputstream to nowhere
	 */
	public static OutputStream getNullStream() {
		return __nullStream;
	}

	/**
	 * closes an input stream, and logs exceptions.
	 * 
	 * @param is
	 *            the input stream to close
	 */
	public static void close(InputStream is) {
		try {
			if (is != null)
				is.close();
		} catch (IOException e) {
			LogSupport.ignore(log, e);
		}
	}

	/**
	 * closes an output stream, and logs exceptions.
	 * 
	 * @param os
	 *            the output stream to close
	 */
	public static void close(OutputStream os) {
		try {
			if (os != null)
				os.close();
		} catch (IOException e) {
			LogSupport.ignore(log, e);
		}
	}

	/* ------------------------------------------------------------ */
	/* ------------------------------------------------------------ */
	/**
	 * The Class NullOS.
	 */
	private static class NullOS extends OutputStream {

		/*
		 * (non-Javadoc)
		 * 
		 * @see java.io.OutputStream#close()
		 */
		public void close() {
		}

		/*
		 * (non-Javadoc)
		 * 
		 * @see java.io.OutputStream#flush()
		 */
		public void flush() {
		}

		/*
		 * (non-Javadoc)
		 * 
		 * @see java.io.OutputStream#write(byte[])
		 */
		public void write(byte[] b) {
		}

		/*
		 * (non-Javadoc)
		 * 
		 * @see java.io.OutputStream#write(byte[], int, int)
		 */
		public void write(byte[] b, int i, int l) {
		}

		/*
		 * (non-Javadoc)
		 * 
		 * @see java.io.OutputStream#write(int)
		 */
		public void write(int b) {
		}
	}

	/** The __null stream. */
	private static NullOS __nullStream = new NullOS();

	/* ------------------------------------------------------------ */
	/**
	 * Gets the null writer.
	 * 
	 * @return An writer to nowhere
	 */
	public static Writer getNullWriter() {
		return __nullWriter;
	}

	/* ------------------------------------------------------------ */
	/* ------------------------------------------------------------ */
	/**
	 * The Class NullWrite.
	 */
	private static class NullWrite extends Writer {

		/*
		 * (non-Javadoc)
		 * 
		 * @see java.io.Writer#close()
		 */
		public void close() {
		}

		/*
		 * (non-Javadoc)
		 * 
		 * @see java.io.Writer#flush()
		 */
		public void flush() {
		}

		/*
		 * (non-Javadoc)
		 * 
		 * @see java.io.Writer#write(char[])
		 */
		public void write(char[] b) {
		}

		/*
		 * (non-Javadoc)
		 * 
		 * @see java.io.Writer#write(char[], int, int)
		 */
		public void write(char[] b, int o, int l) {
		}

		/*
		 * (non-Javadoc)
		 * 
		 * @see java.io.Writer#write(int)
		 */
		public void write(int b) {
		}

		/*
		 * (non-Javadoc)
		 * 
		 * @see java.io.Writer#write(java.lang.String)
		 */
		public void write(String s) {
		}

		/*
		 * (non-Javadoc)
		 * 
		 * @see java.io.Writer#write(java.lang.String, int, int)
		 */
		public void write(String s, int o, int l) {
		}
	}

	/** The __null writer. */
	private static NullWrite __nullWriter = new NullWrite();
}
