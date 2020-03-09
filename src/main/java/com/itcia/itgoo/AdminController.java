package com.itcia.itgoo;

import java.util.List;
import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.ModelAndView;

import com.itcia.itgoo.dto.Commonmember;
import com.itcia.itgoo.dto.Question;
import com.itcia.itgoo.service.AdminCompany;
import com.itcia.itgoo.share.UploadFile;

@Controller
public class AdminController {
	private static final Logger logger = LoggerFactory.getLogger(AdminController.class);
	@Autowired
	AdminCompany Ac;
	@RequestMapping(value = "/addtestfrm", method = RequestMethod.GET)
	public String addTestFrm(Locale locale, Model model) {// 액티비티 업체 정보 읽기
		
		return "admin/AdminTestAdd";
	}
	@RequestMapping(value = "/addtest", method = RequestMethod.GET)
	public ModelAndView addTest(Question question, @RequestParam(value="ex",required=true) List<String> ex) {// 적격성 평가 문제 추가
		System.out.println("문제:"+question);
//		for(String obj: ex) {
//			System.out.println("보기:"+obj);
//		}
		
		Ac.addTest(question,ex);
		return null;
	}
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
