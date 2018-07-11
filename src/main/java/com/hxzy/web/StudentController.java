package com.hxzy.web;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import com.hxzy.pojo.TbStudent;
import com.hxzy.service.StudentService;

@Controller
@RequestMapping("/manage")
public class StudentController {
	@Autowired
	StudentService service;
	@RequestMapping("/studentQuery")
	public String method(Model model) {
		List<TbStudent> allStudent = service.getAllStudent();
		model.addAttribute("students", allStudent);
		return "manage/student";		
	}
	@RequestMapping("/studentQueryAgain")
	public List<TbStudent> method1(String managerName,String pwd,Model model,HttpServletRequest request) {
		List<TbStudent> allStudent = service.getAllStudent();
		return allStudent;		
	}
	/**
	 * 删除学生
	 * @param id
	 * @param response
	 */
	@RequestMapping("/studentDel")
	public void method3(String[] delIdArray,HttpServletResponse response) {
		for (int i = 0; i < delIdArray.length; i++) {
			service.delStudent(delIdArray[i]);
		}	
		try {
			response.sendRedirect("student_ok.jsp");
		} catch (Exception e) {			
			e.printStackTrace();
		}		
	}
}
