package com.itcia.itgoo.dto;

import org.apache.ibatis.type.Alias;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.experimental.Accessors;

@NoArgsConstructor
@AllArgsConstructor
@Alias("dog")
@Data
@Accessors(chain=true)
public class Dog {
	private int dogid;
	private String dogname;
	private String dogage;
	private String dogspecial;
	private String dogjungsung;
	private String shelterid;
	private int sex;
}
