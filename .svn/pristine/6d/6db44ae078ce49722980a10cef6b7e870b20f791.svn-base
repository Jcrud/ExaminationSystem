package com.hxzy.web;


import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.hxzy.pojo.TbLesson;
import com.hxzy.pojo.TbQuestions;
import com.hxzy.service.LessonService;
import com.hxzy.service.QuestionsService;
import com.hxzy.service.TaotiService;

@Controller
@RequestMapping("/manage")
public class QuestionsController {
	@Autowired
	QuestionsService service;
	@Autowired
	LessonService service1;
	@Autowired
	TaotiService service2;
	@RequestMapping("/questionsQuery")
	public String method(Model model) {
		List<TbQuestions> questions = service.getAllQuestions();
		model.addAttribute("questions", questions);
		return "manage/questions";		
	}
	@ResponseBody
	@RequestMapping("/questionsAddQuery")
	public List<TbLesson> method1() {
		List<TbLesson> allLesson = service1.getAllLesson();		
		return allLesson;		
	}
	@RequestMapping("/questionsAdd")
	public void method2(Model model,TbQuestions question, HttpServletRequest request, HttpServletResponse response) {
		List<TbQuestions> questions = service.getAllQuestions();
		boolean flag=false;
		for (TbQuestions tbQuestions : questions) {
			if(tbQuestions.getSubject()==question.getSubject()) {
				flag=true;
			}
		}
		if(flag) {
			model.addAttribute("error", "已有相同题目！");
			try {
				request.getRequestDispatcher("/manage/error.jsp").forward(request, response);
			} catch (Exception e) {
				e.printStackTrace();
			} 
		}else {
			question.setJointime(new Date());
			service.addQuestions(question);				
			try {
				request.getRequestDispatcher("questions_ok.jsp?para=1").forward(request, response);
			} catch (Exception e) {			
				e.printStackTrace();
			}
			
		}
			
	}
	@RequestMapping("/questionsDel")
	public void method3(Model model,int[] delIdArray,HttpServletRequest request, HttpServletResponse response) {
		for (int i = 0; i < delIdArray.length; i++) {
			service.delQuestions(delIdArray[i]);
		}		
		try {
			request.getRequestDispatcher("questions_ok.jsp?para=3").forward(request, response);
		} catch (Exception e) {			
			e.printStackTrace();
		}	
				
	}
	/**
	 * 问题修改跳转请求
	 * @param question
	 * @param request
	 * @param response
	 */
	@RequestMapping("/questionsModifyQuery")
	public String  method4(int id,Model model) {
		TbQuestions questions = service.getQuestionById(id);
			model.addAttribute("questions", questions);			
		return "manage/questions_Modify";		
	}
	/**
	 * 问题修改请求
	 * @param question
	 * @param request
	 * @param response
	 */
	@RequestMapping("/questionsModify")
	public void method5(TbQuestions question,HttpServletRequest request, HttpServletResponse response) {
		service.updateQuestions(question);	
		try {
			request.getRequestDispatcher("questions_ok.jsp?para=2").forward(request, response);
		} catch (Exception e) {			
			e.printStackTrace();
		}	
				
	}
	
}
