package com.kh.spring.member.controller;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.kh.spring.member.model.service.MemberService;
import com.kh.spring.member.model.vo.Member;

@RestController
@RequestMapping("/member")
public class MemberController {
	
	@Autowired
	private MemberService memberService;

	//회원가입요청
	public String enroll(Member member, RedirectAttributes redirectAttributes) {
		
		//비밀번호 암호화
//		String memberPwd = member.getMember_pwd();
//		
//		String bcryptPwd = bcrypt.encode(memberPwd);
//		member.setMember_pwd(bcryptPwd);
		
		
		int result = memberService.insertMember(member);
		
		String msg = "";
		if(result>0) msg = "회원가입 성공하셨습니다.";
		else msg = "회원가입 실패!";
		
		//메세지와함께 리다이렉트
		redirectAttributes.addFlashAttribute("msg", msg);
	
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
