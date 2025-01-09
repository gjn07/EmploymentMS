package com.gjn.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.gjn.pojo.Role;

@Service
public interface RoleService {

	List<Role> selectAllRoles();
}
