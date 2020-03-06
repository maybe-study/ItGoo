package com.itcia.itgoo.service;

import java.util.List;

import javax.mail.Session;
import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;

import com.google.gson.Gson;
import com.itcia.itgoo.dao.IActivityDao;
import com.itcia.itgoo.dto.Activity;
import com.itcia.itgoo.dto.Company;


@Service
public class ActivityManagement {
	@Autowired
	private IActivityDao aDao;
	
	private ModelAndView mav ;
	
	public ModelAndView regiActivity(Activity ac) {
		mav= new ModelAndView();
		String view=null;
		boolean regiactivity = aDao.regiActivity(ac); 
		boolean regiactivitypic = aDao.regiActivityPic(ac);
		
		if(regiactivity) {
			view="activitymyinfo";
			mav.addObject("check",1);
		}else {
			view="activityregiste";
			mav.addObject("check",0);
			
		}
		mav.setViewName(view);
		return mav;
	}
	
	
	public ModelAndView activityMyInfo1(Company cp) {
		List<Company> activityCompanyList = aDao.activityMyInfo();
		System.out.println("companyList[0]=" + activityCompanyList.get(0).getCompanyboss());
		mav= new ModelAndView();
		mav.setViewName("activity/activityMyInfo");
		mav.addObject("activityCompanyList",new Gson().toJson(activityCompanyList));
		return mav; 
	}

}
