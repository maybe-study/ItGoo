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
	ModelAndView mav=new ModelAndView();
	public ModelAndView adminActivity() {
		
		List<Company> companyWaitList = aDao.adminWaitActivity();
		List<Company> companyEnrolledList = aDao.adminEnrolledActivity();
		
		mav.setViewName("admin/AdminActivityCompany");
		mav.addObject("companyWaitList",new Gson().toJson(companyWaitList));
		mav.addObject("companyEnrolledList",new Gson().toJson(companyEnrolledList));
		return mav;
	}
	public ModelAndView adminShelter() {
		List<Company> companyWaitList = aDao.adminWaitShelter();
		List<Company> companyEnrolledList = aDao.adminEnrolledShelter();
		
		mav=new ModelAndView();
		mav.setViewName("admin/AdminShelter");
		mav.addObject("companyWaitList",new Gson().toJson(companyWaitList));
		mav.addObject("companyEnrolledList",new Gson().toJson(companyEnrolledList));
		return mav;
	}
	public ModelAndView adminActivityDetail(String companyid) {
		mav=new ModelAndView();
		mav.addObject("company",new Gson().toJson(aDao.adminCompany(companyid)));
		mav.addObject("activities",new Gson().toJson(aDao.adminActivities(companyid)));
		mav.setViewName("admin/AdminActivityCompanyDetail");
		
		return mav;
	}

	public ModelAndView adminShelterDetail(String companyid) {
		mav=new ModelAndView();
		mav.addObject("company",new Gson().toJson(aDao.adminCompany(companyid)));
		mav.addObject("dogs",new Gson().toJson(aDao.adminDogs(companyid)));
		mav.setViewName("admin/AdminShelterDetail");
		
		return mav;
	}
	public ModelAndView adminOkNo(String companyid) {
		mav.addObject("company",new Gson().toJson(aDao.adminCompany(companyid)));
		mav.setViewName("admin/AdminOkNo");
		return mav;
	}
	
	
	public ModelAndView adminUpdateComPany(String select, String companyid, int companykind) {
		System.out.println("========================================여부 : "+ select);
		//수락
		String url="";
		if(select=="ok") {
			aDao.adminOk(companyid);	//업데이트하기
		}else {//거절
			aDao.adminNo(companyid);	//삭제
		}
		if(companykind==1) {	//액티비티업체라면
			mav=adminActivity();
		}else if(companykind==2) {	//보호소라면
			mav=adminShelter();
		}
		return mav;
	}

}
