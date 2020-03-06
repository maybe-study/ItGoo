package com.itcia.itgoo;

import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.model;

import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;

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
	public  String activityMyInfo (Locale locale, Model model) {
		return "activitycompany/activityMyInfo";
	}
	@RequestMapping(value = "/activitymyinfo1", method = RequestMethod.GET)
	public  ModelAndView activityMyInfo1 (Company cp) {
		mav= am.activityMyInfo1(cp);
		
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
	@RequestMapping(value = "/activitydelete", method = RequestMethod.GET)
	public String acitivityDelete(Locale locale, Model model) {
		return "activitycompany/activityDelete";
	}
	@RequestMapping(value = "/regiactivity", method = RequestMethod.GET)
	public ModelAndView regiactivity (Activity ac) {
		mav=am.regiActivity(ac);
		
		return mav;
	}
	
	
}
