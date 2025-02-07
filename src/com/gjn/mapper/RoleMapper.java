package com.gjn.mapper;

import java.util.List;
import org.apache.ibatis.annotations.Param;

import com.gjn.pojo.Role;
import com.gjn.pojo.RoleExample;

public interface RoleMapper {
	int countByExample(RoleExample example);

	int deleteByExample(RoleExample example);

	int deleteByPrimaryKey(Integer rid);

	int insert(Role record);

	int insertSelective(Role record);

	List<Role> selectByExample(RoleExample example);

	Role selectByPrimaryKey(Integer rid);

	int updateByExampleSelective(@Param("record") Role record, @Param("example") RoleExample example);

	int updateByExample(@Param("record") Role record, @Param("example") RoleExample example);

	int updateByPrimaryKeySelective(Role record);

	int updateByPrimaryKey(Role record);
}