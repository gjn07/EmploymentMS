package com.gjn.mapper;

import java.util.List;
import org.apache.ibatis.annotations.Param;

import com.gjn.pojo.Dept;
import com.gjn.pojo.DeptExample;

public interface DeptMapper {
	int countByExample(DeptExample example);

	int deleteByExample(DeptExample example);

	int deleteByPrimaryKey(Integer did);

	int insert(Dept record);

	int insertSelective(Dept record);

	List<Dept> selectByExample(DeptExample example);

	Dept selectByPrimaryKey(Integer did);

	int updateByExampleSelective(@Param("record") Dept record, @Param("example") DeptExample example);

	int updateByExample(@Param("record") Dept record, @Param("example") DeptExample example);

	int updateByPrimaryKeySelective(Dept record);

	int updateByPrimaryKey(Dept record);
}