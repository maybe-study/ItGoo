package com.itcia.itgoo.dto;

import org.apache.ibatis.type.Alias;

import lombok.Data;
import lombok.experimental.Accessors;

@Alias("afile")
@Data
@Accessors(chain = true)
public class Afile {
	private String activitypic;
	private int activitynum;
}
