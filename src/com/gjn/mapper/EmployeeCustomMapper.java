package com.gjn.mapper;

import java.util.List;

import com.gjn.pojo.Employee;

public interface EmployeeCustomMapper {
	List<Employee> selectAllEmployeesJoined();
}
