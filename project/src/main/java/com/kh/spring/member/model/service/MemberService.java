package com.kh.spring.member.model.service;

import org.springframework.stereotype.Service;

import com.kh.spring.member.model.vo.Member;

@Service
public interface MemberService {

	int insertMember(Member member);

}
