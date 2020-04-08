package com.itcia.itgoo.dto;

import org.apache.ibatis.type.Alias;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.experimental.Accessors;

//@Getter@Setter
@NoArgsConstructor
@AllArgsConstructor
@Alias("test")
@Data
@Accessors(chain=true)
public class Test {
	private int questionnum;
	private String id;
	private int dogid;
	private int answer;
	private int pointSum;

}
