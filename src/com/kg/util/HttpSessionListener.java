package com.kg.util;

import java.util.concurrent.ConcurrentHashMap;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpSession;
import javax.servlet.http.HttpSessionBindingEvent;

import org.springframework.stereotype.Component;

@Component
public class HttpSessionListener implements javax.servlet.http.HttpSessionAttributeListener {
	public static ConcurrentHashMap<HttpSession, String> sessionMap=new ConcurrentHashMap<>();
	ServletContext servletContext;
	
	
	@Override
	public void attributeAdded(HttpSessionBindingEvent event) {
		HttpSession session=event.getSession();
		String attributeName=event.getName();
		Object attributeValue=event.getValue();
		servletContext=session.getServletContext();
	}
	@Override
	public void attributeRemoved(HttpSessionBindingEvent event) {
		
	}
	@Override
	public void attributeReplaced(HttpSessionBindingEvent event) {
		
	}
	
	

}
