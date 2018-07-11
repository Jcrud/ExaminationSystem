package com.hxzy.service.Impl;

import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.hxzy.dao.TbLessonMapper;
import com.hxzy.pojo.TbLesson;
import com.hxzy.service.LessonService;
@Service
public class LessonServiceImp implements LessonService {
	@Autowired
	TbLessonMapper LessonMapper;

	@Override
	public List<TbLesson> getAllLesson() {
		List<TbLesson> list = LessonMapper.selectByExample(null);
		return list;
	}

	@Override
	public void addLesson(TbLesson lesson) {
		lesson.setJointime(new Date());
		LessonMapper.insert(lesson);
		
	}

	@Override
	public void delLesson(int id) {
		LessonMapper.deleteByPrimaryKey(id);
		
	}
	

}
