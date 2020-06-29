package com.kh.spring.member.controller;


import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.kh.spring.member.model.service.MemberService;
import com.kh.spring.member.model.vo.Member;

import lombok.extern.slf4j.Slf4j;

@Slf4j
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
	
	//로그인
	@GetMapping("login.do")
	public String login(@RequestParam("Id") String memberId,
						@RequestParam("Pwd") String memberPwd,
			HttpSession session, RedirectAttributes redirectAttributes) {
		
		Member member = memberService.selectOne(memberId);
		
	
		if(member != null) {
			
			if(member.getMemberPwd().equals(memberPwd)) {
				System.out.println("로그인성공");
				session.setAttribute("memberLoggedIn", member);
				
			}else
				session.setAttribute("msg", "입력하신 아이디 혹은 비밀번호가 일치하지 않습니다.");

		}else 
			session.setAttribute("msg", "입력하신 아이디 혹은 비밀번호가 일치하지 않습니다.");
		
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
