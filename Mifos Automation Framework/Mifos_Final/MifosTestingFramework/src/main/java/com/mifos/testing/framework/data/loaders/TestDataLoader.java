/*
 * 
 */
package com.mifos.testing.framework.data.loaders;

import java.io.File;
import java.util.Map;

import com.mifos.testing.framework.exceptions.TestDataLoadingException;

// TODO: Auto-generated Javadoc
/**
 * Base interface for all test-data loader classes.
 * 
 * @param <T>
 *            Type parameter for the data to be loaded
 */
public interface TestDataLoader<T> {
	/**
	 * Loads test-data from the specified data file.
	 * 
	 * @param testDataFile
	 *            Test-data file to be loaded
	 * @param args
	 *            Custom arguments for the corresponding test data loader
	 * 
	 * @return Loaded test-data as a map, where test-data objects are identified
	 *         by set-names
	 * 
	 * @throws TestDataLoadingException
	 *             If there is any I/O error or parsing error in loading
	 *             test-data
	 */
	Map<String, T> load(File testDataFile, String... args)
			throws TestDataLoadingException;
}