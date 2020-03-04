package com.itcia.itgoo;

import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
@Controller
public class RestActivityController {
	private static final Logger logger = LoggerFactory.getLogger(AdminController.class);
	//민호
	//병규
	@RequestMapping(value = "/activityMyInfo", method = RequestMethod.GET)
	public  String activityMyInfo (Locale locale, Model model) {
		return "activitycompany/activityMyInfo";
	}
	@RequestMapping(value = "/activityLocationInfo", method = RequestMethod.GET)
	public String acitivityLocationInfo(Locale locale, Model model) {
		return "activitycompany/activityLocationInfo";
	}
	@RequestMapping(value = "/activityPicInfo", method = RequestMethod.GET)
	public String acitivityPicInfo(Locale locale, Model model) {
		return "activitycompany/activityPicInfo";
	}
	
}
