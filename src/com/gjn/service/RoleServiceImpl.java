package com.gjn.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.gjn.mapper.RoleMapper;
import com.gjn.pojo.Role;
import com.gjn.pojo.RoleExample;

@Service
public class RoleServiceImpl implements RoleService {

	@Autowired
	private RoleMapper roleMapper;

	@Override
	public List<Role> selectAllRoles() {
		RoleExample roleExample = new RoleExample();
		return roleMapper.selectByExample(roleExample);
	}

}
