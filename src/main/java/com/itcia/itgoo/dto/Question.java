package com.itcia.itgoo.dto;

import java.util.List;

import org.apache.ibatis.type.Alias;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.experimental.Accessors;

@NoArgsConstructor
@AllArgsConstructor
@Alias("question")
@Data
@Accessors(chain=true)
public class Question {
	private int questionnum;
	private String question;
	private int correct;
	private String point;
	private int toggle;
	private List<Ex> exList;
}
