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
@Alias("recent")
@Data
@Accessors(chain=true)
public class Recent {
	private int dogid;
	private String id;
	private int recentid;
	private String message;
	private String dogname;
	private List<String> recentpic;
	private String  recentthumb;
}
