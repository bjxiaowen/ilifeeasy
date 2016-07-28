package com.ilifeeasy.web.interceptor;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.log4j.Logger;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

public class CookieHandlerInterceptor extends HandlerInterceptorAdapter {
	
	private static Logger log = Logger.getLogger(CookieHandlerInterceptor.class);  


	public void afterCompletion(HttpServletRequest request,HttpServletResponse response, Object handler, Exception ex)throws Exception {
		Cookie[] cookies = request.getCookies();
		if (cookies != null) {
			for (int i = 0; i < cookies.length; i++) {
				Cookie cookie = cookies[i];
				if (cookie.getName().equals("ssocookieid")) {
					log.info("你浏览器中的cookie是：************************************"+cookie.getValue());
					response.addCookie(cookie);
				}
			}
		} 
		log.info("afterCompletion_________________________");
	}
}
