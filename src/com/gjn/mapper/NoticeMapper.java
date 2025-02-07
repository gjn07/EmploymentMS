package com.gjn.mapper;

import java.util.List;
import org.apache.ibatis.annotations.Param;

import com.gjn.pojo.Notice;
import com.gjn.pojo.NoticeExample;

public interface NoticeMapper {
	int countByExample(NoticeExample example);

	int deleteByExample(NoticeExample example);

	int deleteByPrimaryKey(Integer id);

	int insert(Notice record);

	int insertSelective(Notice record);

	List<Notice> selectByExampleWithBLOBs(NoticeExample example);

	List<Notice> selectByExample(NoticeExample example);

	Notice selectByPrimaryKey(Integer id);

	int updateByExampleSelective(@Param("record") Notice record, @Param("example") NoticeExample example);

	int updateByExampleWithBLOBs(@Param("record") Notice record, @Param("example") NoticeExample example);

	int updateByExample(@Param("record") Notice record, @Param("example") NoticeExample example);

	int updateByPrimaryKeySelective(Notice record);

	int updateByPrimaryKeyWithBLOBs(Notice record);

	int updateByPrimaryKey(Notice record);

	List<Notice> selectAllNotices();
}