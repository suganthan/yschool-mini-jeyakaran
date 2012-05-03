package org.ymini.filters;

import java.io.IOException;
import java.util.Date;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;

/**
 * @author Jeyakaran
 * 
 */
public class NameFilter implements Filter {

	public void doFilter(ServletRequest req, ServletResponse res,
			FilterChain chain) throws IOException, ServletException {

		HttpServletRequest request = (HttpServletRequest) req;

		String name = request.getParameter("name");

		System.out.println("Filter Name :" + name);

		chain.doFilter(req, res);
	}

	public void init(FilterConfig config) throws ServletException {

		String nameParam = config.getInitParameter("name-parameter");

		System.out.println("Filter Parameter: " + nameParam);
	}

	public void destroy() {
		// add code to release any resource
	}
}