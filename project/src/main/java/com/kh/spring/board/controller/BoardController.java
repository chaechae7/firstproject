package com.kh.spring.board.controller;

import java.io.File;
import java.io.IOException;
import java.nio.file.Path;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.apache.jasper.tagplugins.jstl.core.Redirect;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import org.springframework.web.servlet.view.RedirectView;

import com.kh.spring.board.model.service.BoardService;
import com.kh.spring.board.model.vo.Board;

import com.kh.spring.common.util.*;



@Controller
@RequestMapping("/board")

public class BoardController {
	
	@Autowired
	BoardService boardService;

	 // 국내선수 게시판으로 이동 후, 게시글 list 출력 
	 @RequestMapping(value = "/nationalBoard.do", method = RequestMethod.GET)
	 public String nationalBoardList(Model model) {
		 
	 List<Board> list = boardService.boardList(); 
	 model.addAttribute("list", list);
	  
	 return "/board/nationalBoard";
	 
	 }
	
	//게시글 쓰기 페이지로 이동
	@RequestMapping("/boardWrite.do")
		public String nationalBoardWrite() {
			
		return "/board/boardWrite";

	}
	
	//게시글 쓰기
	@RequestMapping(value = "/boardUpload.do", method =  RequestMethod.POST)		
		public String boardUpload(Board board, RedirectAttributes redirectAttributes) {
		
		int result = boardService.boardUpload(board);
		redirectAttributes.addFlashAttribute("msg", result>0?"등록 성공!":"등록 실패!");
		
		return "redirect:/board/nationalBoard.do";
		
	}
	
	//게시글 수정 view 페이지
	@RequestMapping(value = "/boardModify.do", method = RequestMethod.GET)
	public String boardModify(@RequestParam(value = "boardNo") int boardNo, Model model) {
		
		Board board = boardService.selectOnePost(boardNo);
		return "/board/boardModify.do";
	}
		
	//게시글 수정
	@RequestMapping(value = "/boardModify.do", method = RequestMethod.POST)
		public String boardModify(Board board, RedirectAttributes redirectAttributes) {
		
//		int result = boardService.boardModify(board);
//		redirectAttributes.addFlashAttribute("msg", result>0?"수정 성공!":"수정 실패!");
		
		return "redirect:/board/nationalBoard.do";
	}
	
	//게시글 삭제
	@RequestMapping(value = "/boardDelete.do", method = RequestMethod.POST)
	public String boardDelete(int boardNo, RedirectAttributes redirectAttributes) {
		
		int result = boardService.boardDelete(boardNo);
		redirectAttributes.addFlashAttribute("msg", result>0?"삭제 성공!":"삭제 실패!");
		
		return "redirect:/board/nationalBoard.do";
	}
	
	//선택한 게시글 view페이지로 이동(게시글 상세보기)
	@RequestMapping(value = "/boardView.do", method = RequestMethod.GET)
	public void nationalBoardView(@RequestParam(value = "boardNo") int boardNo, Model model) {
				
		Board board = boardService.selectOnePost(boardNo);
			
		model.addAttribute("board", board);
		
	}
	
	
	@PostMapping("/insertBoardImg.do")
	@ResponseBody
	public List<String> upload(@RequestParam("file") MultipartFile []file, HttpServletRequest request) {
		
		List<String> list = new ArrayList<>();
		
		//파일명 재생성
		
		for(MultipartFile f : file) {
			String originalFileName = f.getOriginalFilename();
			String renamedFileName = Utils.getRenamedFileName(originalFileName);
			
			//파일 이동 경로설정
			String saveDirectory = request.getServletContext().getRealPath("/resources/upload/admin/board");
			
			
			//파일 생성
			try {
				f.transferTo(new File(saveDirectory, renamedFileName));
			} catch (IllegalStateException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
			list.add(originalFileName);
			list.add(renamedFileName);
			list.add("../resources/upload/admin/board/"+renamedFileName);
			
		}
		
		return list;

	}
			
	
}

