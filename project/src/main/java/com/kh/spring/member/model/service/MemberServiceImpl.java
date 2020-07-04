package com.kh.spring.member.model.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.spring.member.model.dao.MemberDAO;
import com.kh.spring.member.model.vo.Member;

@Service
public class MemberServiceImpl implements MemberService {

	@Autowired
	private MemberDAO memberDAO;
	
	
	@Override
	public int insertMember(Member member) {

		return memberDAO.insertMember(member);

	}


	@Override
	public Member selectOne(String memberId) {
		// TODO Auto-generated method stub
		return memberDAO.selectOne(memberId);
	}

}
