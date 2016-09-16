// ========================================================================
// $Id: SingletonList.java,v 1.3 2004/05/09 20:33:04 gregwilkins Exp $
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

import java.util.AbstractList;
import java.util.Iterator;
import java.util.ListIterator;
import java.util.NoSuchElementException;

// TODO: Auto-generated Javadoc
/* ------------------------------------------------------------ */
/**
 * Singleton List. This simple efficient implementation of a List with a single
 * element is provided for JDK 1.2 JVMs, which do not provide the
 * Collections.singletonList method.
 * 
 * @version $Revision: 1.3 $
 * @author Greg Wilkins (gregw)
 */
public class SingletonList extends AbstractList {

	/** The o. */
	private Object o;

	/* ------------------------------------------------------------ */
	/**
	 * Instantiates a new singleton list.
	 * 
	 * @param o
	 *            the o
	 */
	private SingletonList(Object o) {
		this.o = o;
	}

	/* ------------------------------------------------------------ */
	/**
	 * New singleton list.
	 * 
	 * @param o
	 *            the o
	 * @return the singleton list
	 */
	public static SingletonList newSingletonList(Object o) {
		return new SingletonList(o);
	}

	/* ------------------------------------------------------------ */
	/*
	 * (non-Javadoc)
	 * 
	 * @see java.util.AbstractList#get(int)
	 */
	public Object get(int i) {
		if (i != 0)
			throw new IndexOutOfBoundsException("index " + i);
		return o;
	}

	/* ------------------------------------------------------------ */
	/*
	 * (non-Javadoc)
	 * 
	 * @see java.util.AbstractCollection#size()
	 */
	public int size() {
		return 1;
	}

	/* ------------------------------------------------------------ */
	/*
	 * (non-Javadoc)
	 * 
	 * @see java.util.AbstractList#listIterator()
	 */
	public ListIterator listIterator() {
		return new SIterator();
	}

	/* ------------------------------------------------------------ */
	/*
	 * (non-Javadoc)
	 * 
	 * @see java.util.AbstractList#listIterator(int)
	 */
	public ListIterator listIterator(int i) {
		return new SIterator(i);
	}

	/* ------------------------------------------------------------ */
	/*
	 * (non-Javadoc)
	 * 
	 * @see java.util.AbstractList#iterator()
	 */
	public Iterator iterator() {
		return new SIterator();
	}

	/* ------------------------------------------------------------ */
	/**
	 * The Class SIterator.
	 */
	private class SIterator implements ListIterator {

		/** The i. */
		int i;

		/**
		 * Instantiates a new s iterator.
		 */
		SIterator() {
			i = 0;
		}

		/**
		 * Instantiates a new s iterator.
		 * 
		 * @param i
		 *            the i
		 */
		SIterator(int i) {
			if (i < 0 || i > 1)
				throw new IndexOutOfBoundsException("index " + i);
			this.i = i;
		}

		/*
		 * (non-Javadoc)
		 * 
		 * @see java.util.ListIterator#add(java.lang.Object)
		 */
		public void add(Object o) {
			throw new UnsupportedOperationException("SingletonList.add()");
		}

		/*
		 * (non-Javadoc)
		 * 
		 * @see java.util.ListIterator#hasNext()
		 */
		public boolean hasNext() {
			return i == 0;
		}

		/*
		 * (non-Javadoc)
		 * 
		 * @see java.util.ListIterator#hasPrevious()
		 */
		public boolean hasPrevious() {
			return i == 1;
		}

		/*
		 * (non-Javadoc)
		 * 
		 * @see java.util.ListIterator#next()
		 */
		public Object next() {
			if (i != 0)
				throw new NoSuchElementException();
			i++;
			return o;
		}

		/*
		 * (non-Javadoc)
		 * 
		 * @see java.util.ListIterator#nextIndex()
		 */
		public int nextIndex() {
			return i;
		}

		/*
		 * (non-Javadoc)
		 * 
		 * @see java.util.ListIterator#previous()
		 */
		public Object previous() {
			if (i != 1)
				throw new NoSuchElementException();
			i--;
			return o;
		}

		/*
		 * (non-Javadoc)
		 * 
		 * @see java.util.ListIterator#previousIndex()
		 */
		public int previousIndex() {
			return i - 1;
		}

		/*
		 * (non-Javadoc)
		 * 
		 * @see java.util.ListIterator#remove()
		 */
		public void remove() {
			throw new UnsupportedOperationException("SingletonList.remove()");
		}

		/*
		 * (non-Javadoc)
		 * 
		 * @see java.util.ListIterator#set(java.lang.Object)
		 */
		public void set(Object o) {
			throw new UnsupportedOperationException("SingletonList.add()");
		}
	}
}
