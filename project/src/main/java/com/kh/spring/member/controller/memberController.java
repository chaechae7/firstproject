package com.kh.spring.member.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/myPage")
public class memberController {
	
	//myPageMain으로 이동
	@RequestMapping("/myPageMain.do")
	public String myPageMain() {
		return "/myPage/myPageMain";
	}
	
	//viewMyPosts로 이동
	@RequestMapping("/viewMyPosts.do")
	public String viewMyPosts() {
		return "/myPage/viewMyPosts";
	}
	

}
