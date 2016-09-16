// ========================================================================
// $Id: MultiException.java,v 1.10 2004/05/09 20:32:49 gregwilkins Exp $
// Copyright 1999-2004 Mort Bay Consulting Pty. Ltd.
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

import java.io.PrintStream;
import java.io.PrintWriter;
import java.util.List;

// TODO: Auto-generated Javadoc
/* ------------------------------------------------------------ */
/**
 * Wraps multiple exceptions.
 * 
 * Allows multiple exceptions to be thrown as a single exception.
 * 
 * @version $Id: MultiException.java,v 1.10 2004/05/09 20:32:49 gregwilkins Exp
 *          $
 * @author Greg Wilkins (gregw)
 */
public class MultiException extends Exception {

	/** The nested. */
	private Object nested;

	/* ------------------------------------------------------------ */
	/**
	 * Instantiates a new multi exception.
	 */
	public MultiException() {
		super("Multiple exceptions");
	}

	/* ------------------------------------------------------------ */
	/**
	 * Adds the.
	 * 
	 * @param e
	 *            the e
	 */
	public void add(Exception e) {
		if (e instanceof MultiException) {
			MultiException me = (MultiException) e;
			for (int i = 0; i < LazyList.size(me.nested); i++)
				nested = LazyList.add(nested, LazyList.get(me.nested, i));
		} else
			nested = LazyList.add(nested, e);
	}

	/* ------------------------------------------------------------ */
	/**
	 * Size.
	 * 
	 * @return the int
	 */
	public int size() {
		return LazyList.size(nested);
	}

	/* ------------------------------------------------------------ */
	/**
	 * Gets the exceptions.
	 * 
	 * @return the exceptions
	 */
	public List getExceptions() {
		return LazyList.getList(nested);
	}

	/* ------------------------------------------------------------ */
	/**
	 * Gets the exception.
	 * 
	 * @param i
	 *            the i
	 * @return the exception
	 */
	public Exception getException(int i) {
		return (Exception) LazyList.get(nested, i);
	}

	/* ------------------------------------------------------------ */
	/**
	 * Throw a multiexception. If this multi exception is empty then no action
	 * is taken. If it contains a single exception that is thrown, otherwise the
	 * this multi exception is thrown.
	 * 
	 * @throws Exception
	 *             the exception
	 */
	public void ifExceptionThrow() throws Exception {
		switch (LazyList.size(nested)) {
		case 0:
			break;
		case 1:
			throw (Exception) LazyList.get(nested, 0);
		default:
			throw this;
		}
	}

	/* ------------------------------------------------------------ */
	/**
	 * Throw a multiexception. If this multi exception is empty then no action
	 * is taken. If it contains a any exceptions then this multi exception is
	 * thrown.
	 * 
	 * @throws MultiException
	 *             the multi exception
	 */
	public void ifExceptionThrowMulti() throws MultiException {
		if (LazyList.size(nested) > 0)
			throw this;
	}

	/* ------------------------------------------------------------ */
	/*
	 * (non-Javadoc)
	 * 
	 * @see java.lang.Throwable#toString()
	 */
	public String toString() {
		if (LazyList.size(nested) > 0)
			return "org.browsermob.proxy.jetty.util.MultiException"
					+ LazyList.getList(nested);
		return "org.browsermob.proxy.jetty.util.MultiException[]";
	}

	/* ------------------------------------------------------------ */
	/*
	 * (non-Javadoc)
	 * 
	 * @see java.lang.Throwable#printStackTrace()
	 */
	public void printStackTrace() {
		super.printStackTrace();
		for (int i = 0; i < LazyList.size(nested); i++)
			((Throwable) LazyList.get(nested, i)).printStackTrace();
	}

	/*
	 * --------------------------------------------------------------------------
	 * -----
	 */
	/**
	 * Prints the stack trace.
	 * 
	 * @param out
	 *            the out
	 * @see java.lang.Throwable#printStackTrace(java.io.PrintStream)
	 */
	public void printStackTrace(PrintStream out) {
		super.printStackTrace(out);
		for (int i = 0; i < LazyList.size(nested); i++)
			((Throwable) LazyList.get(nested, i)).printStackTrace(out);
	}

	/*
	 * --------------------------------------------------------------------------
	 * -----
	 */
	/**
	 * Prints the stack trace.
	 * 
	 * @param out
	 *            the out
	 * @see java.lang.Throwable#printStackTrace(java.io.PrintWriter)
	 */
	public void printStackTrace(PrintWriter out) {
		super.printStackTrace(out);
		for (int i = 0; i < LazyList.size(nested); i++)
			((Throwable) LazyList.get(nested, i)).printStackTrace(out);
	}

}
