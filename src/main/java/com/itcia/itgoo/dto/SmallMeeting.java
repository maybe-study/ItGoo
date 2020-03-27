package com.itcia.itgoo.dto;

import java.util.List;

import org.apache.ibatis.type.Alias;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.experimental.Accessors;

@NoArgsConstructor
@AllArgsConstructor
@Alias("smallmeeting")
@Data
@Accessors(chain=true)
public class SmallMeeting {
	private int smallnumber;
	private String id;
	private String smalllocation;
	private int maximumdog;
	private String meetingname;
	private int meetparticipatecnt;
	private String time;
	private int smalldogcnt;
	private String meetingdate;
	
	
}
