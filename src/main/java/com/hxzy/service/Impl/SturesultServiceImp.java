package com.hxzy.service.Impl;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.hxzy.dao.TbSturesultMapper;
import com.hxzy.pojo.TbSturesult;
import com.hxzy.pojo.TbSturesultExample;
import com.hxzy.pojo.TbSturesultExample.Criteria;
import com.hxzy.service.SturesultService;
import com.hxzy.vo.SturesultCondition;
@Service
public class SturesultServiceImp implements SturesultService {
	@Autowired
	TbSturesultMapper sturesultMapper;
	@Override
	public List<TbSturesult> getSturesult(SturesultCondition condition) {
		TbSturesultExample example=new TbSturesultExample();
		Criteria criteria = example.createCriteria();
		
		if(condition.getStuid()!=null) {
			String stuid = condition.getStuid();
			criteria.andStuidLike("%"+stuid+"%");
		}else if(condition.getWhichLesson()!=null) {
			String whichLesson = condition.getWhichLesson();
			criteria.andWhichlessonLike("%"+whichLesson+"%");			
		}
			String time = condition.getJoinTime();
			String[] parts = time.split("/");
			String year=parts[0];
			String month=parts[1];
			String day=parts[2];			
		List<TbSturesult> list = sturesultMapper.selectByExample(example);
		for (int i = 0; i < list.size(); i++) {
			Calendar cld = Calendar.getInstance();
			cld.setTime(list.get(i).getJointime());			
			if(!"0000".equals(year)) {
				 if(!Integer.toString(cld.get(Calendar.YEAR)).equals(year)) {
					 list.remove(i);
					 i--;
					 continue;
				 }
			}
			if(!"00".equals(month)) {
				 if(!Integer.toString(cld.get(Calendar.MONTH)+1).equals(month)) {
					 list.remove(i);
					 i--;
					 continue;
				 }
			}
			if(!"00".equals(day)) {
				 if(!Integer.toString(cld.get(Calendar.DAY_OF_MONTH)).equals(day)) {
					 list.remove(i);
					 i--;
					 continue;
				 }
			}
		}
		if(list.size()==0) {
			list=null;
		}
		return list;
	}
	@Override
	public List<TbSturesult> getAllSturesult() {
		List<TbSturesult> list = sturesultMapper.selectByExample(null);
		return list;
	}

}
