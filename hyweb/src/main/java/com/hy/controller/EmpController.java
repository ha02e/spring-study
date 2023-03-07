package com.hy.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class EmpController {

	@RequestMapping("/emp.hy")
	public String emp() {
		return "emp/emp";
	}
	
}
