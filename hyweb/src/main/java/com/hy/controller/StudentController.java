package com.hy.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.hy.student.model.StudentDAO;
import com.hy.student.model.StudentDTO;

@Controller
public class StudentController {
	
	@Autowired
	private StudentDAO studentDao;

	@RequestMapping("/student.hy")
	public String studentPage() {
		return "student/student";
	}
	
	
	@RequestMapping("/studentAdd.hy")
	public ModelAndView studentAdd(StudentDTO dto) {
		
		int result=studentDao.studentAdd(dto);
		String str=result>0?"등록이 완료되었습니다~!":"등록에 실패하였습니다ㅠ";
		
		ModelAndView mav=new ModelAndView();
		mav.addObject("str", str);
		mav.addObject("goPage", "student.hy");
		mav.setViewName("student/studentPopup");
		
		return mav;
		
	}
	
	@RequestMapping("/studentList.hy")
	public ModelAndView studentList() {
		
		List<StudentDTO> lists=studentDao.studentList();
		
		ModelAndView mav=new ModelAndView();
		mav.addObject("lists", lists);
		mav.setViewName("student/studentList");
		
		return mav;
		
	}
	
	@RequestMapping("/studentUpdateForm.hy")
	public ModelAndView studentUpdateForm(@RequestParam("idx")int idx) {
		
		StudentDTO list=studentDao.sutdentUpSearch(idx);
		
		ModelAndView mav=new ModelAndView();
		mav.addObject("list", list);
		mav.setViewName("student/studentUpdate");
		
		return mav;
		
	}
	
	@RequestMapping("/studentUpdate.hy")
	public ModelAndView studentUpdate(StudentDTO dto) {
		
		int result=studentDao.studentUpdate(dto);
		String str=result>0?"학생 성적 수정이 완료되었습니다~!":"학생 성적 수정에 실패하였습니다ㅠ";
		
		ModelAndView mav=new ModelAndView();
		mav.addObject("str", str);
		mav.addObject("goPage", "student.hy");
		mav.setViewName("student/studentPopup");
		
		return mav;
		
	}
	
	
}
