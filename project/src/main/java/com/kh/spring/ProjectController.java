package com.kh.spring;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class ProjectController {

	@RequestMapping("/")
	public String home() {
		return "index";
	}
	
//	@RequestMapping("/nationalBoard.do")
//	public String nationalBoard() {
//		return "nationalBoard";
//	}
	
	
	
}
