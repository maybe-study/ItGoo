package com.itcia.itgoo.dto;

import org.apache.ibatis.type.Alias;

import lombok.Data;
import lombok.experimental.Accessors;

@Alias("dfile")
@Data
@Accessors(chain = true)
public class Dfile {
	private String dogpic;
	private int dogid;
}
