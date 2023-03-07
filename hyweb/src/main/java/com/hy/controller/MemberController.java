package com.hy.controller;

import java.util.*;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.hy.member.model.MemberDAO;
import com.hy.member.model.MemberDTO;

@Controller
public class MemberController {
	
	@Autowired
	private MemberDAO memberDao;
	
	
	/**회원가입 관련 메서드*/
	
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
	
	@RequestMapping("idCheckForm.hy")
	public String idCheckForm() {
		return "member/idCheck";
	}
	
	@RequestMapping(value="idCheck.hy",method=RequestMethod.POST)
	public ModelAndView idCheck(MemberDTO dto) {
		
		boolean result=memberDao.idCheck(dto.getId());
		
		ModelAndView mav=new ModelAndView();
		
		String str="";
		if(result) {
			mav.addObject("str", dto.getId()+"는 중복된 아이디입니다.");
			mav.addObject("goPage", "idCheckForm.hy");
			mav.setViewName("member/memberPopup");
		}else {
			mav.addObject("userid", dto.getId());
			mav.addObject("str", dto.getId()+"는 사용 가능합니다.");
			mav.setViewName("member/idCheckOk");
		}
		
		return mav;
		
	}
	
	
	/**로그인 관련 메서드*/
	
	@RequestMapping("loginForm.hy")
	public String loginForm() {
		return "member/login";
	}
	
	@RequestMapping(value="login.hy",method = RequestMethod.POST)
	public ModelAndView loginCheck(@RequestParam("userid")String userid,
									@RequestParam("userpwd")String userpwd,
									@RequestParam(value="saveid",required = false)String saveid,
									HttpSession session,
									HttpServletResponse resp) {
		
		int result=memberDao.loginCheck(userid, userpwd);
		
		ModelAndView mav=new ModelAndView();
		
		String str="";
		if(result==memberDao.Login_ok) {
			
			String username=memberDao.getUserInfo(userid);
			
			session.setAttribute("userid", userid);
			session.setAttribute("username", username);
			
			//쿠키
			if(saveid==null) {
				Cookie ck=new Cookie("saveid",userid);
				ck.setMaxAge(0);
				resp.addCookie(ck);
			}else {
				Cookie ck=new Cookie("saveid",userid);
				ck.setMaxAge(60*60*24*30);
				resp.addCookie(ck);
			}
			
			
			mav.addObject("str", userid+"님 환영합니다~!");
			mav.setViewName("member/loginOk");
			
		}else if(result==memberDao.Not_id || result==memberDao.Not_pwd){
			mav.addObject("str","아이디 또는 비밀번호를 확인해주세요.");
			mav.addObject("goPage","/login.hy");
			mav.setViewName("member/memberPopup");
		}else {
			mav.addObject("str","고객센터로 문의 바랍니다.");
			mav.addObject("goPage","/login.hy");
			mav.setViewName("member/memberPopup");
		}
		
		return mav;
		
	}
	
	
	/**로그아웃 관련 메서드*/
	@RequestMapping("logout.hy")
	public ModelAndView logoutOk(HttpServletRequest req) {
		
		HttpSession session=req.getSession();
		session.invalidate(); //설정된 세션 삭제
		
		ModelAndView mav=new ModelAndView();
		
		mav.setViewName("redirect:index.hy"); //리다이렉트 방식

		return mav;
		
	}
	
}
