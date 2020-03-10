package com.itcia.itgoo.dao;

import java.util.List;

import org.springframework.web.servlet.ModelAndView;

import com.itcia.itgoo.dto.Activity;
import com.itcia.itgoo.dto.Company;

public interface IActivityDao {

	public boolean regiActivity(Activity ac);

	public boolean regiActivityPic(Activity ac);

	public List<Company> activityMyInfo1(Company cp);

	public int updatecompanyname(Company cp);

	public int updatecompanyboss(Company cp);

	public int updatecompanyphone(Company cp);

	public int updatecompanyemail(Company cp);

	public int updatecompanylocation(Company cp);

	public List<Company> activityDelete(Company cp);

	public List<Activity> deleteDetail(Integer activitynum); 
}
