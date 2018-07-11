package com.hxzy.web;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.hxzy.pojo.TbStudent;
import com.hxzy.service.front_modifyService;
import com.hxzy.util.sendsms;

@Controller
@RequestMapping("/frontEnd")
public class frontEnd_modify {
	@Autowired
	private front_modifyService service;
	@RequestMapping("/modify")
	public String frontEndModify(String oldphone,String oldpwd,TbStudent tbStudent,Model model,HttpServletRequest request ) {
		HttpSession session = request.getSession();
		String id = tbStudent.getId();
		 if("".equals(tbStudent.getPwd())) {
			 tbStudent.setPwd(null);
		 }
		 if("".equals(tbStudent.getPhone())) {
			 tbStudent.setPhone(null);
		 }
			service.updatePassword(tbStudent);
			
			 TbStudent tbStudent3 = service.selectById(id);
			 session.setAttribute("tbStudent",tbStudent3);
			return "/studentM_ok";
	}
	@ResponseBody
	@RequestMapping("/verification")
	public boolean verification(String telephone,Model model,HttpServletRequest request) {
		HttpSession session = request.getSession();
		int securityCode =sendsms.message(telephone);
		session.setAttribute("securityCode", securityCode);
		if(securityCode==-1) {
			return false;
		}else {
			return true;
		}
		
	}
	@ResponseBody
	@RequestMapping("/pwdChecked")
	public boolean pwdChecked(String pwd,HttpServletRequest request) {
		HttpSession session = request.getSession();
		 TbStudent tbStudent = (TbStudent) session.getAttribute("tbStudent");
		 String pwd2 = tbStudent.getPwd();
		if(pwd2.equals(pwd)) {
			return true;
		}else{
			return false;
		}
	}
	@ResponseBody
	@RequestMapping("/checkedSecurityCode")
	public boolean checkedSecurityCode(int securityCode,HttpServletRequest request) {
		HttpSession session = request.getSession();
		  int attribute = (int) session.getAttribute("securityCode");
		if(attribute==securityCode) {
			return true;
		}else{
			return false;
		}
	}
	@ResponseBody
	@RequestMapping("/checkedAnswer")
	public boolean checkedAnswer(String answer,HttpServletRequest request) {
		
		HttpSession session = request.getSession();
		TbStudent tbStudent = (TbStudent) session.getAttribute("tbStudent");
		String answer2 = tbStudent.getAnswer();
		if(answer2.equals(answer)) {
			return true;
		}else {
			return false;
		}
	}
}
