package com.itcia.itgoo;

import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
@Controller
public class AdminController {
	private static final Logger logger = LoggerFactory.getLogger(AdminController.class);
	//민호
	//병규
	@RequestMapping(value = "/adminactivity", method = RequestMethod.GET)
	public String adminActivity(Locale locale, Model model) {
		return "admin/AdminActivityCompany";
	}
	@RequestMapping(value = "/adminactivitydetail", method = RequestMethod.GET)
	public String adminActivityDetail(Locale locale, Model model) {
		return "admin/AdminActivityCompanyDetail";
	}
	@RequestMapping(value = "/adminshelter", method = RequestMethod.GET)
	public String adminShelter(Locale locale, Model model) {
		return "admin/AdminShelter";
	}
	@RequestMapping(value = "/adminshelterdetail", method = RequestMethod.GET)
	public String adminShelterDetail(Locale locale, Model model) {
		return "admin/AdminShelterDetail";
	}
	@RequestMapping(value = "/admintest", method = RequestMethod.GET)
	public String adminTest(Locale locale, Model model) {
		return "admin/AdminTest";
	}
	
}
