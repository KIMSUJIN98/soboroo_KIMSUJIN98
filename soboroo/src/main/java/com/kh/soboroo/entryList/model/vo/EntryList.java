package com.kh.soboroo.entryList.model.vo;

import java.sql.Date;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@NoArgsConstructor
@Getter
@Setter
@ToString
public class EntryList {
	 private int no;
	 private String entryId;
	 private String title;
	 private String waitNy;
	 private Date startDate;
	 private Date endDate;
	 private int memNo;
	 private int tableNo;
}
