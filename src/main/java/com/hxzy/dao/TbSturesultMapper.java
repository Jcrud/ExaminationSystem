package com.hxzy.dao;

import com.hxzy.pojo.TbSturesult;
import com.hxzy.pojo.TbSturesultExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface TbSturesultMapper {
    int countByExample(TbSturesultExample example);

    int deleteByExample(TbSturesultExample example);

    int deleteByPrimaryKey(Integer id);

    int insert(TbSturesult record);

    int insertSelective(TbSturesult record);

    List<TbSturesult> selectByExample(TbSturesultExample example);

    TbSturesult selectByPrimaryKey(Integer id);

    int updateByExampleSelective(@Param("record") TbSturesult record, @Param("example") TbSturesultExample example);

    int updateByExample(@Param("record") TbSturesult record, @Param("example") TbSturesultExample example);

    int updateByPrimaryKeySelective(TbSturesult record);

    int updateByPrimaryKey(TbSturesult record);
}