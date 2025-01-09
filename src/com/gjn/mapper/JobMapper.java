package com.gjn.mapper;

import java.util.List;
import org.apache.ibatis.annotations.Param;

import com.gjn.pojo.Job;
import com.gjn.pojo.JobExample;

public interface JobMapper {
	int countByExample(JobExample example);

	int deleteByExample(JobExample example);

	int deleteByPrimaryKey(Integer jid);

	int insert(Job record);

	int insertSelective(Job record);

	List<Job> selectByExample(JobExample example);

	Job selectByPrimaryKey(Integer jid);

	int updateByExampleSelective(@Param("record") Job record, @Param("example") JobExample example);

	int updateByExample(@Param("record") Job record, @Param("example") JobExample example);

	int updateByPrimaryKeySelective(Job record);

	int updateByPrimaryKey(Job record);
}