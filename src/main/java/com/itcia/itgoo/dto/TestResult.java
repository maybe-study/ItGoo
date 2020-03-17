package com.itcia.itgoo.dto;

import org.apache.ibatis.type.Alias;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.experimental.Accessors;

//@Getter@Setter
@NoArgsConstructor
@AllArgsConstructor
@Alias("testresult")
@Data
@Accessors(chain=true)
public class TestResult {
	private int questionnum;
	private int correct;
	private int point;
	private String question;
	private int answer;

}
