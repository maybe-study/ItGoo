package com.itcia.itgoo;

import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
@Controller
public class ActivityController {
	private static final Logger logger = LoggerFactory.getLogger(AdminController.class);
	//민호
	//병규
	@RequestMapping(value = "/activitymyinfo", method = RequestMethod.GET)
	public  String activityMyInfo (Locale locale, Model model) {
		return "activitycompany/activityMyInfo";
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
	@RequestMapping(value = "/timeselect", method = RequestMethod.GET)
	public String timeselect(Locale locale, Model model) {
		return "activitycompany/timeselect";
	}
	
	
}
