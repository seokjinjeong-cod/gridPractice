package com.yedam.gelato.test.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.yedam.gelato.test.EmpTest;
import com.yedam.gelato.test.dao.EmpMapper;
import com.yedam.gelato.test.service.EmpService;

@Service
public class EmpServiceImpl implements EmpService {

	@Autowired EmpMapper mapper;
	
	@Override
	public List<EmpTest> select() {
		
		return mapper.select();
	}

}
