package com.hxzy.web;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.hxzy.pojo.TbLesson;
import com.hxzy.service.LessonService;

@Controller
@RequestMapping("/manage")
public class LessonController {
	@Autowired
	LessonService service;
	@RequestMapping("/lessonQuery")
	public String method(Model model) {
		List<TbLesson> lessons = service.getAllLesson();
		model.addAttribute("lessons", lessons);
		return "manage/lesson";		
	}
	
	@RequestMapping("/lessonAdd")
	public void method1(TbLesson lesson,HttpServletRequest request,HttpServletResponse response) {		
		service.addLesson(lesson);
		try {
			request.getRequestDispatcher("lesson_ok.jsp?para=1").forward(request, response);
			
		} catch (Exception e) {
			
			e.printStackTrace();
		}	


				
	}
	@RequestMapping("/lessonDel")
	public void method2(int[] delIdArray,HttpServletRequest request,HttpServletResponse response) {
		for (int i = 0; i < delIdArray.length; i++) {
			service.delLesson(delIdArray[i]);
		}	
		try {
			request.getRequestDispatcher("lesson_ok.jsp?para=3").forward(request, response);
			
		} catch (Exception e) {
			
			e.printStackTrace();
		}			
	}
}
