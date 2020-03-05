package com.itcia.itgoo.dto;

import org.apache.ibatis.type.Alias;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.experimental.Accessors;

//@Getter@Setter
@NoArgsConstructor
@AllArgsConstructor
@Alias("dog")
@Data
@Accessors(chain=true)
public class Dog {
	private int dogid;
	private String dogname;
	private int dogage;
	private String dogspecial;
	private int dogjungsung;
	private String shelterid;
	private int sex;
}
