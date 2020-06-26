package com.kh.spring.member.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.kh.spring.member.model.vo.Member;

@Controller
@RequestMapping("/member")
public class MemberController {
	
	//회원가입 요청
	@PostMapping("/enroll")
	public String enroll(Member member, RedirectAttributes redirectAttributes) {
		
		 
		
		return "redirect:/";
	}
	
	
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
