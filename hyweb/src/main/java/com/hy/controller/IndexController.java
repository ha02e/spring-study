package com.hy.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class IndexController {

	@RequestMapping("/index.hy")
	public ModelAndView index() {
		
		ModelAndView mav=new ModelAndView();
		mav.setViewName("index");
		
		return mav;
		
	}
	
}
