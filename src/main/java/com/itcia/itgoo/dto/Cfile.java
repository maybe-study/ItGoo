package com.itcia.itgoo.dto;

import java.util.List;

import org.apache.ibatis.type.Alias;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.experimental.Accessors;

@NoArgsConstructor
@AllArgsConstructor
@Alias("cflie")
@Data
@Accessors(chain=true)
public class Cfile {
	private String companypic;
	private String companyid;
}
