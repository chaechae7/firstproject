package com.kh.spring.member.model.dao;

import org.springframework.stereotype.Repository;

import com.kh.spring.member.model.vo.Member;


public interface MemberDAO {

	int insertMember(Member member);

}
