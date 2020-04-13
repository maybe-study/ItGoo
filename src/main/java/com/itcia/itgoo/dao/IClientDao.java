package com.itcia.itgoo.dao;

import java.security.Principal;
import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;
import org.springframework.dao.DuplicateKeyException;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.ModelAndView;

import com.google.gson.JsonElement;
import com.itcia.itgoo.dto.Adopt;
import com.itcia.itgoo.dto.CareSheet;
import com.itcia.itgoo.dto.Chat;
import com.itcia.itgoo.dto.Dog;
import com.itcia.itgoo.dto.Reservation;
import com.itcia.itgoo.dto.SmallMeeting;
import com.itcia.itgoo.dto.VirtualAdopt;

public interface IClientDao {
	@Select("select max(dogpics.dogpic) dogpic,dog.dogid,dog.DOGAGE,dog.dogname,dog.dogspecial,dog.sex,dog.shelterid,dog.status "
			+ "from dog join dogpics on dog.DOGID=dogpics.DOGID where dog.status=0 GROUP BY "
			+ "dog.dogid, dog.dogid, dog.DOGAGE, dog.dogname, dog.dogspecial, "
			+ "dog.sex, dog.shelterid, dog.status")
	List<Dog> adoplist();

	@Select("SELECT dogpic as dogpics FROM dog inner join dogpics on dogpics.dogid = dog.dogid where dog.dogid=#{dogid}")
	List<String> adoptlistdetail(@Param("dogid") String dogid);

	@Select("select * from dog where dogid=#{dogid}")
	Dog dogDetail(String dogid);

	@Select("SELECT * FROM dog join adopt on dog.dogid=adopt.dogid where dog.dogid=#{param1} and adopt.id=#{param2}"
	) Adopt AdoptDetail(String dogid,String id);

	@Insert("insert into adopt values(#{id},#{dogid},#{phase},#{score},#{idfile},#{dogcareer},#{job},#{why})")
	void insertapplyadopt(Adopt ad);

	List<Adopt> myPhasedogList(Adopt ad);


	List<Reservation> showmyactivity(Reservation rs);


	Dog finalsook(Dog dog);

	@Update("UPDATE adopt SET phase='6' WHERE dogid=#{dogid}")
	void updateDog(Reservation rs);

	@Delete("delete from adopt where dogid=#{dogid}")
	void deleteadopt(Reservation rs);

	@Update("update dog set status=0 WHERE dogid=#{dogid}")
	void deleteupdate(Reservation rs);

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

	@Insert("insert into virtualadopt values(#{id},#{dogid},#{donation},#{payday},sysdate,0,#{status})")
	void virtualadoptapply(VirtualAdopt va) throws DuplicateKeyException;

	@Select("select * from virtualadopt join dog on dog.dogid=virtualadopt.dogid where virtualadopt.id=#{id}")
	List<VirtualAdopt> myvirtual(VirtualAdopt va);


	@Select("select * from virtualadopt join dog on dog.dogid=virtualadopt.dogid where virtualadopt.id=#{id}")
	List<VirtualAdopt> showmyvirtualadopt(@Param("id")String String);

	void completesmall(SmallMeeting sm);

	void cancelsmall(SmallMeeting sm);

	@Select("select * from smallmeeting where smallnumber=#{smallnumber}")
	List<SmallMeeting> mysmallmeetingdetail(Principal p, SmallMeeting sm,@Param("smallnumber") int smallnumber);

	@Select("SELECT dog.dogid,dog.dogname,dog.dogage,virtualadopt.donation,virtualadopt.payday,recent.message,recent.title,recent.recentid FROM recent \r\n" +
			"join virtualadopt on recent.id=virtualadopt.id \r\n" +
			"join dog on dog.dogid=virtualadopt.dogid \r\n" +
			"where recent.dogid=#{dogid}")
	List<VirtualAdopt> clentrecentdetail(VirtualAdopt boyoung);

	@Update("update dog set status = 1 where dogid=#{dogid}")
	void updatestatusdog(Adopt ad);

	@Update("update adopt set phase = 7 where dogid=#{dogid}")
	void finalupdate(int dogid);

	@Update("update virtualadopt set status=2 where dogid=#{dogid}")
	void virtualdogupdate(@Param("dogid")int dogid);

	@Delete("delete virtualadopt where dogid=#{dogid} and id=#{id}")
	void deletevirtualadopt(@Param("dogid")int dogid, @Param("id")String name);

	@Select("select * from answercaresheet join caresheet on caresheet.questionnum = answercaresheet.questionnum where id=#{id} and dogid=#{dogid}")
	List<CareSheet> usercaresheet(Adopt ad);

	@Update("update dog set status=2 where dogid=#{dogid}")
	void updateShelterdog(int dogid);
	@Delete("delete smallparticipate where smallnumber=#{smallnumber} and id=#{name}")
	void deletesmallmeeting(@Param("name")String name, @Param("smallnumber")int smallnumber);

	@Select("select * from recent where recentid=#{recentid}")
	VirtualAdopt recentvirtualdetail(int recentid);

}
