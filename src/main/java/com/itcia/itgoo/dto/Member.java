package com.itcia.itgoo.dto;

import org.apache.ibatis.type.Alias;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.experimental.Accessors;


//@Getter@Setter
@NoArgsConstructor
@AllArgsConstructor
@Alias("membssser")
@Data
@Accessors(chain=true)
public class Member {
	private String companyid;
	private String companyname;
	private String companyboss;
	private String companyphone;
	private String companymail; 
	private String companylocation;
	private int companycard;
	private int enroll;
	
	

	/*
	 * private String password; private String id; private int enabled;
	 */

	

	
}
