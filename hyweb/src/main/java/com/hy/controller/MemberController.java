package com.hy.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class MemberController {
	
	@RequestMapping(value="/memberJoin.hy", method=RequestMethod.GET)
	public ModelAndView memberJoinForm() {
		
		ModelAndView mav=new ModelAndView();
		mav.setViewName("member/memberJoin");
		
		return mav;
		
	}
}
