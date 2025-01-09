package com.gjn.mapper;

import java.util.List;
import org.apache.ibatis.annotations.Param;

import com.gjn.pojo.Employee;
import com.gjn.pojo.EmployeeExample;

public interface EmployeeMapper {
	int countByExample(EmployeeExample example);

	int deleteByExample(EmployeeExample example);

	int deleteByPrimaryKey(Integer id);

	int insert(Employee record);

	int insertSelective(Employee record);

	List<Employee> selectByExample(EmployeeExample example);

	Employee selectByPrimaryKey(Integer id);

	int updateByExampleSelective(@Param("record") Employee record, @Param("example") EmployeeExample example);

	int updateByExample(@Param("record") Employee record, @Param("example") EmployeeExample example);

	int updateByPrimaryKeySelective(Employee record);

	int updateByPrimaryKey(Employee record);
}