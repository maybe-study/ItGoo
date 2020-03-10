package com.itcia.itgoo.dto;

import org.apache.ibatis.type.Alias;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.experimental.Accessors;

	@Alias("role")
	@NoArgsConstructor
	@AllArgsConstructor
	@Data
	@Accessors(chain = true)
	public class Role {
		private String id;
		private String role;
		
	}

