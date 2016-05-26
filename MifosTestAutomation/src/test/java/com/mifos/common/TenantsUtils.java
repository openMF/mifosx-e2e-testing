package com.mifos.common;

public class TenantsUtils {

	private static ThreadLocal<String> threadLocal = new ThreadLocal<String>();

	public static void setLocalTenantUrl(String tenant) {
		threadLocal.set(tenant);
	}

	public static String getLocalTenantUrl() {
		return threadLocal.get();
	}
}
