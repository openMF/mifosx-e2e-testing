/*
 * 
 */
package org.browsermob.proxy.util;

import org.apache.commons.logging.LogFactory;
import org.apache.tools.ant.util.FileUtils;
import org.browsermob.proxy.selenium.LauncherUtils;

import java.io.*;
import java.net.URI;
import java.net.URISyntaxException;
import java.net.URL;
import java.util.Enumeration;
import java.util.zip.ZipEntry;
import java.util.zip.ZipFile;

// TODO: Auto-generated Javadoc
/**
 * The Class ResourceExtractor.
 */
public class ResourceExtractor {

	/** The log. */
	static org.apache.commons.logging.Log log = LogFactory
			.getLog(ResourceExtractor.class);

	/** The Constant BUF_SIZE. */
	private static final int BUF_SIZE = 8192;

	/**
	 * Extract resource path.
	 * 
	 * @param resourcePath
	 *            the resource path
	 * @param dest
	 *            the dest
	 * @return the file
	 * @throws IOException
	 *             Signals that an I/O exception has occurred.
	 */
	public static File extractResourcePath(String resourcePath, File dest)
			throws IOException {
		return extractResourcePath(ResourceExtractor.class, resourcePath, dest);
	}

	/**
	 * Extract resource path.
	 * 
	 * @param cl
	 *            the cl
	 * @param resourcePath
	 *            the resource path
	 * @param dest
	 *            the dest
	 * @return the file
	 * @throws IOException
	 *             Signals that an I/O exception has occurred.
	 */
	public static File extractResourcePath(Class cl, String resourcePath,
			File dest) throws IOException {
		boolean alwaysExtract = true;
		URL url = cl.getResource(resourcePath);
		if (url == null) {
			throw new IllegalArgumentException("Resource not found: "
					+ resourcePath);
		}
		if ("jar".equalsIgnoreCase(url.getProtocol())) {
			File jarFile = getJarFileFromUrl(url);
			extractResourcePathFromJar(cl, jarFile, resourcePath, dest);
		} else {
			try {
				File resourceFile = new File(new URI(url.toExternalForm()));
				if (!alwaysExtract) {
					return resourceFile;
				}
				if (resourceFile.isDirectory()) {
					LauncherUtils.copyDirectory(resourceFile, dest);
				} else {
					FileUtils.getFileUtils().copyFile(resourceFile, dest);
				}
			} catch (URISyntaxException e) {
				throw new RuntimeException("Couldn't convert URL to File:"
						+ url, e);
			}
		}
		return dest;
	}

	/**
	 * Extract resource path from jar.
	 * 
	 * @param cl
	 *            the cl
	 * @param jarFile
	 *            the jar file
	 * @param resourcePath
	 *            the resource path
	 * @param dest
	 *            the dest
	 * @throws IOException
	 *             Signals that an I/O exception has occurred.
	 */
	private static void extractResourcePathFromJar(Class cl, File jarFile,
			String resourcePath, File dest) throws IOException {
		ZipFile z = new ZipFile(jarFile, ZipFile.OPEN_READ);
		String zipStyleResourcePath = resourcePath.substring(1) + "/";
		ZipEntry ze = z.getEntry(zipStyleResourcePath);
		log.debug("Extracting " + resourcePath + " to "
				+ dest.getAbsolutePath());
		if (ze != null) {
			// DGF If it's a directory, then we need to look at all the entries
			for (Enumeration entries = z.entries(); entries.hasMoreElements();) {
				ze = (ZipEntry) entries.nextElement();
				if (ze.getName().startsWith(zipStyleResourcePath)) {
					String relativePath = ze.getName().substring(
							zipStyleResourcePath.length());
					File destFile = new File(dest, relativePath);
					if (ze.isDirectory()) {
						destFile.mkdirs();
					} else {
						FileOutputStream fos = new FileOutputStream(destFile);
						copyStream(z.getInputStream(ze), fos);
					}
				}
			}
		} else {
			FileOutputStream fos = new FileOutputStream(dest);
			copyStream(LauncherUtils.getSeleniumResourceAsStream(resourcePath),
					fos);

		}
	}

	/**
	 * Gets the jar file from url.
	 * 
	 * @param url
	 *            the url
	 * @return the jar file from url
	 */
	private static File getJarFileFromUrl(URL url) {
		if (!"jar".equalsIgnoreCase(url.getProtocol()))
			throw new IllegalArgumentException("This is not a Jar URL:"
					+ url.toString());
		String resourceFilePath = url.getFile();
		int index = resourceFilePath.indexOf("!");
		if (index == -1) {
			throw new RuntimeException("Bug! " + url.toExternalForm()
					+ " does not have a '!'");
		}
		String jarFileURI = resourceFilePath.substring(0, index).replace(" ",
				"%20");
		try {
			File jarFile = new File(new URI(jarFileURI));
			return jarFile;
		} catch (URISyntaxException e) {
			throw new RuntimeException("Bug! URI failed to parse: "
					+ jarFileURI, e);
		}

	}

	/**
	 * Copy stream.
	 * 
	 * @param in
	 *            the in
	 * @param out
	 *            the out
	 * @throws IOException
	 *             Signals that an I/O exception has occurred.
	 */
	private static void copyStream(InputStream in, OutputStream out)
			throws IOException {
		try {

			byte[] buffer = new byte[BUF_SIZE];
			int count = 0;
			do {
				out.write(buffer, 0, count);
				count = in.read(buffer, 0, buffer.length);
			} while (count != -1);
		} finally {
			if (out != null) {
				try {
					out.close();
				} catch (IOException e) {
				}
			}
			if (in != null) {
				try {
					in.close();
				} catch (IOException e) {
				}
			}
		}

	}
}
