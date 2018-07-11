package com.hxzy.service.Impl;

import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.hxzy.dao.TbTaotiMapper;
import com.hxzy.pojo.TbTaoti;
import com.hxzy.pojo.TbTaotiExample;
import com.hxzy.pojo.TbTaotiExample.Criteria;
import com.hxzy.service.TaotiService;
@Service
public class TaotiServiceImp implements TaotiService {
	@Autowired
	TbTaotiMapper taotiMapper;
	@Override
	public List<TbTaoti> getAllTaoti() {
		List<TbTaoti> list = taotiMapper.selectAllWithLesson();
		
		System.out.println();
		return list;
	}
	@Override
	public void addTaoti(TbTaoti taoti) {
		taoti.setJointime(new Date());
		taotiMapper.insert(taoti);
		
	}
	@Override
	public List<TbTaoti> getTaotiByLessonId(int lessonId) {
		TbTaotiExample example = new TbTaotiExample();
		Criteria criteria = example.createCriteria();
		criteria.andLessonidEqualTo(lessonId);
		List<TbTaoti> taotiByLessonIds = taotiMapper.selectByExample(example);
		return taotiByLessonIds;
		
	}
	@Override
	public void delTaoti(int id) {
		taotiMapper.deleteByPrimaryKey(id);
		
	}
	@Override
	public void updateTaoti(TbTaoti taoti) {
		taotiMapper.updateByPrimaryKeySelective(taoti);
		
	}
	@Override
	public TbTaoti getTaotiById(int id) {
		TbTaoti tbTaoti = taotiMapper.selectByPrimaryKey(id);
		return tbTaoti;
	}

}
