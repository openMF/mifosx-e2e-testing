/*
 *
 */
package com.mifos.testing.framework.data;

import java.io.IOException;
import java.util.Enumeration;
import java.util.HashMap;
import java.util.Map;
import java.util.Properties;

import com.mifos.testing.framework.exceptions.TestDataInitialisationException;

// TODO: Auto-generated Javadoc
/**
 * This is a singleton class managing the loading and caching of test-data.
 * <p />
 * This class expects a system-property named
 * {@value #SYS_PROP_META_DATA_FILE_NAME} to point to a meta-data file, which is
 * loaded from classpath.
 * <p />
 * The meta-data file lists down test-data configuration for each Page class.
 * Each test-data configuration is represented by an instance of
 * {@link TestDataConfig}, and is used to cache test-data for the corresponding
 * page.
 */
public class TestDataManager {

	/** System-property which is required to be pointing to the meta-data file. */
	protected static final String SYS_PROP_META_DATA_FILE_NAME = "testing.framework.testdata.metadata";

	/** Singleton instance of this class (eagerly instantiated). */
	private static TestDataManager singletonInstance = new TestDataManager();

	/** Map of test-data configurations, identified by a key, such as Page name. */
	private Map<String, TestDataConfig<?>> metadataMap = new HashMap<>();

	/**
	 * Default constructor. Loads and validates meta-data.
	 * <p />
	 * It should be noted that no test-data files are validated or loaded at
	 * this time.
	 */
	private TestDataManager() {
		this.loadMetaData();
	}

	/**
	 * Returns the singleton instance of this class.
	 *
	 * @return Singleton instance of this class
	 */
	public static TestDataManager getInstance() {
		return singletonInstance;
	}

	/**
	 * This method fetches test meta-data file name from system property
	 * {@value #SYS_PROP_META_DATA_FILE_NAME}. If configured, this file is
	 * loaded from classpath.
	 * <p />
	 * This file is supposed to contain an entry per page class, having page
	 * class name as key and corresponding test-data file name as value.
	 *
	 * @throws TestDataInitialisationException
	 *             If meta-data file name is not configured, or the file is not
	 *             found/readable, or if there is any error in loading the file
	 *             / corresponding test data
	 */
	private void loadMetaData() throws TestDataInitialisationException {
		final String metaDataFileName = System
				.getProperty(SYS_PROP_META_DATA_FILE_NAME);
		if (metaDataFileName == null) {
			throw new TestDataInitialisationException(
					"System Property "
							+ SYS_PROP_META_DATA_FILE_NAME
							+ " should be configured to point to meta-data file name present in classpath");
		}

		try {
			Properties props = new Properties();
			props.load(this.getClass().getClassLoader()
					.getResourceAsStream(metaDataFileName));

			@SuppressWarnings("unchecked")
			Enumeration<String> en = (Enumeration<String>) props
					.propertyNames();
			while (en.hasMoreElements()) {
				String key = en.nextElement();
				this.metadataMap.put(key,
						new TestDataConfig<>(props.getProperty(key)));
			}
		} catch (IOException e) {
			throw new TestDataInitialisationException(
					"Error in loading meta-data file: " + metaDataFileName, e);
		}

		return;
	}

	/**
	 * Returns test-data for the specified page, pertaining to the given set
	 * name.
	 * <p />
	 * This method loads test-data for the specified page, if not yet loaded,
	 * and returns data belonging to the given set.
	 *
	 * @param <T>
	 *            Type parameter for the test-data to be returned
	 *
	 * @param pageName
	 *            Name of page for which test-data is to be returned
	 * @param setName
	 *            Name of set for which test-data is to be returned
	 *
	 * @return Test-data for the specified page, pertaining to the given set
	 *         name
	 */
	@SuppressWarnings("unchecked")
	public <T> T getTestDataForPage(String pageName, String setName) {
		if (!this.metadataMap.containsKey(pageName)) {
			throw new UnsupportedOperationException(
					"No meta-data configured for page: " + pageName);
		}
		return (T) this.metadataMap.get(pageName).getTestDataForSet(setName);
	}
}