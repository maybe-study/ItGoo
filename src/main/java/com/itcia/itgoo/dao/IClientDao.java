package com.itcia.itgoo.dao;

import java.util.List;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.itcia.itgoo.dto.Adopt;
import com.itcia.itgoo.dto.Dog;
import com.itcia.itgoo.dto.Member;
import com.itcia.itgoo.dto.Reservation;
import com.itcia.itgoo.dto.SmallMeeting;

public interface IClientDao {
	@Select("select max(dogpics.dogpic) dogpic,dog.dogid,dog.DOGAGE,dog.dogname,dog.dogspecial,dog.sex,dog.shelterid,dog.status "
			+ "from dog join dogpics on dog.DOGID=dogpics.DOGID GROUP BY "
			+ "dog.dogid, dog.dogid, dog.DOGAGE, dog.dogname, dog.dogspecial, "
			+ "dog.sex, dog.shelterid, dog.status")
	List<Dog> adoplist();

	@Select("SELECT dogpic FROM dog inner join dogpics on dogpics.dogid = dog.dogid")
	List<String> adoptlistdetail(String dogid);
	
	@Select("SELECT * FROM dog where dogid=#{param1}")
	Dog dogDetail(String dogid);

	
	@Insert("insert into adopt values(#{id},#{dogid},#{phase},#{score},#{idfile},#{dogcareer},#{job},#{why},#{teststart})")
	void insertapplyadopt(Adopt ad);

//	@Select("SELECT dogpic,dogname,dogage,dogspecial,sex FROM adopt left join DOG "
//			+ "on dog.dogid=adopt.dogid left join dogpics on dogpics.dogid=adopt.dogid "
//			+ "where adopt.id=#{id}")
	List<Adopt> myPhasedogList(Adopt ad);

	
	List<Reservation> showmyactivity(Reservation rs);

	
	List<Reservation> finalsook(Reservation rs);

	void regismallmeeting(SmallMeeting sm);
	


}
