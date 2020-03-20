package com.itcia.itgoo.dto;

import java.util.List;

import org.apache.ibatis.type.Alias;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.experimental.Accessors;


//@Getter@Setter
@NoArgsConstructor
@AllArgsConstructor
@Alias("reservation")
@Data
@Accessors(chain=true)
public class Reservation {
	private int activitynum;
	private String activityname;
	private String activitydate;
	private String activitystart;
	private int activityprice;
	private int activitytime;
	private int activitydogcnt;
	private String activityexplanation;
	private String companyid;
	private String activitypic;
	private String companyname;
	private String companyboss;
	private String companyemail;
	private String companylocation;
	private String companycard;
	private String companyphone;
	private int companykind;
	private int enroll;
	private List<String> activitypics;
	private String username;
	private String dogname;
	private String id;
	private int dogid;
}
