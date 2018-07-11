package com.hxzy.web;

import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.hxzy.pojo.TbLesson;
import com.hxzy.pojo.TbQuestions;
import com.hxzy.pojo.TbStudent;
import com.hxzy.pojo.TbSturesult;
import com.hxzy.pojo.TbTaoti;
import com.hxzy.service.frontEnd_examRuleService;

@Controller
@RequestMapping("/frontEnd")
public class frontEnd_examRule {
	@Autowired
private frontEnd_examRuleService service;
	@RequestMapping("/selectLesson")
	public String selectLesson(Model model) {
		List<TbLesson> TbLessones = service.selectAllLesson();
		model.addAttribute("TbLessones", TbLessones);
	return "selectLesson";
	}
	
	@ResponseBody
	@RequestMapping("/selectTaoTi")
	public List<TbTaoti> selectTaoTi(Model model,Integer lessonid,HttpServletRequest request) {
		HttpSession session = request.getSession();
		
		session.setAttribute("lessonid", lessonid);
		List<TbTaoti> tbTaoti = service.selectAllTaotiByLessonId(lessonid);	
		return tbTaoti;
	}
	@RequestMapping("/ready")
	public String ready(HttpServletRequest request,Model model,Integer taoTi) {
		HttpSession session = request.getSession();
		session.setAttribute("taoTiId", taoTi);
		return "ready";
	}
	
	
	@RequestMapping("/startExam")
	public String startExam(Model model,HttpServletRequest request) {
		HttpSession session = request.getSession();
		Integer taoTiId = (Integer) session.getAttribute("taoTiId");
		TbTaoti tbTaoti = service.queryTaoti(taoTiId);
		session.setAttribute("tbTaotiName", tbTaoti.getName());
		model.addAttribute("tbTaoti", tbTaoti);
		List<TbQuestions> resSingle = service.selectResSingle(taoTiId);
		model.addAttribute("resSingle", resSingle);
		List<com.hxzy.pojo.TbQuestions> resMore = service.selectResMore(taoTiId);
		model.addAttribute("resMore", resMore);
		
		
		return "startExam";

	}
	@RequestMapping("/submitTest")
	public String submitTestPaper(Model model,HttpServletRequest request,Integer ressingle,Integer resmore) {
		//后台计算分数方法
		//通过form表单提交的数组与答案进行计算
		//将考试结果放入数据库
		Integer resTotal=0;
		resTotal=ressingle+resmore;
		HttpSession session = request.getSession();
		 String tbTaotiName = (String) session.getAttribute("tbTaotiName");
		
		TbStudent tbStudent = (TbStudent) session.getAttribute("tbStudent");
		String stuid = tbStudent.getId();
		Integer lessonid = (Integer) session.getAttribute("lessonid");
		String lessonName = service.selectLessonNameById(lessonid);
		Date date=new Date();
		TbSturesult tbSturesult=new TbSturesult();
		tbSturesult.setTaotiname(tbTaotiName);
		tbSturesult.setJointime(date);
		tbSturesult.setResmore(resmore);
		tbSturesult.setRessingle(ressingle);
		tbSturesult.setRestotal(resTotal);
		tbSturesult.setStuid(stuid);
		tbSturesult.setWhichlesson(lessonName);
		service.insertSturesult(tbSturesult);
		model.addAttribute("resTotal", resTotal);
		return "submitTestPaperok";
	}
	
}
