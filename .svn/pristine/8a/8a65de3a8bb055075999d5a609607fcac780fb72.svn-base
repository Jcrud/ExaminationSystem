package com.hxzy.service.Impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.hxzy.dao.TbLessonMapper;
import com.hxzy.dao.TbQuestionsMapper;
import com.hxzy.dao.TbSturesultMapper;
import com.hxzy.dao.TbTaotiMapper;
import com.hxzy.pojo.TbLesson;
import com.hxzy.pojo.TbQuestions;
import com.hxzy.pojo.TbQuestionsExample;
import com.hxzy.pojo.TbSturesult;
import com.hxzy.pojo.TbTaoti;
import com.hxzy.pojo.TbTaotiExample;
import com.hxzy.pojo.TbTaotiExample.Criteria;
import com.hxzy.service.frontEnd_examRuleService;
@Service
public class frontEnd_examRuleServiceImpl implements frontEnd_examRuleService {
@Autowired
	private TbLessonMapper lesson;
@Autowired	
private TbTaotiMapper tbTaoti;
@Autowired
private TbQuestionsMapper tbQuestions;
@Autowired
private TbSturesultMapper tbSturesultMapper;
	@Override
	public List<TbLesson> selectAllLesson() {
		List<TbLesson> selectByExample = lesson.selectByExample(null);
		return selectByExample;
	}
	@Override
	public List<TbTaoti> selectAllTaotiByLessonId(Integer id) {
		TbTaotiExample example=new TbTaotiExample();
		Criteria createCriteria = example.createCriteria();
		createCriteria.andLessonidEqualTo(id);
		List<TbTaoti> selectByExample = tbTaoti.selectByExample(example);
		return selectByExample;
	}
	@Override
	public List<TbQuestions> selectResSingle(Integer taoTiId) {
		TbQuestionsExample example=new TbQuestionsExample();
		com.hxzy.pojo.TbQuestionsExample.Criteria createCriteria = example.createCriteria();
		createCriteria.andTypeEqualTo("单选题");
		createCriteria.andTaotiidEqualTo(taoTiId);
		List<TbQuestions> selectByExample = tbQuestions.selectByExample(example);
		return selectByExample;
	}
	@Override
	public List<TbQuestions> selectResMore(Integer taoTiId) {
		TbQuestionsExample example=new TbQuestionsExample();
		com.hxzy.pojo.TbQuestionsExample.Criteria createCriteria = example.createCriteria();
		createCriteria.andTypeEqualTo("多选题");
		createCriteria.andTaotiidEqualTo(taoTiId);
		List<TbQuestions> selectByExample = tbQuestions.selectByExample(example);
		return selectByExample;
	}
	@Override
	public String selectLessonNameById(Integer lessonId) {
		TbLesson selectByPrimaryKey = lesson.selectByPrimaryKey(lessonId);
		String name = selectByPrimaryKey.getName();
		return name;
	}
	@Override
	public void insertSturesult(TbSturesult tbSturesult) {
		tbSturesultMapper.insert(tbSturesult);
	}
	@Override
	public List<TbQuestions> queryQuestionsAndtaoti(Integer taoTiId) {
		List<TbQuestions> queryQuestionsAndtaoti = tbQuestions.queryQuestionsAndtaoti(taoTiId);
		return queryQuestionsAndtaoti;
	}
	@Override
	public TbTaoti queryTaoti(Integer taotiId) {
	   TbTaoti selectByPrimaryKey = tbTaoti.selectByPrimaryKey(taotiId);
		return selectByPrimaryKey;
	}
	

}
