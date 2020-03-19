package com.itcia.itgoo.dao;

import java.util.List;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;
import org.springframework.web.servlet.ModelAndView;

import com.itcia.itgoo.dto.Activity;
import com.itcia.itgoo.dto.Company;
import com.itcia.itgoo.dto.Reservation;

public interface IActivityDao {

	public boolean regiActivity(Activity ac);

	public void insertPic(String param1, int param2); 

	public List<Company> activityMyInfo1(Company cp);

	public int updatecompanyname(Company cp);

	public int updatecompanyboss(Company cp);

	public int updatecompanyphone(Company cp);

	public int updatecompanyemail(Company cp);

	public int updatecompanylocation(Company cp);

	public List<Company> activityDelete(Company cp);

	public Activity deleteDetail(Integer activitynum);

	public boolean activityDeleteBtn(Activity ac);
	
	@Select("select activitypic from activitypics where activitynum=#{activitynum}")
	public List<String> activitypics(Integer activitynum);

	public boolean uploadactivitycompic(Company cp);
	
	public void insertCompanyPic(String param1, String param2);

	@Select("select count(*) from activity where companyid=#{companyid}")
	public int getActivityCnt(Company cp);

	public List<Activity> activitylist(Activity ac);

	public Activity activityListDetail(Integer activitynum);

	public boolean activityReservationBtn(Reservation rv);

	public List<Company> activityPass(Company cp);
}
