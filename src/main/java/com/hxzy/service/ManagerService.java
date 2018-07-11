package com.hxzy.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.hxzy.pojo.TbManager;
@Service
public interface ManagerService {
		public TbManager selectByNameAndPwd(String managerName,String pwd);
		/**
		 * 获得所有manager
		 */
		public List<TbManager> getAllManager();
		/**
		 * 添加manager
		 */
		public void addManager(TbManager manager);
		/**
		 * 删除管理员
		 */
		public void delManager(int id);
		/**
		 * 修改管理员密码
		 */
		public void updateManager(TbManager manager);
		/**
		 * 根据id获得管理员
		 */
		public TbManager getManagerById(int id);
}
