package com.kh.spring.board.model.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kh.spring.board.model.vo.Board;

@Repository
public class BoardDAOImpl implements BoardDAO {

	@Autowired
	SqlSessionTemplate sqlSession;

	@Override
	public List<Board> boardList() {
		
		return sqlSession.selectList("Board.boardList");
	}

	@Override
	public Board selectPostOne(int boardNo) {

		return sqlSession.selectOne("Board.selectPostOne", boardNo);
	}

	@Override
	public int boardUpload(Board board) {
		
		return sqlSession.insert("Board.boardUpload", board);
	}

	@Override
	public int boardDelete(int boardNo) {
		
		return sqlSession.delete("Board.boardDelete", boardNo);
	}

	
	
}
