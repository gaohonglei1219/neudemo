package com.neu.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.neu.mapper.TestMapper;
import com.neu.po.AdminUser;
import com.neu.service.TestService;
@Service
public class TestServiceImpl implements TestService{
	@Autowired
	private TestMapper testMapper;
	@Override
	public List<AdminUser> queryAll() {
		// TODO Auto-generated method stub
		return testMapper.queryAll();
	}

}
