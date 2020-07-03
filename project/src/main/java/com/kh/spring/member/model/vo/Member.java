package com.kh.spring.member.model.vo;

import java.io.Serializable;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;


@Setter
@Getter
@ToString
@NoArgsConstructor
@AllArgsConstructor
public class Member implements Serializable{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	private String memberId;
	private String memberPwd;
	private String memberNik;

	
	
}
