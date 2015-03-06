/*
 * 
 */
package com.mifos.testing.framework.data;

import java.io.File;
import java.net.URISyntaxException;
import java.util.HashMap;
import java.util.Map;

import com.mifos.testing.framework.data.loaders.TestDataLoader;
import com.mifos.testing.framework.exceptions.TestDataInitialisationException;

// TODO: Auto-generated Javadoc
/**
 * The Class TestDataConfig.
 * 
 * @param <T>
 *            the generic type
 */
public class TestDataConfig<T> {

	/** The test data loader factory. */
	private static TestDataLoaderFactory testDataLoaderFactory = new TestDataLoaderFactory();

	/** The Constant NO_ARGS. */
	private static final String[] NO_ARGS = {};

	/** The loader. */
	private final TestDataLoader<T> loader;

	/** The test data file. */
	private final File testDataFile;

	/** The args. */
	private final String[] args;

	/** The loaded. */
	private boolean loaded = false;

	/** The data map. */
	private Map<String, T> dataMap = new HashMap<>();

	/**
	 * Instantiates a new test data config.
	 * 
	 * @param metadata
	 *            the metadata
	 */
	public TestDataConfig(String metadata) {
		if (metadata == null) {
			throw new TestDataInitialisationException(
					"Meta-data must not be null");
		}

		String[] tokens = metadata.split(":");
		if (tokens.length < 2) {
			throw new TestDataInitialisationException("Invalid meta-data: "
					+ metadata);
		}

		if (tokens.length > 2) {
			this.args = new String[tokens.length - 2];
			System.arraycopy(tokens, 1, this.args, 0, this.args.length);
		} else {
			this.args = NO_ARGS;
		}

		this.loader = testDataLoaderFactory.getOrCreateLoader(tokens[0]);
		try {
			this.testDataFile = new File(this.getClass().getClassLoader()
					.getResource(tokens[tokens.length - 1]).toURI());
		} catch (URISyntaxException e) {
			throw new TestDataInitialisationException(
					"Error in loading test data file " + tokens[1]
							+ " from meta-data " + metadata, e);
		}
	}

	/**
	 * Gets the test data for set.
	 * 
	 * @param setName
	 *            the set name
	 * @return the test data for set
	 */
	public synchronized T getTestDataForSet(String setName) {
		if (!this.isLoaded()) {
			this.load();
		}
		return this.dataMap.get(setName);
	}

	/**
	 * Checks if is loaded.
	 * 
	 * @return true, if is loaded
	 */
	public synchronized boolean isLoaded() {
		return this.loaded;
	}

	/**
	 * Load.
	 */
	private void load() {
		this.dataMap = this.loader.load(this.testDataFile, this.args);
		this.loaded = true;
		return;
	}
}