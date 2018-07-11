package com.hxzy.service;

import java.util.List;

import com.hxzy.pojo.TbStudent;

public interface frontEnd_LoginService {
	public List<TbStudent> loginByIdAndPassword(String id,String pwd);
	public TbStudent selectTbStudentById(String id);

}
