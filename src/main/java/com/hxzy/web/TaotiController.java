package com.hxzy.web;

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
import com.hxzy.pojo.TbTaoti;
import com.hxzy.service.LessonService;
import com.hxzy.service.QuestionsService;
import com.hxzy.service.TaotiService;
import com.hxzy.service.frontEnd_examRuleService;

@Controller
@RequestMapping("/manage")
public class TaotiController {
	@Autowired
	TaotiService service;
	@Autowired
	LessonService service1;
	@Autowired
	frontEnd_examRuleService service2;
	@RequestMapping("/taoTiQuery")
	public String method(Model model) {
		List<TbTaoti> allTaoti = service.getAllTaoti();
		for (TbTaoti tbTaoti : allTaoti) {
			tbTaoti.setDuo(service2.selectResMore(tbTaoti.getId()).size());
			tbTaoti.setDan(service2.selectResSingle(tbTaoti.getId()).size());
		}
		
		model.addAttribute("taotis", allTaoti);
		
		return "manage/taoTi";		
	}
	@RequestMapping("/taoTiAddQuery")
	public String method1(Model model) {
		List<TbLesson> lessons = service1.getAllLesson();
		model.addAttribute("lessons", lessons);
		return "manage/taoTi_Add";		
	}
	@RequestMapping("/taoTiAdd")
	public void method2(TbTaoti taoti,HttpServletRequest request,HttpServletResponse response) {
		service.addTaoti(taoti);
		try {
			request.getRequestDispatcher("taoTi_ok.jsp?para=1").forward(request, response);
		} catch (Exception e) {			
			e.printStackTrace();
		}	
	}
	/**
	 * 根据课程id选出所有套题
	 * @param model
	 * @param taoti
	 * @return
	 */
	@ResponseBody
	@RequestMapping("/queryTaoTi")
	public List<TbTaoti> method3(Integer id) {
		List<TbTaoti> taotis = service.getTaotiByLessonId(id);		
		return taotis;		
	}
	@RequestMapping("/taoTiDel")
	public void method4(int[] delIdArray,HttpServletRequest request,HttpServletResponse response) {
		for (int i = 0; i < delIdArray.length; i++) {
			service.delTaoti(delIdArray[i]);
		}	
		try {
			request.getRequestDispatcher("taoTi_ok.jsp?para=3").forward(request, response);
		} catch (Exception e) {			
			e.printStackTrace();
		}	
		
	}
	/**
	 * 修改考题跳转界面
	 */
	@RequestMapping("/taoTiModifyQuery")
	public String method5(int id,Model model) {
		List<TbLesson> lessons = service1.getAllLesson();
		model.addAttribute("lessons", lessons);
		TbTaoti taoti = service.getTaotiById(id);
		model.addAttribute("taoti", taoti);
		return "manage/taoTi_Modify";	
		
	}
	/**
	 * 修改考题
	 */
	@RequestMapping("/taoTiModify")
	public void method6(TbTaoti taoti,HttpServletRequest request,HttpServletResponse response) {
		service.updateTaoti(taoti);
		try {
			request.getRequestDispatcher("taoTi_ok.jsp?para=2").forward(request, response);
		} catch (Exception e) {			
			e.printStackTrace();
		}	
		
	}
}
