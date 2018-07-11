package com.hxzy.web;

import java.util.List;

import org.junit.runners.Parameterized.Parameter;
import org.junit.runners.Parameterized.Parameters;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Required;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.hxzy.pojo.TbSturesult;
import com.hxzy.service.frontEnd_sturesultService;

@Controller
@RequestMapping("frontEnd")
public class frontEnd_sturesult {
	@Autowired
	private frontEnd_sturesultService service;
	
	
	@ResponseBody
	@RequestMapping("showAllResult")
	public List<TbSturesult> showAllResult(String id,@RequestParam(defaultValue="null",required=false) String oderby) {

		List<TbSturesult> TbSturesultes = service.selectById(id,oderby);
		
		
		return TbSturesultes;
		
	}
	
	
}
