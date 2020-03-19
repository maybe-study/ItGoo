package com.itcia.itgoo.dto;

import org.apache.ibatis.type.Alias;

import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.experimental.Accessors;

@NoArgsConstructor
@Alias("caresheet")
@Data
@Accessors(chain=true)
public class CareSheet {
	private String id;
	private int dogid;
	private int questionnum;
	private String question;
	private String answer;
}
