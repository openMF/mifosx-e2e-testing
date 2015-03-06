/*
 * 
 */
package com.mifos.testing.framework.pages;

// TODO: Auto-generated Javadoc
/**
 * Base interface for Page classes representing bookmarkable web-pages. A
 * bookmarkable page is defined as a page having a fixed URL, which can be used
 * to open the page directly (without the need to go through any other pages
 * first).
 */
public interface BookmarkableWebPage extends WebPage {
	/**
	 * Returns the URL to open this page.
	 * 
	 * @return This page's URL
	 */
	String getUrl();

	/**
	 * Opens this page in the browser using {@link #getUrl()}. This method also
	 * uses {@link #isOpened()} to check whether the operation was successful.
	 * 
	 * @return <code>true</code> if the page was opened successfully,
	 *         <code>false</code> otherwise
	 */
	boolean open();
}