/*
 * 
 */
package com.mifos.testing.framework.exceptions;

// TODO: Auto-generated Javadoc
/**
 * Exception class denoting a processing error in parsing test-data.
 */
public class TestDataLoadingException extends TestDataInitialisationException {

	/** The Constant serialVersionUID. */
	private static final long serialVersionUID = -5891979145642639266L;

	/**
	 * Instantiates a new test data loading exception.
	 */
	public TestDataLoadingException() {
		super();
	}

	/**
	 * Instantiates a new test data loading exception.
	 * 
	 * @param message
	 *            the message
	 */
	public TestDataLoadingException(String message) {
		super(message);
	}

	/**
	 * Instantiates a new test data loading exception.
	 * 
	 * @param cause
	 *            the cause
	 */
	public TestDataLoadingException(Throwable cause) {
		super(cause);
	}

	/**
	 * Instantiates a new test data loading exception.
	 * 
	 * @param message
	 *            the message
	 * @param cause
	 *            the cause
	 */
	public TestDataLoadingException(String message, Throwable cause) {
		super(message, cause);
	}
}