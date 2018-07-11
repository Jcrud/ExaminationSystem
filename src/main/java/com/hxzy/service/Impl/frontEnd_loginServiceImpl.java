package com.hxzy.service.Impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.hxzy.dao.TbStudentMapper;
import com.hxzy.pojo.TbStudent;
import com.hxzy.pojo.TbStudentExample;
import com.hxzy.pojo.TbStudentExample.Criteria;
import com.hxzy.service.frontEnd_LoginService;
@Service
public class frontEnd_loginServiceImpl implements frontEnd_LoginService{
	@Autowired  
	private  TbStudentMapper tbStudentMapper;
	@Override
	public List<TbStudent> loginByIdAndPassword(String id, String pwd) {
		TbStudentExample example=new TbStudentExample();
	   Criteria createCriteria = example.createCriteria();
		createCriteria.andIdEqualTo(id);
		createCriteria.andPwdEqualTo(pwd);
		List<TbStudent> list = tbStudentMapper.selectByExample(example);
		
		return list;
	}
	@Override
	public TbStudent selectTbStudentById(String id) {
		TbStudent tbStudent = tbStudentMapper.selectByPrimaryKey(id);
		return tbStudent;
	}

}
