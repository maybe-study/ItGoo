package com.itcia.itgoo;

import java.security.Principal;
import java.util.List;
import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.annotation.Secured;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.ModelAndView;

import com.google.gson.Gson;
import com.google.gson.reflect.TypeToken;
import com.itcia.itgoo.dto.Commonmember;
import com.itcia.itgoo.dto.Ex;
import com.itcia.itgoo.dto.Question;
import com.itcia.itgoo.service.AdminCompany;
@Secured("ROLE_ADMIN")
@Controller
public class AdminController {
	private static final Logger logger = LoggerFactory.getLogger(AdminController.class);
	@Autowired
	AdminCompany Ac;
	@RequestMapping(value = "/test", method = RequestMethod.GET)
	public String test(Principal p) {
		if(p!=null) {
			System.out.println("세션이름:"+p.getName());
		}
		return "index2";
	}
	@RequestMapping(value = "/addtestfrm", method = RequestMethod.GET)
	public ModelAndView addTestFrm(Locale locale, Model model) {
		ModelAndView mav = new ModelAndView();
		mav.addObject("question",0);
		mav.addObject("exList",0);
		mav.setViewName("admin/AdminTestAdd");
		return mav;
	}
	@RequestMapping(value = "/addtest", method = RequestMethod.GET)
	public ModelAndView addTest(Question question, String exJson) {
		System.out.println("보기:"+exJson);
		ModelAndView mav=Ac.addTest(question,exJson);
		return mav;
	}
	@RequestMapping(value = "/adminactivity", method = RequestMethod.GET)
	public ModelAndView adminActivity(Locale locale, Model model) {
		// 액티비티 업체 정보 읽기
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
	public ModelAndView adminTest(Locale locale, Model model) {
		ModelAndView mav=Ac.adminTest();
		return mav;
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
	
	@RequestMapping(value = "/modifyquestionfrm", method = RequestMethod.GET)
	public ModelAndView modifyQuestionFrm(int questionnum) {
		ModelAndView mav=Ac.modifyQuestionFrm(questionnum);
		return mav;
	}
	@RequestMapping(value = "/deletequestion", method = RequestMethod.GET)
	public ModelAndView questionDelete(int questionnum) {
		ModelAndView mav=Ac.questionDelete(questionnum);
		return mav;
	}
	@RequestMapping(value = "/modifyquestion", method = RequestMethod.GET)
	public ModelAndView modifyQuestion(Question question, String exJson) {
		ModelAndView mav=Ac.modifyQuestion(question,  exJson);
		return mav;
	}
	@RequestMapping(value = "/adminadopt", method = RequestMethod.GET)
	public ModelAndView adminAdopt() {
		ModelAndView mav=Ac.adminAdoptList();
		return mav;
	}
	@RequestMapping(value = "/admincaresheet", method = RequestMethod.GET)
	public ModelAndView adminCareSheet() {
		ModelAndView mav=Ac.adminCareSheet();
		return mav;
	}
	@RequestMapping(value = "/updatecaresheetfrm", method = RequestMethod.GET)
	public ModelAndView adminCareSheetUpdateFrm() {
		ModelAndView mav = new ModelAndView();
		mav=Ac.adminCareSheetUpdateFrm();
		
		return mav;
	}
	@RequestMapping(value = "/updatecaresheet", method = RequestMethod.GET)
	public ModelAndView adminUpdateCareSheet(String careJson) {
		ModelAndView mav = new ModelAndView();
		System.out.println("json:"+careJson);
		mav=Ac.adminUpdateCareSheet(careJson);
		return mav;
	}

	
	@RequestMapping(value = "/deletecaresheet", method = RequestMethod.GET)
	public ModelAndView adminDeleteCareSheet(int questionnum) {
		ModelAndView mav = new ModelAndView();
		mav=Ac.deleteCareSheet(questionnum);
		return mav;
	}
	
}
