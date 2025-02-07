package com.gjn.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.gjn.pojo.Job;

@Service
public interface JobService {

	int addJob(Job job);

	List<Job> selectAllJobs();

	List<Job> selectJobLike(Job job);

	int updateJob(Job jbo);

	int delteJobById(int jid);

	List<Job> SelectByjName(String jname);

}
