// ========================================================================
// $Id: ThreadPool.java,v 1.41 2005/08/13 00:01:28 gregwilkins Exp $
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

import org.apache.commons.logging.Log;
import org.browsermob.proxy.jetty.log.LogFactory;

import java.io.Serializable;

// TODO: Auto-generated Javadoc
/* ------------------------------------------------------------ */
/**
 * A pool of threads.
 * <p>
 * Avoids the expense of thread creation by pooling threads after their run
 * methods exit for reuse.
 * <p>
 * If the maximum pool size is reached, jobs wait for a free thread. Idle
 * threads timeout and terminate until the minimum number of threads are
 * running.
 * <p>
 * This implementation uses the run(Object) method to place a job on a queue,
 * which is read by the getJob(timeout) method. Derived implementations may
 * specialize getJob(timeout) to obtain jobs from other sources without queing
 * overheads.
 * 
 * @version $Id: ThreadPool.java,v 1.41 2005/08/13 00:01:28 gregwilkins Exp $
 * @author Juancarlo Aï¿½ez <juancarlo@modelistica.com>
 * @author Greg Wilkins <gregw@mortbay.com>
 */
public class ThreadPool implements LifeCycle, Serializable {

	/** The log. */
	static Log log = LogFactory.getLog(ThreadPool.class);

	/** The __pool. */
	static private int __pool = 0;

	/** The Constant __DAEMON. */
	public static final String __DAEMON = "org.browsermob.proxy.jetty.util.ThreadPool.daemon";

	/** The Constant __PRIORITY. */
	public static final String __PRIORITY = "org.browsermob.proxy.jetty.util.ThreadPool.priority";

	/* ------------------------------------------------------------------- */
	/** The _pool. */
	private Pool _pool;

	/** The _join. */
	private Object _join = "";

	/** The _started. */
	private transient boolean _started;

	/* ------------------------------------------------------------------- */
	/*
	 * Construct
	 */
	/**
	 * Instantiates a new thread pool.
	 */
	public ThreadPool() {
		String name = this.getClass().getName();
		int ld = name.lastIndexOf('.');
		if (ld >= 0)
			name = name.substring(ld + 1);
		synchronized (ThreadPool.class) {
			name += __pool++;
		}

		_pool = new Pool();
		_pool.setPoolClass(ThreadPool.PoolThread.class);
		setName(name);
	}

	/* ------------------------------------------------------------ */
	/**
	 * Gets the name.
	 * 
	 * @return The name of the ThreadPool.
	 */
	public String getName() {
		return _pool.getPoolName();
	}

	/* ------------------------------------------------------------ */
	/**
	 * Set the Pool name. All ThreadPool instances with the same Pool name will
	 * share the same Pool instance. Thus they will share the same max, min and
	 * available Threads. The field values of the first ThreadPool to call
	 * setPoolName with a specific name are used for the named Pool. Subsequent
	 * ThreadPools that join the name pool will loose their private values.
	 * 
	 * @param name
	 *            Name of the Pool instance this ThreadPool uses or null for an
	 *            anonymous private pool.
	 */
	public void setName(String name) {
		synchronized (Pool.class) {
			if (isStarted()) {
				if ((name == null && _pool.getPoolName() != null)
						|| (name != null && !name.equals(_pool.getPoolName())))
					throw new IllegalStateException("started");
				return;
			}

			if (name == null) {
				if (_pool.getPoolName() != null) {
					_pool = new Pool();
					_pool.setPoolName(getName());
				}
			} else if (!name.equals(getName())) {
				Pool pool = Pool.getPool(name);
				if (pool == null)
					_pool.setPoolName(name);
				else
					_pool = pool;
			}
		}
	}

	/* ------------------------------------------------------------ */
	/**
	 * Gets the pool name.
	 * 
	 * @return the pool name
	 * @deprecated use getName()
	 */
	public String getPoolName() {
		return getName();
	}

	/* ------------------------------------------------------------ */
	/**
	 * Sets the pool name.
	 * 
	 * @param name
	 *            the new pool name
	 * @deprecated use setName(String)
	 */
	public void setPoolName(String name) {
		setName(name);
	}

