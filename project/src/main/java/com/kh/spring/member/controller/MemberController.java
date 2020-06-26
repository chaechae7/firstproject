package com.kh.spring.member.controller;


import org.apache.jasper.tagplugins.jstl.core.Redirect;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import org.springframework.web.servlet.view.RedirectView;

import com.kh.spring.member.model.service.MemberService;
import com.kh.spring.member.model.vo.Member;

@Controller
@RequestMapping("/member")
public class MemberController {
	
	@Autowired
	private MemberService memberService;

	//회원가입요청
	@PostMapping("/enroll.do")
	public String enroll(Member member, RedirectAttributes redirectAttributes) {
		
		//비밀번호 암호화
//		String memberPwd = member.getMember_pwd();
//		
//		String bcryptPwd = bcrypt.encode(memberPwd);
//		member.setMember_pwd(bcryptPwd);
		
		
		int result = memberService.insertMember(member);
		
		String msg = "";
		if(result>0) msg = "회원가입에 성공하셨습니다!";
		else msg = "회원가입에 실패하셨습니다.";
		
		
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
