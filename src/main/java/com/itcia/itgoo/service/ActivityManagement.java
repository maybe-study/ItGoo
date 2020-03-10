package com.itcia.itgoo.service;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.websocket.Session;

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
	
	
	public ModelAndView activityMyInfo1(Company cp,HttpServletRequest req) {
		HttpSession session = req.getSession();
		mav= new ModelAndView();
		String view = null;
		cp.setCompanyid((String) session.getAttribute("companyid"));
		List<Company> aList = aDao.activityMyInfo1(cp);
		mav.addObject("aList",new Gson().toJson(aList));
		mav.setViewName("activitycompany/activityMyInfo");
		
		System.out.println("companyList[0]=" + aList);
		return mav; 
	}


	public ModelAndView updatecompanyname(Company cp, HttpServletRequest req) {
		HttpSession session = req.getSession();
		mav = new ModelAndView();
		String view=null;
		cp.setCompanyid((String) session.getAttribute("companyid"));
		aDao.updatecompanyname(cp);
		
		
		return mav;
	}


	public ModelAndView updatecompanyboss(Company cp, HttpServletRequest req) {
		HttpSession session = req.getSession();
		mav = new ModelAndView();
		String view=null;
		cp.setCompanyid((String) session.getAttribute("companyid"));
		aDao.updatecompanyboss(cp);
		
		return mav;
	}


	public ModelAndView updatecompanyphone(Company cp, HttpServletRequest req) {
		HttpSession session = req.getSession();
		mav = new ModelAndView();
		String view=null;
		cp.setCompanyid((String) session.getAttribute("companyid"));
		aDao.updatecompanyphone(cp);
		
		return mav;
	}


	public ModelAndView updatecompanyemail(Company cp, HttpServletRequest req) {
		HttpSession session = req.getSession();
		mav = new ModelAndView();
		String view=null;
		cp.setCompanyid((String) session.getAttribute("companyid"));
		aDao.updatecompanyemail(cp);
		
		return mav;
	}


	public ModelAndView updatecompanylocation(Company cp, HttpServletRequest req) {
		HttpSession session = req.getSession();
		mav= new ModelAndView();
		String view = null;
		cp.setCompanyid((String) session.getAttribute("companyid"));
		
		aDao.updatecompanylocation(cp);
		view="activitycompany/activityMyInfo";
		mav.setViewName(view);
		return mav;
	}


	public ModelAndView activityDelete1(Company cp, HttpServletRequest req) {
		HttpSession session = req.getSession();
		mav= new ModelAndView();
		String view = null;
		cp.setCompanyid((String) session.getAttribute("companyid"));
		List<Company> adList = aDao.activityDelete(cp);
		mav.addObject("adList",new Gson().toJson(adList));
		mav.setViewName("activitycompany/activityDelete");
		
		System.out.println("companyList[0]=" + adList);
		return mav; 
	}


	public ModelAndView deleteDetail(Integer activitynum) {
		mav = new ModelAndView();
		String view=null;
		List<Activity> adtList = aDao.deleteDetail(activitynum);
		System.out.println("ac=--------------------------------------------------------");
		for(Activity ac:adtList) {
			System.out.println("ac="+ac);
		}
		mav.addObject("adtList",new Gson().toJson(adtList));
		
		view = "activitycompany/activityDeleteDetail";
		mav.setViewName(view);
		return mav;
	}

}
