package com.hy.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class ReviewController {

	@RequestMapping("/reviewForm.hy")
	public String reviewForm() {
		return "review/reviewForm";
	}
	
}
