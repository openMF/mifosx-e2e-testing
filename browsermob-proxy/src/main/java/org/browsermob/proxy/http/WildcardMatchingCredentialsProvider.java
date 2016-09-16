/*
 * 
 */
package org.browsermob.proxy.http;

import org.apache.http.auth.AuthScope;
import org.apache.http.auth.Credentials;
import org.apache.http.client.CredentialsProvider;

import java.util.HashMap;
import java.util.Map;

// TODO: Auto-generated Javadoc
/**
 * The Class WildcardMatchingCredentialsProvider.
 */
public class WildcardMatchingCredentialsProvider implements CredentialsProvider {

	/** The cred map. */
	private final HashMap<AuthScope, Credentials> credMap = new HashMap<AuthScope, Credentials>();

	/*
	 * (non-Javadoc)
	 * 
	 * @see
	 * org.apache.http.client.CredentialsProvider#setCredentials(org.apache.
	 * http.auth.AuthScope, org.apache.http.auth.Credentials)
	 */
	@Override
	public synchronized void setCredentials(AuthScope authscope,
			Credentials credentials) {
		credMap.put(authscope, credentials);
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see
	 * org.apache.http.client.CredentialsProvider#getCredentials(org.apache.
	 * http.auth.AuthScope)
	 */
	@Override
	public synchronized Credentials getCredentials(AuthScope authscope) {
		for (Map.Entry<AuthScope, Credentials> entry : credMap.entrySet()) {
			if (entry.getKey().getHost() == null) {
				continue;
			}
			if (authscope.getHost().contains(entry.getKey().getHost())) {
				return entry.getValue();
			}
		}

		return null;
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see org.apache.http.client.CredentialsProvider#clear()
	 */
	@Override
	public synchronized void clear() {
		credMap.clear();
	}
}
