package com.itcia.itgoo.dao;

import java.util.List;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.itcia.itgoo.dto.Adopt;
import com.itcia.itgoo.dto.Dog;
import com.itcia.itgoo.dto.Member;

public interface IClientDao {
	@Select("SELECT * FROM dog inner join dogpics on dogpics.dogid = dog.dogid where ROWNUM=1")
	List<Dog> adoplist();

	@Select("SELECT dogpic FROM dog inner join dogpics on dogpics.dogid = dog.dogid")
	List<String> adoptlistdetail(String dogid);
	@Select("SELECT * FROM dog where dogid=#{param1}")
	Dog dogDetail(String dogid);

	
	@Insert("insert into adopt values(#{id},#{dogid},#{phase},#{score},#{idfile},#{dogcareer},#{job},#{why},#{teststart})")
	void insertapplyadopt(Adopt ad);

	List<Member> myadoptphase(Adopt ad);

}
