package com.itcia.itgoo.dao;

import java.security.Principal;
import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.ModelAndView;

import com.itcia.itgoo.dto.Adopt;
import com.itcia.itgoo.dto.CareSheet;
import com.itcia.itgoo.dto.Dog;
import com.itcia.itgoo.dto.Reservation;
import com.itcia.itgoo.dto.SmallMeeting;
import com.itcia.itgoo.dto.VirtualAdopt;

public interface IClientDao {
	@Select("select max(dogpics.dogpic) dogpic,dog.dogid,dog.DOGAGE,dog.dogname,dog.dogspecial,dog.sex,dog.shelterid,dog.status "
			+ "from dog join dogpics on dog.DOGID=dogpics.DOGID GROUP BY "
			+ "dog.dogid, dog.dogid, dog.DOGAGE, dog.dogname, dog.dogspecial, "
			+ "dog.sex, dog.shelterid, dog.status")
	List<Dog> adoplist();

	@Select("SELECT dogpic as dogpics FROM dog inner join dogpics on dogpics.dogid = dog.dogid where dog.dogid=#{dogid}")
	List<String> adoptlistdetail(@Param("dogid") String dogid);

	@Select("select * from dog where dogid=#{dogid}")
	Dog dogDetail(String dogid);

	@Select("SELECT * FROM dog join adopt on dog.dogid=adopt.dogid where dog.dogid=#{param1} and adopt.id=#{param2}"
	) Adopt AdoptDetail(String dogid,String id);

	@Insert("insert into adopt values(#{id},#{dogid},#{phase},#{score},#{idfile},#{dogcareer},#{job},#{why},#{teststart})")
	void insertapplyadopt(Adopt ad);

	List<Adopt> myPhasedogList(Adopt ad);


	List<Reservation> showmyactivity(Reservation rs);


	Dog finalsook(Dog dog);

	@Update("UPDATE adopt SET phase='6' WHERE dogid=#{dogid}")
	void updateDog(Reservation rs);

	@Delete("delete from adopt where dogid=#{dogid}")
	void deleteadopt(Reservation rs);


	List<CareSheet> showcaresheet();

	@Insert("insert into answercaresheet values(#{id},#{dogid},#{questionnum},#{answer})")
	void submitSheet(CareSheet cs);

	void regismallmeeting(SmallMeeting sm);

	@Select("select * from smallmeeting")
	List<SmallMeeting> smalllist(SmallMeeting sm);

	List<SmallMeeting> myappliedsmall(SmallMeeting sm);

	List<SmallMeeting> myrecruitsmall(SmallMeeting sm);

	SmallMeeting smalllistdetail(Integer smallnumber);

	void insertsmallmeeting(SmallMeeting sm);

	void updatesmallmeeting(SmallMeeting sm);


	boolean delmysmallmeeting(SmallMeeting sm);

	void updatemeetparticipatecnt(SmallMeeting sm);

	SmallMeeting myenrollsmalldetail(Integer smallnumber);

	@Insert("insert into virtualadopt values(#{id},#{dogid},#{donation},#{payday},sysdate,0)")
	void virtualadoptapply(VirtualAdopt va);

	@Select("SELECT * FROM virtualadopt join dog on dog.dogid=virtualadopt.dogid where virtualadopt.id=#{id} and virtualadopt.dogid=#{dogid}")
	List<VirtualAdopt> myvirtual(VirtualAdopt va);


	@Select("SELECT * FROM recentthumb join recent on recentthumb.recentid=recent.recentid join virtualadopt on virtualadopt.id=recent.id where recent.id=#{id}")
	List<VirtualAdopt> showmyvirtualadopt(@Param("id")String String);

	void completesmall(SmallMeeting sm);

	void cancelsmall(SmallMeeting sm);
	
	@Select("select * from smallmeeting where smallnumber=#{smallnumber}")
	List<SmallMeeting> mysmallmeetingdetail(Principal p, SmallMeeting sm,@Param("smallnumber") int smallnumber);



	/*
	 * @Select("SELECT * FROM recentpics join recent on recentpics.recentid = recent.recentid \r\n"
	 * + "join virtualadopt on virtualadopt.dogid=recent.dogid \r\n" +
	 * "join dog on dog.dogid=virtualadopt.dogid \r\n" +
	 * "where virtualadopt.id=#{id}") List<VirtualAdopt> showvirtualdog(VirtualAdopt
	 * va);
	 */

}