	/* ------------------------------------------------------------ */
	/**
	 * Delegated to the named or anonymous Pool.
	 * 
	 * @return true, if is daemon
	 */
	public boolean isDaemon() {
		return _pool.getAttribute(__DAEMON) != null;
	}

	/* ------------------------------------------------------------ */
	/**
	 * Delegated to the named or anonymous Pool.
	 * 
	 * @param daemon
	 *            the new daemon
	 */
	public void setDaemon(boolean daemon) {
		_pool.setAttribute(__DAEMON, daemon ? "true" : null);
	}

	/* ------------------------------------------------------------ */
	/**
	 * Is the pool running jobs.
	 * 
	 * @return True if start() has been called.
	 */
	public boolean isStarted() {
		return _started;
	}

	/* ------------------------------------------------------------ */
	/**
	 * Get the number of threads in the pool. Delegated to the named or
	 * anonymous Pool.
	 * 
	 * @return Number of threads
	 * @see #getIdleThreads
	 */
	public int getThreads() {
		return _pool.size();
	}

	/* ------------------------------------------------------------ */
	/**
	 * Get the number of idle threads in the pool. Delegated to the named or
	 * anonymous Pool.
	 * 
	 * @return Number of threads
	 * @see #getThreads
	 */
	public int getIdleThreads() {
		return _pool.available();
	}

	/* ------------------------------------------------------------ */
	/**
	 * Get the minimum number of threads. Delegated to the named or anonymous
	 * Pool.
	 * 
	 * @return minimum number of threads.
	 * @see #setMinThreads
	 */
	public int getMinThreads() {
		return _pool.getMinSize();
	}

	/* ------------------------------------------------------------ */
	/**
	 * Set the minimum number of threads. Delegated to the named or anonymous
	 * Pool.
	 * 
	 * @param minThreads
	 *            minimum number of threads
	 * @see #getMinThreads
	 */
	public void setMinThreads(int minThreads) {
		_pool.setMinSize(minThreads);
	}

	/* ------------------------------------------------------------ */
	/**
	 * Set the maximum number of threads. Delegated to the named or anonymous
	 * Pool.
	 * 
	 * @return maximum number of threads.
	 * @see #setMaxThreads
	 */
	public int getMaxThreads() {
		return _pool.getMaxSize();
	}

	/* ------------------------------------------------------------ */
	/**
	 * Set the maximum number of threads. Delegated to the named or anonymous
	 * Pool.
	 * 
	 * @param maxThreads
	 *            maximum number of threads.
	 * @see #getMaxThreads
	 */
	public void setMaxThreads(int maxThreads) {
		_pool.setMaxSize(maxThreads);
	}

	/* ------------------------------------------------------------ */
	/**
	 * Get the maximum thread idle time. Delegated to the named or anonymous
	 * Pool.
	 * 
	 * @return Max idle time in ms.
	 * @see #setMaxIdleTimeMs
	 */
	public int getMaxIdleTimeMs() {
		return _pool.getMaxIdleTimeMs();
	}

	/* ------------------------------------------------------------ */
	/**
	 * Set the maximum thread idle time. Threads that are idle for longer than
	 * this period may be stopped. Delegated to the named or anonymous Pool.
	 * 
	 * @param maxIdleTimeMs
	 *            Max idle time in ms.
	 * @see #getMaxIdleTimeMs
	 */
	public void setMaxIdleTimeMs(int maxIdleTimeMs) {
		_pool.setMaxIdleTimeMs(maxIdleTimeMs);
	}

	/* ------------------------------------------------------------ */
	/**
	 * Get the priority of the pool threads.
	 * 
	 * @return the priority of the pool threads.
	 */
	public int getThreadsPriority() {
		int priority = Thread.NORM_PRIORITY;
		Object o = _pool.getAttribute(__PRIORITY);
		if (o != null) {
			priority = ((Integer) o).intValue();
		}
		return priority;
	}

