package com.hxzy.service.Impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.hxzy.dao.TbStudentMapper;
import com.hxzy.pojo.TbStudent;
import com.hxzy.pojo.TbSturesultExample;
import com.hxzy.pojo.TbSturesultExample.Criteria;
import com.hxzy.service.front_modifyService;
@Service
public class front_modifyServiceImpl implements front_modifyService {
@Autowired
	private TbStudentMapper tbStudentMapper;

	@Override
	public int updatePassword(TbStudent tbStudent) {	
		int updateByPrimaryKey = tbStudentMapper.updateByPrimaryKeySelective(tbStudent);
		return updateByPrimaryKey;
	}


	@Override
	public TbStudent selectById(String id) {
		TbStudent selectByPrimaryKey = tbStudentMapper.selectByPrimaryKey(id);
		return selectByPrimaryKey;
	}

}
