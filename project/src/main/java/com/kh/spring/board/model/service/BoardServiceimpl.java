package com.kh.spring.board.model.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.spring.board.model.dao.BoardDAO;
import com.kh.spring.board.model.vo.Board;

@Service
public class BoardServiceimpl implements BoardService {
	
	@Autowired
	private BoardDAO boardDAO;

	@Override
	public List<Board> boardList() {

		return boardDAO.boardList();
	}

	@Override
	public Board selectOnePost(int boardNo) {
		
		return boardDAO.selectPostOne(boardNo);
	}

	@Override
	public int boardUpload(Board board) {
		
		return boardDAO.boardUpload(board);
	}


	
}
