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
<<<<<<< HEAD
	ModelAndView mav=new ModelAndView();

=======
	ModelAndView mav;
>>>>>>> parent of cdc9277... 거절수락 수정중
	public ModelAndView adminActivity() {
		
		List<Company> companyWaitList = aDao.adminWaitActivity();
		List<Company> companyEnrolledList = aDao.adminEnrolledActivity();
		System.out.println("companyList[0]:"+companyWaitList.get(0).getCompanyboss());
<<<<<<< HEAD

=======
		
		mav=new ModelAndView();
		
>>>>>>> parent of cdc9277... 거절수락 수정중
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
<<<<<<< HEAD

		mav=new ModelAndView();
		mav.addObject("company",new Gson().toJson(aDao.adminActivityDetail(companyid)));
=======
		mav=new ModelAndView();
		mav.addObject("company",new Gson().toJson(aDao.adminCompany(companyid)));
>>>>>>> parent of cdc9277... 거절수락 수정중
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
<<<<<<< HEAD
	public ModelAndView adminOkNo(String companyid) {
		mav.addObject("company",new Gson().toJson(aDao.adminCompany(companyid)));
		mav.setViewName("admin/companyOkNo");
		return mav;
	}
	public ModelAndView adminNo(String companyid) {
		mav.addObject("company",new Gson().toJson(aDao.adminNo(companyid)));
		mav.setViewName("admin/companyNo");
		return mav;
	}
	public ModelAndView adminOk(String companyid) {
		mav.addObject("company",new Gson().toJson(aDao.adminNo(companyid)));
		mav.setViewName("admin/companyOk");
		return mav;
	}


=======
>>>>>>> parent of cdc9277... 거절수락 수정중
}
