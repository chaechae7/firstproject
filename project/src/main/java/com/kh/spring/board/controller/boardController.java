package com.kh.spring.board.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.kh.spring.board.model.service.boardService;
import com.kh.spring.board.model.vo.Board;

@Controller
@RequestMapping("/board")
public class boardController {
	
	//국내선수 게시판으로 이동
	@RequestMapping("/nationalBoard.do")
	public String nationalBoard() {
		return "nationalBoard";
	}
	
	//게시글 등록 페이지로 이동
	@RequestMapping(value="/write", method=RequestMethod.GET)
	
	public String writeGET() {
		
		return "/board/write";
		
	}
	
	//게시글 등록 처리
	@RequestMapping(value = "/write", method=RequestMethod.POST)
	
	public String writePOST(Board board, RedirectAttributes redirectAttributes) {
		
		
		redirectAttributes.addFlashAttribute("msg", "게시글 등록 성공!");
		
		return "redirect:/board/list";
	}
	
	
}
