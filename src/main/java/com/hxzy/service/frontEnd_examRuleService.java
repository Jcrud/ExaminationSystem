package com.hxzy.service;

import java.util.List;

import com.hxzy.pojo.TbLesson;
import com.hxzy.pojo.TbQuestions;
import com.hxzy.pojo.TbSturesult;
import com.hxzy.pojo.TbTaoti;

public interface frontEnd_examRuleService {
    public List<TbLesson> selectAllLesson ();
	public List<TbTaoti> selectAllTaotiByLessonId(Integer id);
	public List<TbQuestions> selectResSingle(Integer taoTiId);
	public List<TbQuestions> selectResMore(Integer taoTiId);
	public String selectLessonNameById(Integer lessonId);
	public void insertSturesult(TbSturesult tbSturesult);
	public List<TbQuestions>queryQuestionsAndtaoti(Integer taoTiId);
	public TbTaoti queryTaoti(Integer taotiId);
}
