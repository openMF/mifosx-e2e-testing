/*
 *
 */
package com.mifos.testing.framework.pages;

import com.mifos.testing.framework.data.TestDataManager;

// TODO: Auto-generated Javadoc
/**
 * Abstract implementation of {@link WebPage}. This class provides test-data
 * querying capability to sub-classes.
 */
public abstract class AbstractWebPage implements WebPage {
	/**
	 * Default constructor. Initialises {@link TestDataManager}.
	 *
	 * @see TestDataManager#getInstance()
	 */
	public AbstractWebPage() {
		TestDataManager.getInstance();
	}

	/**
	 * Returns test-data for this page, pertaining to the given set-name.
	 *
	 * @param <T>
	 *            Type parameter for the data to be returned
	 *
	 * @param setName
	 *            Name of test-data set for which data is to be returned
	 *
	 * @return Test data for this page, pertaining to the given set name
	 */
	public <T> T getTestData(String setName) {
		return TestDataManager.getInstance().<T> getTestDataForPage(
				this.getClass().getName(), setName);
	}
}