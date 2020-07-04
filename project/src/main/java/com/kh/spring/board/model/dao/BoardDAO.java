package com.kh.spring.board.model.dao;

import java.util.List;

import com.kh.spring.board.model.vo.Board;

public interface BoardDAO {

	List<Board> boardList();

	Board selectPostOne(int boardNo);

	int boardUpload(Board board);

	int boardDelete(int boardNo);



}
