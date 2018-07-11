package com.hxzy.service.Impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.hxzy.dao.TbStudentMapper;
import com.hxzy.pojo.TbStudent;
import com.hxzy.service.StudentService;
@Service
public class StudentServiceImp implements StudentService {
	@Autowired
	TbStudentMapper studentMapper;
	@Override
	public List<TbStudent> getAllStudent() {
		List<TbStudent> list = studentMapper.selectByExample(null);
		return list;
	}
	@Override
	public void delStudent(String id) {
		studentMapper.deleteByPrimaryKey(id);
		
	}

}
