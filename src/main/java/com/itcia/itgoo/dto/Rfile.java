package com.itcia.itgoo.dto;

import org.apache.ibatis.type.Alias;

import lombok.Data;
import lombok.experimental.Accessors;

@Alias("rfile")
@Data
@Accessors(chain = true)
public class Rfile {
	private String recentpic;
	private int recentid;
}
