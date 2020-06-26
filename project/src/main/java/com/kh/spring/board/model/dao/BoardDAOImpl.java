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
	public List<Board> boardList(Board board) {
		System.out.println("BoardDAO"+board);
		
		return sqlSession.selectList("Board.boardList", board);
	}
	
}
