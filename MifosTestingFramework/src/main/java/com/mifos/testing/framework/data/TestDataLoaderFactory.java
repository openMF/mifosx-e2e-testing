/*
 * 
 */
package com.mifos.testing.framework.data;

import java.util.HashMap;
import java.util.Map;

import com.mifos.testing.framework.data.loaders.ExcelDataLoader;
import com.mifos.testing.framework.data.loaders.PropertiesDataLoader;
import com.mifos.testing.framework.data.loaders.TestDataLoader;
import com.mifos.testing.framework.exceptions.TestDataInitialisationException;

// TODO: Auto-generated Javadoc
/**
 * Factory class for creating {@link TestDataLoader} instances.
 * 
 * @see PropertiesDataLoader
 */
final class TestDataLoaderFactory {

	/** Internal cache to avoid instantiating loader classes more than once. */
	private final Map<String, TestDataLoader<?>> loaderMap = new HashMap<>();

	/**
	 * Returns the {@link TestDataLoader} instance for the given loader-name. if
	 * the loader for the given name is not yet created, this method
	 * instantiates one and caches it for further use.
	 * 
	 * @param <T>
	 *            Type parameter for the test-data pertaining to the returned
	 *            loader
	 * 
	 * @param loaderName
	 *            Name for test-data loader
	 * 
	 * @return Returns a {@link TestDataLoader} instance for the given
	 *         loader-name
	 */
	@SuppressWarnings("unchecked")
	public synchronized <T> TestDataLoader<T> getOrCreateLoader(
			String loaderName) {
		TestDataLoader<T> loader = (TestDataLoader<T>) this.loaderMap
				.get(loaderName);

		if (loader == null) {
			switch (loaderName) {
			case "properties":
				loader = (TestDataLoader<T>) new PropertiesDataLoader();
				break;
			case "xls":
				loader = (TestDataLoader<T>) new ExcelDataLoader();
				break;
			default:
				// If we can't interpret the loader-name, it must be the
				// class-name of a custom loader.
				try {
					loader = (TestDataLoader<T>) Class.forName(loaderName)
							.newInstance();
				} catch (Exception e) {
					throw new TestDataInitialisationException(
							"Error in initialising TestDataLoader: "
									+ loaderName, e);
				}
				break;
			}

			this.loaderMap.put(loaderName, loader);
		}

		return loader;
	}
}