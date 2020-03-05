package com.itcia.itgoo.dto;

import org.apache.ibatis.type.Alias;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.experimental.Accessors;


//@Getter@Setter
@NoArgsConstructor
@AllArgsConstructor
@Alias("activity")
@Data
@Accessors(chain=true)
public class Activity {
	private int activitynum;
	private String activityname;
	private String activitydate;
	private String activitystart;
	private int activitytime;
	private int activitydogcnt;
	private String activityexplanation;
	private String companyid;
	
}
