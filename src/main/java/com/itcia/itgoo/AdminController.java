package com.itcia.itgoo;

import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.itcia.itgoo.service.AdminCompany;
@Controller
public class AdminController {
	private static final Logger logger = LoggerFactory.getLogger(AdminController.class);
	@Autowired
	AdminCompany Ac;

	@RequestMapping(value = "/adminactivity", method = RequestMethod.GET)
	public ModelAndView adminActivity(Locale locale, Model model) {// 액티비티 업체 정보 읽기
		ModelAndView mav=Ac.adminActivity();
		return mav;
	}
	@RequestMapping(value = "/adminactivitydetail", method = RequestMethod.GET)
	public ModelAndView adminActivityDetail(String companyid,Locale locale, Model model) {
		ModelAndView mav=Ac.adminActivityDetail(companyid);
		return mav;
	}
	@RequestMapping(value = "/adminshelter", method = RequestMethod.GET)
	public ModelAndView adminShelter(Locale locale, Model model) {
		ModelAndView mav=Ac.adminShelter();
		return mav;
	}
	@RequestMapping(value = "/adminshelterdetail", method = RequestMethod.GET)
	public String adminShelterDetail(Locale locale, Model model) {
		return "admin/AdminShelterDetail";
	}
	@RequestMapping(value = "/admintest", method = RequestMethod.GET)
	public String adminTest(Locale locale, Model model) {
		return "admin/AdminTest";
	}

	@RequestMapping(value = "/test", method = RequestMethod.GET)
	public String test(Locale locale, Model model) {
		return "admin/test";
	}
	@RequestMapping(value = "/adminupdatecompany", method = RequestMethod.GET)
	public ModelAndView adminUpdateCompany(String companyid,int companykind,Locale locale, Model model) {
		
		ModelAndView mav=Ac.adminUpdateComPany(companyid,companykind);
		return mav;
	}
	@RequestMapping(value = "/adminok", method = RequestMethod.GET)
	public ModelAndView adminOk(String companyid,Locale locale, Model model) {
		ModelAndView mav=Ac.adminOk(companyid);
		return mav;
	}
	@RequestMapping(value = "/adminokno", method = RequestMethod.GET)
	public ModelAndView adminOkNo(String companyid,Locale locale, Model model) {
		ModelAndView mav=Ac.adminOkNo(companyid);
		return mav;
	}

}
