package com.hxzy.web;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import javax.servlet.http.HttpServletRequest;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import com.hxzy.pojo.TbSturesult;
import com.hxzy.service.SturesultService;
import com.hxzy.vo.SturesultCondition;

@Controller
@RequestMapping("/manage")
public class SturesultController {
	@Autowired
	SturesultService service;	
	@ResponseBody
	@RequestMapping("/stuResultQuery")
	public List<TbSturesult> method1(String queryIf, String key,@RequestParam(defaultValue="0000/00/00")String JoinTime,Model model,HttpServletRequest request) throws Exception {
		SturesultCondition condition =new SturesultCondition();
		
		if("stuId".equals(queryIf)) {
			condition.setStuid(key);
		}else if("whichLesson".equals(queryIf)) {
			condition.setWhichLesson(key);
			
		}
			
		condition.setJoinTime(JoinTime);
		List<TbSturesult> sturesults = service.getSturesult(condition);	
		
		return sturesults;
			
	}
	
}
