package com.kh.spring.board.model.service;

import java.util.List;

import com.kh.spring.board.model.vo.Board;

public interface BoardService {

	List<Board> boardList();

	Board selectOnePost(int boardNo);

	int boardUpload(Board board);

	int boardDelete(int boardNo);


	
}
