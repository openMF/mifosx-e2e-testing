package com.mifos.common;

public class TenantsUtils {

	static String[] tenants = {"default", "default1", "default2", "default3", "default4", "default5"} ;
	private static int index = 0 ;
	
	private static ThreadLocal<String> threadLocal = new ThreadLocal<String>() ;
	public static String getTenant() {
		 return tenants[index++] ;
	}
	
	public static void setLocalTenant(String tenant) {
		threadLocal.set(tenant);
	}
	
	public static String getLocalTenant() {
		return threadLocal.get() ;
	}
}
