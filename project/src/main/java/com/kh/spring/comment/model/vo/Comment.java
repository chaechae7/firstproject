package com.kh.spring.comment.model.vo;

import java.io.Serializable;
import java.sql.Date;

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
public class Comment implements Serializable{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	
	private int board_no;
	private String member_id;
	private int comment_no;
	private String comment_content;
	private String comment_user;
	private Date comment_date;
	private int comment_ref; //부모
	private int comment_step; //자식
	

}
