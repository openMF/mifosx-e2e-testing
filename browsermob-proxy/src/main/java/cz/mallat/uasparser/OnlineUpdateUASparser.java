/*
 * 
 */
package cz.mallat.uasparser;

import cz.mallat.uasparser.fileparser.PHPFileParser;

import java.io.IOException;
import java.io.InputStream;
import java.net.URL;

// TODO: Auto-generated Javadoc
/**
 * The parser will download the definition file from the internet.
 * 
 * @author oli
 */
public class OnlineUpdateUASparser extends UASparser {

	/** The Constant DATA_RETRIVE_URL. */
	protected static final String DATA_RETRIVE_URL = "http://user-agent-string.info/rpc/get_data.php?key=free&format=ini";

	/** The Constant VERSION_CHECK_URL. */
	protected static final String VERSION_CHECK_URL = "http://user-agent-string.info/rpc/get_data.php?key=free&format=ini&ver=y";

	/** The update interval. */
	protected long updateInterval = 1000 * 60 * 60 * 24; // 1 day

	/** The last update check. */
	protected long lastUpdateCheck;

	/** The current version. */
	protected String currentVersion;

	/**
	 * Sets the update interval.
	 * 
	 * @param updateInterval
	 *            the new update interval
	 */
	public void setUpdateInterval(long updateInterval) {
		this.updateInterval = updateInterval;
	}

	/**
	 * Since we've online access to the data file, we check every day for an
	 * update.
	 * 
	 * @throws IOException
	 *             Signals that an I/O exception has occurred.
	 */
	@Override
	protected synchronized void checkDataMaps() throws IOException {
		if (lastUpdateCheck == 0
				|| lastUpdateCheck < System.currentTimeMillis()
						- updateInterval) {
			String versionOnServer = getVersionFromServer();
			if (currentVersion == null
					|| versionOnServer.compareTo(currentVersion) > 0) {
				loadDataFromInternet();
				currentVersion = versionOnServer;
			}
			lastUpdateCheck = System.currentTimeMillis();
		}
	}

	/**
	 * Loads the data file from user-agent-string.info
	 * 
	 * @throws IOException
	 *             Signals that an I/O exception has occurred.
	 */
	private void loadDataFromInternet() throws IOException {
		URL url = new URL(DATA_RETRIVE_URL);
		InputStream is = url.openStream();
		try {
			PHPFileParser fp = new PHPFileParser(is);
			createInternalDataStructre(fp.getSections());
		} finally {
			is.close();
		}
	}

	/**
	 * Gets the current version from user-agent-string.info
	 * 
	 * @return the version from server
	 * @throws IOException
	 *             Signals that an I/O exception has occurred.
	 */
	protected String getVersionFromServer() throws IOException {
		URL url = new URL(VERSION_CHECK_URL);
		InputStream is = url.openStream();
		try {
			byte[] buff = new byte[4048];
			int len = is.read(buff);
			return new String(buff, 0, len);
		} finally {
			is.close();
		}
	}

}
