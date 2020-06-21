package com.kh.spring;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class ProjectController {

	@RequestMapping("/index")
	public String home() {
		return "index";
	}
	
}
