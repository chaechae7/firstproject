package com.kh.spring.board.model.vo;

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
@AllArgsConstructor
@NoArgsConstructor
public class Board implements Serializable{
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	private int board_no;
	private String member_id;
	private int c_code;
	private String board_titile;
	private String board_user;
	private Date board_date;
	private int counter;
	private String board_originalfile1;
	private String board_originalfile2;
	private String board_originalfile3;
	private String board_renamedfile1;
	private String board_renamedfile2;
	private String board_renamedfile3;
	private int board_like;
	private int board_unlike;
	

}
