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
@Alias("dog")
@Data
@Accessors(chain=true)
public class Dog {
	private String id;
	private int dogid;
	private String dogname;
	private int dogage;
	private String dogspecial;
	private int dogjungsung;
	private String shelterid;
	private int sex;
	private String dogpic;
	private List<String> dogpics;
	private int status;

}
