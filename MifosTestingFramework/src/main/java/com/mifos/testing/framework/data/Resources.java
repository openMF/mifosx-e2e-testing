/*
 * 
 */
package com.mifos.testing.framework.data;

import java.io.File;
import java.io.FileReader;
import java.util.Properties;

// TODO: Auto-generated Javadoc
/**
 * The Class Resources.
 */
public class Resources {

	/** The Constant SYS_PROP_RES_FILE_PATH. */
	private static final String SYS_PROP_RES_FILE_PATH = "resources.file.path";

	/** The singleton instance. */
	private static Resources singletonInstance = new Resources();

	/** The props. */
	private Properties props = new Properties();

	/**
	 * Instantiates a new resources.
	 */
	private Resources() {
		final String resourceFilePath = System
				.getProperty(SYS_PROP_RES_FILE_PATH);
		if (resourceFilePath != null) {
			try {
				System.out.println(resourceFilePath);
				// this.props.load(new FileReader(new
				// File(this.getClass().getClassLoader().getResource(resourceFilePath).toURI())));
				this.props.load(new FileReader(new File(resourceFilePath)));
			} catch (Exception e) {
				throw new Error("Error in loading configuration file", e);
			}
		}
	}

	/**
	 * Gets the single instance of Resources.
	 * 
	 * @return single instance of Resources
	 */
	public static Resources getInstance() {
		return singletonInstance;
	}

	/**
	 * Gets the.
	 * 
	 * @param key
	 *            the key
	 * @return the string
	 */
	public String get(String key) {
		return this.props.getProperty(key);
	}
}