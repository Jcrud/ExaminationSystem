package com.hxzy.test;

import java.util.List;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.hxzy.dao.TbTaotiMapper;
import com.hxzy.pojo.TbTaoti;
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("classpath:applicationContext.xml")
public class test {
	@Autowired
private TbTaotiMapper mapper;
	@Test
	public void test() {
	 List<TbTaoti> selectByExample = mapper.selectByExample(null);
	System.out.println(selectByExample);
	}

}
