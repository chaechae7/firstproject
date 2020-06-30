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
	
	private int boardNo;
	private String memberId;
	private String categoryName;
	private String boardTitle;
	private String boardUser;
	private Date boardDate;
	private int boardCount;
	private String boardOriginalfile1;
	private String boardOriginalfile2;
	private String boardOriginalfile3;
	private String boardRenamedfile1;
	private String boardRenamedfile2;
	private String boardRenamedfile3;
	private int boardLike;
	private int boardUnlike;
	private String boardContents;
	
	public static long getSerialversionuid() {
		return serialVersionUID;
	}
	

}
