package com.gjn.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.gjn.pojo.Dept;

@Service
public interface DeptService {

	int addDept(Dept dept);

	List<Dept> selectAllDepts();

	List<Dept> selectDeptLike(Dept dept);

	int updateDept(Dept dept);

	int delteDeptById(int did);

	List<Dept> SelectBydName(String dname);

}