	/* ------------------------------------------------------------ */
	/**
	 * Set the priority of the pool threads.
	 * 
	 * @param priority
	 *            the new thread priority.
	 */
	public void setThreadsPriority(int priority) {
		_pool.setAttribute(__PRIORITY, new Integer(priority));
	}

	/* ------------------------------------------------------------ */
	/**
	 * Set Max Read Time.
	 * 
	 * @param ms
	 *            the new max stop time ms
	 * @deprecated maxIdleTime is used instead.
	 */
	public void setMaxStopTimeMs(int ms) {
		log.warn("setMaxStopTimeMs is deprecated. No longer required.");
	}

	/* ------------------------------------------------------------ */
	/*
	 * Start the ThreadPool. Construct the minimum number of threads.
	 */
	/*
	 * (non-Javadoc)
	 * 
	 * @see org.browsermob.proxy.jetty.util.LifeCycle#start()
	 */
	public void start() throws Exception {
		_started = true;
		_pool.start();
	}

	/* ------------------------------------------------------------ */
	/**
	 * Stop the ThreadPool. New jobs are no longer accepted,idle threads are
	 * interrupted and stopJob is called on active threads. The method then
	 * waits min(getMaxStopTimeMs(),getMaxIdleTimeMs()), for all jobs to stop,
	 * at which time killJob is called.
	 * 
	 * @throws InterruptedException
	 *             the interrupted exception
	 */
	public void stop() throws InterruptedException {
		_started = false;
		_pool.stop();
		synchronized (_join) {
			_join.notifyAll();
		}
	}

	/* ------------------------------------------------------------ */
	/**
	 * Join.
	 */
	public void join() {
		while (isStarted() && _pool != null) {
			synchronized (_join) {
				try {
					if (isStarted() && _pool != null)
						_join.wait(30000);
				} catch (Exception e) {
					LogSupport.ignore(log, e);
				}
			}
		}
	}

	/* ------------------------------------------------------------ */
	/**
	 * Shrink.
	 * 
	 * @throws InterruptedException
	 *             the interrupted exception
	 */
	public void shrink() throws InterruptedException {
		_pool.shrink();
	}

	/* ------------------------------------------------------------ */
	/**
	 * Run job. Give a job to the pool.
	 * 
	 * @param job
	 *            If the job is derived from Runnable, the run method is called,
	 *            otherwise it is passed as the argument to the handle method.
	 * @throws InterruptedException
	 *             the interrupted exception
	 */
	public void run(Object job) throws InterruptedException {
		if (job == null)
			return;
		try {
			PoolThread thread = (PoolThread) _pool.get(getMaxIdleTimeMs());
			if (thread != null)
				thread.run(this, job);
			else {
				log.warn("No thread for " + job);
				stopJob(null, job);
			}
		} catch (InterruptedException e) {
			throw e;
		} catch (Exception e) {
			log.warn(LogSupport.EXCEPTION, e);
		}
	}

	/* ------------------------------------------------------------ */
	/**
	 * Handle a job. Called by the allocated thread to handle a job. If the job
	 * is a Runnable, it's run method is called. Otherwise this method needs to
	 * be specialized by a derived class to provide specific handling.
	 * 
	 * @param job
	 *            The job to execute.
	 * @throws InterruptedException
	 *             the interrupted exception
	 */
	protected void handle(Object job) throws InterruptedException {
		if (job != null && job instanceof Runnable)
			((Runnable) job).run();
		else
			log.warn("Invalid job: " + job);
	}

	/* ------------------------------------------------------------ */
	/**
	 * Stop a Job. This method is called by the Pool if a job needs to be
	 * stopped. The default implementation does nothing and should be extended
	 * by a derived thread pool class if special action is required.
	 * 
	 * @param thread
	 *            The thread allocated to the job, or null if no thread
	 *            allocated.
	 * @param job
	 *            The job object passed to run.
	 */
	protected void stopJob(Thread thread, Object job) {
	}

