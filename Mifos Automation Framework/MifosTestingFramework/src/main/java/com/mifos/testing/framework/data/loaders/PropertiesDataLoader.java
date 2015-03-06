/*
 * 
 */
package com.mifos.testing.framework.data.loaders;

import java.io.File;
import java.io.FileReader;
import java.io.IOException;
import java.util.Enumeration;
import java.util.HashMap;
import java.util.Map;
import java.util.Properties;

import com.mifos.testing.framework.exceptions.TestDataLoadingException;

// TODO: Auto-generated Javadoc
/**
 * The Class PropertiesDataLoader.
 */
public class PropertiesDataLoader implements
		TestDataLoader<Map<String, String>> {

	/*
	 * (non-Javadoc)
	 * 
	 * @see
	 * com.mifos.testing.framework.data.loaders.TestDataLoader#load(java.io
	 * .File, java.lang.String[])
	 */
	@Override
	public Map<String, Map<String, String>> load(File testDataFile,
			String... args) throws TestDataLoadingException {
		Map<String, Map<String, String>> map;

		try {
			Properties props = new Properties();
			props.load(new FileReader(testDataFile));

			map = new HashMap<>();

			@SuppressWarnings("unchecked")
			Enumeration<String> en = (Enumeration<String>) props
					.propertyNames();
			while (en.hasMoreElements()) {
				final String key = en.nextElement();

				final int index = key.indexOf('.');
				if (index < 1 || index == key.length() - 1) {
					throw new TestDataLoadingException(
							"Invalid key. Could not parse set-name from key: "
									+ key);
				}

				final String setName = key.substring(0, index);
				Map<String, String> m = map.get(setName);
				if (m == null) {
					m = new HashMap<>();
					map.put(setName, m);
				}
				m.put(key.substring(index + 1), props.getProperty(key));
			}
		} catch (IOException e) {
			throw new TestDataLoadingException("Error in loading test-data: "
					+ testDataFile.getAbsolutePath(), e);
		}

		return map;
	}
}