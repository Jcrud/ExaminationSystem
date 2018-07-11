package com.hxzy.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.hxzy.pojo.TbLesson;
@Service
public interface LessonService {
		/**
		 * 获得所有课程
		 */
	public List<TbLesson> getAllLesson();
	/**
	 * 添加课程
	 */
	public void addLesson(TbLesson lesson);
	/**
	 * 删除课程
	 */
	public void delLesson(int id);
}
