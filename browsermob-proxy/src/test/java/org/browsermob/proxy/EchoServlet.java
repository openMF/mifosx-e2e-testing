/*
 * 
 */
package org.browsermob.proxy;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.Enumeration;

// TODO: Auto-generated Javadoc
/**
 * The Class EchoServlet.
 */
public class EchoServlet extends HttpServlet {

	/** The Constant serialVersionUID. */
	private static final long serialVersionUID = 7003505988810214373L;

	/*
	 * (non-Javadoc)
	 * 
	 * @see
	 * javax.servlet.http.HttpServlet#service(javax.servlet.http.HttpServletRequest
	 * , javax.servlet.http.HttpServletResponse)
	 */
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		resp.setStatus(200);

		PrintWriter writer = resp.getWriter();

		writer.println("Method: " + req.getMethod());

		writer.println("Request Headers:");
		Enumeration<?> headerNames = req.getHeaderNames();
		while (headerNames.hasMoreElements()) {
			String hdr = (String) headerNames.nextElement();
			Enumeration<?> headers = req.getHeaders(hdr);
			while (headers.hasMoreElements()) {
				String val = (String) headers.nextElement();
				writer.println(hdr + ": " + val);
			}
		}

		writer.close();
	}
}
