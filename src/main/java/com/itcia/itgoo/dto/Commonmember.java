package com.itcia.itgoo.dto;

import org.apache.ibatis.type.Alias;



import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.experimental.Accessors;

@NoArgsConstructor
@AllArgsConstructor
@Data
@Alias("commonmember")
@Accessors(chain=true)
public class Commonmember {
//보호소
	private String companyid;
	private String companyname;
	private String companyboss;
	private String companyphone;
	private String companyemail;
	private String companylocation;
	private String companycard;
	private int companykind;
	private int enroll;

//유저
	private String id;
	private String password;
	private String useraddress;
	private String useremail;
	private String username;
	private String phone;
	private String birthday;
	private int enabled;
	
}
