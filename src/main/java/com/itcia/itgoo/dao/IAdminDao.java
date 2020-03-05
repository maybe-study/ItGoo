package com.itcia.itgoo.dao;

import java.util.List;

import org.apache.ibatis.annotations.Select;

import com.google.gson.JsonElement;
import com.itcia.itgoo.dto.Activity;
import com.itcia.itgoo.dto.Company;
import com.itcia.itgoo.dto.Dog;

public interface IAdminDao {
	int getContents();
	@Select("select * from company where companykind=1 and enroll=0")
	List<Company> adminWaitActivity();
	@Select("select * from company where companykind=1 and enroll=1")
	List<Company> adminEnrolledActivity();
	@Select("select * from company where companykind=2 and enroll=0")
	List<Company> adminWaitShelter();
	@Select("select * from company where companykind=2 and enroll=1")
	List<Company> adminEnrolledShelter();
	@Select("select * from company where companyid=#{companyid}")
	Company adminCompany(String companyid);
	@Select("select * from dog where shelterid=#{shelterid}")
	List<Dog> adminDogs(String companyid);
	@Select("select * from activity where companyid=#{companyid}")
	List<Activity> adminActivities(String companyid);
	
	
}

