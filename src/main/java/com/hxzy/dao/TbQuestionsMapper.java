package com.hxzy.dao;

import com.hxzy.pojo.TbQuestions;
import com.hxzy.pojo.TbQuestionsExample;
import com.hxzy.pojo.TbTaoti;

import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface TbQuestionsMapper {
    int countByExample(TbQuestionsExample example);

    int deleteByExample(TbQuestionsExample example);

    int deleteByPrimaryKey(Integer id);

    int insert(TbQuestions record);

    int insertSelective(TbQuestions record);

    List<TbQuestions> selectByExample(TbQuestionsExample example);

    TbQuestions selectByPrimaryKey(Integer id);

    int updateByExampleSelective(@Param("record") TbQuestions record, @Param("example") TbQuestionsExample example);

    int updateByExample(@Param("record") TbQuestions record, @Param("example") TbQuestionsExample example);

    int updateByPrimaryKeySelective(TbQuestions record);

    int updateByPrimaryKey(TbQuestions record);
    List<TbQuestions> questionsWithLessonTaoti();
    TbQuestions questionWithLessonTaoti(int id);
    List<TbQuestions>queryQuestionsAndtaoti(Integer taotiId);
}