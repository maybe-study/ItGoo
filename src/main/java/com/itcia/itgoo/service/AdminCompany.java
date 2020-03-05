package com.itcia.itgoo.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.google.gson.Gson;
import com.itcia.itgoo.dao.IAdminDao;
import com.itcia.itgoo.dto.Company;

@Service
public class AdminCompany {
	@Autowired
	private IAdminDao aDao;
	ModelAndView mav;
	public ModelAndView adminActivity() {
		
		List<Company> companyWaitList = aDao.adminWaitActivity();
		List<Company> companyEnrolledList = aDao.adminEnrolledActivity();
		System.out.println("companyList[0]:"+companyWaitList.get(0).getCompanyboss());
		
		mav=new ModelAndView();
		
		mav.setViewName("admin/AdminActivityCompany");
		mav.addObject("companyWaitList",new Gson().toJson(companyWaitList));
		mav.addObject("companyEnrolledList",new Gson().toJson(companyEnrolledList));
		return mav;
	}
	public ModelAndView adminShelter() {
		List<Company> companyWaitList = aDao.adminWaitShelter();
		List<Company> companyEnrolledList = aDao.adminEnrolledShelter();
		System.out.println("companyList[0]:"+companyWaitList.get(0).getCompanyboss());
		
		mav=new ModelAndView();
		mav.setViewName("admin/AdminShelter");
		mav.addObject("companyWaitList",new Gson().toJson(companyWaitList));
		mav.addObject("companyEnrolledList",new Gson().toJson(companyEnrolledList));
		return mav;
	}
	public ModelAndView adminActivityDetail(String companyid) {
		mav=new ModelAndView();
		mav.addObject("company",new Gson().toJson(aDao.adminActivityDetail(companyid)));
		mav.addObject("activitys",new Gson().toJson(aDao.adminActivitys(companyid)));
		mav.setViewName("admin/AdminActivityCompanyDetail");
		
		return mav;
	}
}
