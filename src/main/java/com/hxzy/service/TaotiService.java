package com.hxzy.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.hxzy.pojo.TbTaoti;
@Service
public interface TaotiService {

	/**
	 * 获得所有套题
	 */
	public List<TbTaoti> getAllTaoti();
	/**
	 * 添加套题
	 */
	public void addTaoti(TbTaoti taoti);
	/**
	 * 根据课程id选出所有套题
	 */
	public List<TbTaoti> getTaotiByLessonId(int lessonId);
	/**
	 * 删除套题
	 */
	public void delTaoti(int id);
	/**
	 * 根据id获得考题
	 */
	public TbTaoti getTaotiById(int id);
	/**
	 * 修改套题
	 */
	public void updateTaoti(TbTaoti taoti);
}
