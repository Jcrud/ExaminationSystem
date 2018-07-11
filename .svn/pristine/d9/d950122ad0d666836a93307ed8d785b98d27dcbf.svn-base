package com.hxzy.web;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("frontEnd")
public class frontEnd_Loginout {
	@RequestMapping("logout")
	public String loginout(HttpServletRequest request) {
		HttpSession session = request.getSession();
		session.invalidate();
		return"redirect:/index.jsp";
	}
	
	
	
}
