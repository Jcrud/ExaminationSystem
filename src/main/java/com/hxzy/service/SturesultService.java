package com.hxzy.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.hxzy.pojo.TbSturesult;
import com.hxzy.vo.SturesultCondition;
@Service
public interface SturesultService {
		/**
		 * 根据条件获得某些学生的成绩
		 */
	public List<TbSturesult> getSturesult(SturesultCondition condition);
	/**
	 * 获得所有成绩
	 */
	public List<TbSturesult> getAllSturesult();
}
