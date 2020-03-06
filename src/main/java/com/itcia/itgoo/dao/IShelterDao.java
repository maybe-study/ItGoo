package com.itcia.itgoo.dao;

import org.apache.ibatis.annotations.Insert;

import com.itcia.itgoo.dto.Company;
import com.itcia.itgoo.dto.Member;
import com.itcia.itgoo.dto.commonmember;

import oracle.net.aso.c;

public interface IShelterDao {


	@Insert("INSERT INTO COMPANY VALUES(#{companyid},#{companyname},#{companyboss},#{companyphone},#{companyemail},"
			+ "#{companylocation},#{companycard},#{companykind},#{enroll})")
	void insertShelter(commonmember cmb);

	@Insert("INSERT INTO CLIENT VALUES(#{companyid},#{password},#{useradderess},#{useremail},#{username},"
			+ "#{phone},#{birthday},#{enabled})")
	void insertClient(commonmember cmb);
}
