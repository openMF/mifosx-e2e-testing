/*
 * 
 */
package com.mifos.testing.framework.exceptions;

// TODO: Auto-generated Javadoc
/**
 * Exception class denoting a general runtime-exception in loading test-data.
 */
public class TestDataInitialisationException extends RuntimeException {

	/** The Constant serialVersionUID. */
	private static final long serialVersionUID = 8541475312866687815L;

	/**
	 * Instantiates a new test data initialisation exception.
	 */
	public TestDataInitialisationException() {
		super();
	}

	/**
	 * Instantiates a new test data initialisation exception.
	 * 
	 * @param message
	 *            the message
	 */
	public TestDataInitialisationException(String message) {
		super(message);
	}

	/**
	 * Instantiates a new test data initialisation exception.
	 * 
	 * @param cause
	 *            the cause
	 */
	public TestDataInitialisationException(Throwable cause) {
		super(cause);
	}

	/**
	 * Instantiates a new test data initialisation exception.
	 * 
	 * @param message
	 *            the message
	 * @param cause
	 *            the cause
	 */
	public TestDataInitialisationException(String message, Throwable cause) {
		super(message, cause);
	}
}