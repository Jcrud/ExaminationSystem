package com.hxzy.dao;

import com.hxzy.pojo.TbLesson;
import com.hxzy.pojo.TbLessonExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface TbLessonMapper {
    int countByExample(TbLessonExample example);

    int deleteByExample(TbLessonExample example);

    int deleteByPrimaryKey(Integer id);

    int insert(TbLesson record);

    int insertSelective(TbLesson record);

    List<TbLesson> selectByExample(TbLessonExample example);

    TbLesson selectByPrimaryKey(Integer id);

    int updateByExampleSelective(@Param("record") TbLesson record, @Param("example") TbLessonExample example);

    int updateByExample(@Param("record") TbLesson record, @Param("example") TbLessonExample example);

    int updateByPrimaryKeySelective(TbLesson record);

    int updateByPrimaryKey(TbLesson record);
}