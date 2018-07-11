package com.hxzy.service.Impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.hxzy.dao.TbManagerMapper;
import com.hxzy.pojo.TbManager;
import com.hxzy.pojo.TbManagerExample;
import com.hxzy.pojo.TbManagerExample.Criteria;
import com.hxzy.service.ManagerService;
@Service
public class ManagerServiceImp implements ManagerService{
	@Autowired
	TbManagerMapper managerMapper;
	@Override
	public TbManager selectByNameAndPwd(String managerName,String pwd) {
		TbManagerExample managerExample=new TbManagerExample();	
			Criteria criteria = managerExample.createCriteria();
			criteria.andNameEqualTo(managerName);
			criteria.andPwdEqualTo(pwd);
			List<TbManager> list = managerMapper.selectByExample(managerExample);
			if(list.size()!=0) {
				return list.get(0);
			}
		return null;
	}
	@Override
	public List<TbManager> getAllManager() {
		List<TbManager> list = managerMapper.selectByExample(null);
		return list;
	}
	@Override
	public void addManager(TbManager manager) {
		managerMapper.insert(manager);
		
	}
	@Override
	public void delManager(int id) {
		managerMapper.deleteByPrimaryKey(id);
		
	}
	@Override
	public void updateManager(TbManager manager) {
		TbManagerExample example=new TbManagerExample();
		example.createCriteria().andNameEqualTo(manager.getName());		
		managerMapper.updateByExampleSelective(manager, example);
		
	}
	@Override
	public TbManager getManagerById(int id) {
		TbManager manager = managerMapper.selectByPrimaryKey(id);
		return manager;
	}
		
}
