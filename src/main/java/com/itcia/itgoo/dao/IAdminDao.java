package com.itcia.itgoo.dao;

import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import com.itcia.itgoo.dto.Activity;
import com.itcia.itgoo.dto.Company;
import com.itcia.itgoo.dto.Dog;
import com.itcia.itgoo.dto.Ex;
import com.itcia.itgoo.dto.Question;

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
	@Select("select * from activity where companyid=#{companyid}")
	List<Activity> adminActivities(String companyid);

	@Update("update company set enroll=1  where companyid=#{companyid}")
	int adminOk(String companyid);
	@Delete("delete company where companyid=#{companyid}")
	int adminNo(String companyid);
	@Select("select * from activity where companyid=#{companyid}")
	List<Dog> adminDogs(String companyid);
	@Insert("insert into question values(test_seq.nextval,#{question},#{correct},#{point},#{toggle})")
	void addTest(Question question);
	void addEx(Ex ex);


}
