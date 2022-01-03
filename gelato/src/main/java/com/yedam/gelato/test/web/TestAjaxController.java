package com.yedam.gelato.test.web;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.yedam.gelato.test.EmpTest;
import com.yedam.gelato.test.service.EmpService;

@RestController
public class TestAjaxController {

	@Autowired EmpService service;
	
	@RequestMapping("/testAjax/info")
	public List<EmpTest> info () {
		System.out.println("1111");
		System.out.println(service.select());
		
		return service.select();
	}
	
}