	/* ------------------------------------------------------------ */
	/**
	 * Pool Thread class. The PoolThread allows the threads job to be retrieved
	 * and active status to be indicated.
	 */
	public static class PoolThread extends Thread implements Pool.PondLife {

		/** The _pool. */
		Pool _pool;

		/** The _job pool. */
		ThreadPool _jobPool;

		/** The _job. */
		Object _job;

		/** The _run pool. */
		ThreadPool _runPool;

		/** The _run. */
		Object _run;

		/** The _id. */
		int _id;

		/** The _name. */
		String _name;

		/* ------------------------------------------------------------ */
		/*
		 * (non-Javadoc)
		 * 
		 * @see
		 * org.browsermob.proxy.jetty.util.Pool.PondLife#enterPool(org.browsermob
		 * .proxy.jetty.util.Pool, int)
		 */
		public void enterPool(Pool pool, int id) {
			synchronized (this) {
				_pool = pool;
				_id = id;
				_name = _pool.getPoolName() + "-" + id;
				this.setName(_name);
				this.setDaemon(pool.getAttribute(__DAEMON) != null);
				Object o = pool.getAttribute(__PRIORITY);
				if (o != null) {
					this.setPriority(((Integer) o).intValue());
				}
				this.start();
			}
		}

		/* ------------------------------------------------------------ */
		/*
		 * (non-Javadoc)
		 * 
		 * @see org.browsermob.proxy.jetty.util.Pool.PondLife#getID()
		 */
		public int getID() {
			return _id;
		}

		/* ------------------------------------------------------------ */
		/*
		 * (non-Javadoc)
		 * 
		 * @see org.browsermob.proxy.jetty.util.Pool.PondLife#poolClosing()
		 */
		public void poolClosing() {
			synchronized (this) {
				_pool = null;
				if (_run == null)
					notify();
				else
					interrupt();
			}
		}

		/* ------------------------------------------------------------ */
		/*
		 * (non-Javadoc)
		 * 
		 * @see org.browsermob.proxy.jetty.util.Pool.PondLife#leavePool()
		 */
		public void leavePool() {
			synchronized (this) {
				_pool = null;
				if (_jobPool == null && _runPool == null)
					notify();
				if (_job != null && _jobPool != null) {
					_jobPool.stopJob(this, _job);
					_job = null;
					_jobPool = null;
				}

				if (_run != null && _runPool != null) {
					_runPool.stopJob(this, _run);
					_run = null;
					_runPool = null;
				}
			}
		}

		/* ------------------------------------------------------------ */
		/**
		 * Run.
		 * 
		 * @param pool
		 *            the pool
		 * @param job
		 *            the job
		 */
		public void run(ThreadPool pool, Object job) {
			synchronized (this) {
				_jobPool = pool;
				_job = job;
				notify();
			}
		}

		/* ------------------------------------------------------------ */
		/**
		 * ThreadPool run. Loop getting jobs and handling them until idle or
		 * stopped.
		 */
		public void run() {
			Object run = null;
			ThreadPool runPool = null;
			while (_pool != null && _pool.isStarted()) {
				try {
					synchronized (this) {
						// Wait for a job.
						if (run == null && _pool != null && _pool.isStarted()
								&& _job == null)
							wait(_pool.getMaxIdleTimeMs());
						if (_job != null) {
							run = _run = _job;
							_job = null;
							runPool = _runPool = _jobPool;
							_jobPool = null;
						}
					}

					// handle outside of sync
					if (run != null && runPool != null)
						runPool.handle(run);
					else if (run == null && _pool != null)
						_pool.shrink();
				} catch (InterruptedException e) {
					LogSupport.ignore(log, e);
				} finally {
					synchronized (this) {
						boolean got = run != null;
						run = _run = null;
						runPool = _runPool = null;
						try {
							if (got && _pool != null)
								_pool.put(this);
						} catch (InterruptedException e) {
							LogSupport.ignore(log, e);
						}
					}
				}
			}
		}

		/*
		 * (non-Javadoc)
		 * 
		 * @see java.lang.Thread#toString()
		 */
		public String toString() {
			return _name;
		}
	}
}
