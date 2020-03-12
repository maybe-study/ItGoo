package com.itcia.itgoo;


import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.model;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.request;

import java.text.DateFormat;
import java.util.Date;

import java.util.Locale;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.itcia.itgoo.dto.Activity;
import com.itcia.itgoo.dto.Company;
import com.itcia.itgoo.service.ActivityManagement;
@Controller

public class ActivityController {
	private static final Logger logger = LoggerFactory.getLogger(AdminController.class);
	//민호
	//병규
	@Autowired
	private ActivityManagement am;

	private ModelAndView mav;
	@RequestMapping(value = "/activitymyinfo", method = RequestMethod.GET)
	public  ModelAndView activityMyInfo1 (Company cp,HttpServletRequest req) {
		HttpSession session=req.getSession();
		session.setAttribute("companyid","123");
		System.out.println("session="+session.getAttribute("companyid"));
		mav= am.activityMyInfo1(cp, req);

		return mav;
	}
	@RequestMapping(value = "/activitylocationinfo", method = RequestMethod.GET)
	public String acitivityLocationInfo(Locale locale, Model model) {
		return "activitycompany/activityLocationInfo";
	}
	@RequestMapping(value = "/activitypicinfo", method = RequestMethod.GET)
	public String acitivityPicInfo(Locale locale, Model model) {
		return "activitycompany/activityPicInfo";
	}
	@RequestMapping(value = "/activityregiste", method = RequestMethod.GET)
	public String activityRegiste(Locale locale, Model model) {
		return "activitycompany/activityRegiste";
	}
	
	@PreAuthorize("isAnonymous()")
	@PostMapping(value = "/regiactivity")
	public ModelAndView regiactivity (MultipartHttpServletRequest multi,Activity ac,HttpServletRequest req) {
		HttpSession session=req.getSession();
		session.setAttribute("companyid","123");
		mav=am.regiActivity(multi,ac,req);

		return mav;
	}
	@PreAuthorize("isAnonymous()")
	@PostMapping(value = "/uploadactivitycompic")
	public ModelAndView uploadactivitycompic (MultipartHttpServletRequest multi,Company cp,HttpServletRequest req) {
		HttpSession session=req.getSession();
		session.setAttribute("companyid","123");
		mav=am.uploadactivitycompic(multi,cp,req);

		return mav;
	}
	
	@RequestMapping(value = "/activitydelete", method = RequestMethod.GET)
	public  ModelAndView activityDelete (Company cp,HttpServletRequest req) {
		HttpSession session=req.getSession();
		session.setAttribute("companyid","123");
		System.out.println("session="+session.getAttribute("companyid"));
		mav= am.activityDelete1(cp, req);
		

		return mav;
	}
	@RequestMapping(value = "/activitydeletedetail", method = RequestMethod.GET)
	public String acitivityDeleteDetail(Locale locale, Model model) {
		return "activitycompany/activityDeleteDetail";
	}
	
	@RequestMapping(value = "/activitydeletebtn" )
	public ModelAndView activityDeleteBtn(Activity ac,RedirectAttributes attr) {	//null 값도 받으려고
		mav= am.activityDeleteBtn(ac,attr);
		attr.addFlashAttribute("ac",ac);
		return mav;
	}



}
