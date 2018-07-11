package com.hxzy.dao;

import com.hxzy.pojo.TbTaoti;
import com.hxzy.pojo.TbTaotiExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface TbTaotiMapper {
    int countByExample(TbTaotiExample example);

    int deleteByExample(TbTaotiExample example);

    int deleteByPrimaryKey(Integer id);

    int insert(TbTaoti record);

    int insertSelective(TbTaoti record);

    List<TbTaoti> selectByExample(TbTaotiExample example);

    TbTaoti selectByPrimaryKey(Integer id);

    int updateByExampleSelective(@Param("record") TbTaoti record, @Param("example") TbTaotiExample example);

    int updateByExample(@Param("record") TbTaoti record, @Param("example") TbTaotiExample example);

    int updateByPrimaryKeySelective(TbTaoti record);

    int updateByPrimaryKey(TbTaoti record);
    List<TbTaoti> selectAllWithLesson();
   
}