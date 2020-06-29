package com.kh.spring.member.model.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kh.spring.member.model.vo.Member;

@Repository
public class MemberDAOImpl implements MemberDAO {

	@Autowired
	private SqlSessionTemplate sqlsession;
	
	
	@Override
	public int insertMember(Member member) {
		// TODO Auto-generated method stub
		return sqlsession.insert("member.insertMember", member);
	}


	@Override
	public Member selectOne(String memberId) {
		// TODO Auto-generated method stub
		return sqlsession.selectOne("member.selectOne",memberId);
	}

}
