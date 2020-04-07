package com.itcia.itgoo.dto;

import org.apache.ibatis.type.Alias;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.experimental.Accessors;

//@Getter@Setter
@NoArgsConstructor
@AllArgsConstructor
@Alias("chat")
@Data
@Accessors(chain=true)
public class Chat {
	private int chatnum;
	private int smallnumber;
	private String id;
	private String chat;
}
