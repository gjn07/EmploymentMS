package com.gjn.mapper;

import java.util.List;

import com.gjn.pojo.User;

public interface UserCustomMapper {
	List<User> selectUserAndRoleName();
}