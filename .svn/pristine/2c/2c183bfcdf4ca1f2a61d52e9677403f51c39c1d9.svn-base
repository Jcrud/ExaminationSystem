package com.hxzy.service.Impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.hxzy.dao.TbQuestionsMapper;
import com.hxzy.pojo.TbQuestions;
import com.hxzy.service.QuestionsService;
@Service
public class QuestionsServiceImp implements QuestionsService {
	@Autowired
	TbQuestionsMapper mapper;
	@Override
	public List<TbQuestions> getAllQuestions() {
		List<TbQuestions> list = mapper.questionsWithLessonTaoti();
		return list;
	}
	@Override
	public void addQuestions(TbQuestions questions) {
		mapper.insert(questions);
		
	}
	@Override
	public void delQuestions(int id) {
		mapper.deleteByPrimaryKey(id);
		
	}
	@Override
	public void updateQuestions(TbQuestions questions) {
		mapper.updateByPrimaryKeySelective(questions);
		
	}
	@Override
	public TbQuestions getQuestionById(int id) {		
		return mapper.questionWithLessonTaoti(id);
	}

}
