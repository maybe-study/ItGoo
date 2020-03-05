package com.itcia.itgoo.dto;

import org.apache.ibatis.type.Alias;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.experimental.Accessors;


//@Getter@Setter
@NoArgsConstructor
@AllArgsConstructor
@Alias("company")
@Data
@Accessors(chain=true)
public class Company {
	private String companyid;
	private String companyname;
	private String companyboss;
	private String companyemail;
	private String companylocation;
	private String companycard;
	private String companyphone;
	private int companykind;
	private int enroll;
}
