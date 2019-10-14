package com.neu.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.neu.po.AdminUser;
import com.neu.service.TestService;
@Controller
@RequestMapping("/test")
public class TestController {
	@Autowired
	private TestService testService;
	@RequestMapping("/hello")
	public String hello(Model model){
		List<AdminUser> list = testService.queryAll();
		model.addAttribute("list", list);
		return "test";
	}
	
}
