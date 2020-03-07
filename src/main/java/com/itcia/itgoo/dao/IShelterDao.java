package com.itcia.itgoo.dao;

import org.apache.ibatis.annotations.Insert;

import com.itcia.itgoo.dto.Commonmember;

public interface IShelterDao {


	@Insert("INSERT INTO COMPANY VALUES(#{companyid},#{companyname},#{companyboss},#{companyphone},#{companyemail},"
			+ "#{companylocation},#{companycard},#{companykind},#{enroll})")
	void insertShelter(Commonmember cmb);

	@Insert("INSERT INTO CLIENT VALUES(#{companyid},#{password},#{useradderess},#{useremail},#{username},"
			+ "#{phone},#{birthday},#{enabled})")
	void insertClient(Commonmember cmb);
}
