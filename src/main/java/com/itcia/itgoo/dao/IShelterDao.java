package com.itcia.itgoo.dao;

import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.itcia.itgoo.dto.Commonmember;
import com.itcia.itgoo.dto.Company;
import com.itcia.itgoo.dto.Dfile;
import com.itcia.itgoo.dto.Dog;
import com.itcia.itgoo.dto.Member;

public interface IShelterDao {


	@Insert("INSERT INTO COMPANY VALUES(#{companyid},#{companyname},#{companyboss},#{companyphone},#{companyemail},"
			+ "#{companylocation},#{companycard},#{companykind},#{enroll})")
	void insertShelter(Commonmember cmb);

	@Insert("INSERT INTO CLIENT VALUES(#{id},#{password},#{useraddress},#{useremail},#{username},"
			+ "#{phone},#{birthday},#{enabled})")
	void insertClient(Commonmember cmb);

	@Insert("INSERT INTO COMPANYPIC  VALUES(#{param1},#{param2})")
	void insertPic(String param1, String param2);
//사진 다중으로 보냄 ↑
//	@Insert("INSERT INTO COMPANY VALUES(#{companycard},#{companyid})")
//	void insertPichture(String companyid,String companycard);
	@Insert("INSERT INTO COMPANY VALUES(#{companyid},#{companyname},#{companyboss},#{companyphone},#{companyemail},"
			+ "#{companylocation},#{companycard},#{companykind},#{enroll})")
	void insertCompany(Commonmember cMember);

	//@Select("SELECT * FROM CLIENT WHERE id=#{id}")
	Member xduplicateid(Member mb);
	
	@Insert("insert into role values(#{param1},#{param2})")
	void insertRole(String id, String string);

	
	@Insert("INSERT INTO DOG VALUES(dog_seq.nextval,#{dogname},#{dogage},#{dogspecial},#{dogjungsung},#{shelterid},#{sex},0)")
	void insertDog(Dog dog);

	
	void inserDogPics(Dfile df);

	
	@Select("SELECT * FROM DOG WHERE SHELTERID=#{shelterid}")
	List<Dog> shelterdelete(Dog dog);
	

	@Select("SELECT * FROM COMPANY WHERE companyid=#{companyid}")
	Company shelterMyInfo(Company c);

	int updateshelterlocation(Company cp);

	@Select("select dogpic from dogpics where dogid=#{dogid}")
	List<String> shelterdogpics(Integer dogid);
	
	@Select("select * from dog where dogid=#{dogid}")
	Dog shelterdeletedetail(Integer dogid);
	
	boolean dogDeleteBtn(Dog dog);

	void insertCompanyLocPic(String param1, String param2);

	void updateCompanyCardPic(String param1, String param2);

	boolean deleteCompanyLocPic(Company cp);


	
	

	
}
