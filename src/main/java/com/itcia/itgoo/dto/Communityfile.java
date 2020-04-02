package com.itcia.itgoo.dto;

import org.apache.ibatis.type.Alias;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.experimental.Accessors;

@NoArgsConstructor
@AllArgsConstructor
@Data
@Alias("Communityfile")
@Accessors(chain=true)
public class Communityfile {

	
	private String communityfile;
	private int communitynum;
}
