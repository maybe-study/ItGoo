package com.itcia.itgoo.dao;

import org.apache.ibatis.annotations.Insert;

import com.itcia.itgoo.dto.Member;

public interface IAdminDao {
	int getContents();

	@Insert("INSERT INTO COMPANY VALES(#{COMPANYID},#{COMPANYNAME},#{COMPANYBOSS},#{COMPANYPHONE},#{COMPANYEMAIL},#{COMPANYLOCTION},#{COMPANYCARD},#{COMPANYKIND},#{ENROLL})")
	boolean memberJoin(Member mb);
	
}

