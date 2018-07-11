package com.hxzy.web.interceptor;

import java.util.Properties;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.plugin.Interceptor;
import org.apache.ibatis.plugin.Invocation;
import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

import com.hxzy.pojo.TbStudent;

public class loginInterceptor implements HandlerInterceptor{

	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
		
		String requestURI = request.getRequestURI();
		if(requestURI.contains("login")||requestURI.contains("seekPwd")||requestURI.contains("manage")) {
			/*System.out.println("login通行");*/
			return true;
		}else {
			HttpSession session = request.getSession();
			 TbStudent tbStudent = (TbStudent) session.getAttribute("tbStudent");
			if(tbStudent!=null) {
			/*	System.out.println("name通行");*/
				return true;
			}else {
				/*System.out.println("转发");*/
				response.sendRedirect(request.getContextPath()+"/index.jsp");
				return false;
			}
		
		
		}
		
		
		
	}

	@Override
	public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler,
			ModelAndView modelAndView) throws Exception {
		
		
	}

	@Override
	public void afterCompletion(HttpServletRequest request, HttpServletResponse response, Object handler, Exception ex)
			throws Exception {
		
		
	}


}
