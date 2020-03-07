package com.itcia.itgoo;

import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.ModelAndView;

import com.itcia.itgoo.dto.Commonmember;
import com.itcia.itgoo.service.AdminCompany;
import com.itcia.itgoo.share.UploadFile;
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
	@RequestMapping(value = "/uploadtest", method = RequestMethod.POST)
	public String uploadTest(MultipartHttpServletRequest multi, Commonmember cMember) {
		UploadFile up= new UploadFile();
		System.out.println("파일리스트 사이즈: " +multi.getFiles("files").size());
		System.out.println("cMember 출력:"+cMember.toString());
		up.fileUp(multi.getFiles("files"));
		return null;
	}
	@RequestMapping(value = "/adminupdatecompany", method = RequestMethod.GET)
	public ModelAndView adminUpdateCompany(String select,String companyid,int companykind,Locale locale, Model model) {
		
		ModelAndView mav=Ac.adminUpdateComPany(select,companyid,companykind);
		return mav;
	}
	@RequestMapping(value = "/adminokno", method = RequestMethod.GET)
	public ModelAndView adminOkNo(String companyid,Locale locale, Model model) {
		ModelAndView mav=Ac.adminOkNo(companyid);
		return mav;
	}

}
