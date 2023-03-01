package com.hy.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.hy.member.model.MemberDAO;
import com.hy.member.model.MemberDTO;

@Controller
public class MemberController {
	
	@Autowired
	private MemberDAO memberDao;
	
	@RequestMapping(value="/memberJoin.hy", method=RequestMethod.GET)
	public ModelAndView memberJoinForm() {
		
		ModelAndView mav=new ModelAndView();
		mav.setViewName("member/memberJoin");
		
		return mav;
		
	}
	
	@RequestMapping(value="/memberJoin.hy", method=RequestMethod.POST)
	public ModelAndView memberJoin(MemberDTO dto) {
		
		int result=memberDao.memberJoin(dto);
		String str=result>0?"회원가입을 축하합니다~!":"회원가입에 실패하였습니다..";
		
		ModelAndView mav=new ModelAndView();
		
		mav.addObject("str",str);
		mav.addObject("goPage","/hyweb/index.hy");
		mav.setViewName("member/memberPopup");
		
		return mav;
		
	}
	
}
