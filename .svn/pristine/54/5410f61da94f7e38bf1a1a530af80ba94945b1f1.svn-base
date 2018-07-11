package com.hxzy.service.Impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.hxzy.dao.TbSturesultMapper;
import com.hxzy.pojo.TbSturesult;
import com.hxzy.pojo.TbSturesultExample;
import com.hxzy.pojo.TbSturesultExample.Criteria;
import com.hxzy.service.frontEnd_sturesultService;
@Service
public class frontEnd_sturesultServiceImpl implements frontEnd_sturesultService{
@Autowired
	private TbSturesultMapper service;
	@Override
	public List<TbSturesult> selectById(String id,String order) {
		TbSturesultExample example=new TbSturesultExample();
		Criteria createCriteria = example.createCriteria();
		createCriteria.andStuidEqualTo(id);
		example.setOrderByClause(order);
		List<TbSturesult> selectByExample = service.selectByExample(example);
		example.clear();
		return selectByExample;
	}

}
