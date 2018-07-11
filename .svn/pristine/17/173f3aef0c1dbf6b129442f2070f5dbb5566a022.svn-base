package com.hxzy.web;

import java.util.List;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.hxzy.pojo.TbStudent;
import com.hxzy.service.frontEnd_LoginService;

@Controller
@RequestMapping("/frontEnd")
public class frontEnd_Login {
	@Autowired
	private frontEnd_LoginService frontEnd_LoginServiceImpl;
	@RequestMapping("/login1")
	public String login(String id,String pwd,HttpServletRequest request,Model model) {
		 
		HttpSession session = request.getSession();
		List<TbStudent> list = frontEnd_LoginServiceImpl.loginByIdAndPassword(id, pwd);
		if(list==null||list.size()==0) {
			model.addAttribute("erroy", "您输入的准考证号或密码错误");
			return"index";
		}else {
			session.setAttribute("erroy", null);
			TbStudent tbStudent = list.get(0);
			session.setAttribute("tbStudent", tbStudent);
			System.out.println(tbStudent+"登录时");
			return "default";
			
		}
	}
	@RequestMapping("/seekPwd1")
	public String seekPwd1(String id,Model model) {
		TbStudent studentById = frontEnd_LoginServiceImpl.selectTbStudentById(id);
		if(studentById==null) {
			model.addAttribute("error", "没有此用户！");
			return "seekPwd";
		}else {
			model.addAttribute("student", studentById);
			return "seekPwd1";
		}
	
	}
	@RequestMapping("/seekPwd2")
	public String seekPwd2(String id,Model model) {
		TbStudent studentById = frontEnd_LoginServiceImpl.selectTbStudentById(id);
		model.addAttribute("student", studentById);
			return "seekPwd2";
	
	}
	
	
}
