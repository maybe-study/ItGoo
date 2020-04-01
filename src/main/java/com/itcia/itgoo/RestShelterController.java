package com.itcia.itgoo;

import java.security.Principal;
import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.annotation.Secured;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.google.gson.Gson;
import com.itcia.itgoo.dto.Commonmember;
import com.itcia.itgoo.dto.Company;
import com.itcia.itgoo.dto.Member;
import com.itcia.itgoo.service.ShelterManagement;

@RestController
public class RestShelterController {

	@Autowired
	private ShelterManagement sm;

	ModelAndView mav = new ModelAndView();

	private static final Logger logger = LoggerFactory.getLogger(AdminController.class);

	@RequestMapping(value = "/test1", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
		logger.info("Welcome home! The client locale is {}.", locale);

		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);

		String formattedDate = dateFormat.format(date);

		model.addAttribute("serverTime", formattedDate);

		return "home";
	}
	
	@PostMapping(value = "/xduplicateid", produces = "plain/text;charset=utf-8")
	public String duplicateid(Member mb) {
		System.out.println("=====**********+++++++username 제발나와주세요:" + mb.getUsername());
		Member m = sm.xduplicateid(mb);
		System.out.println("m=====" + m);
		System.out.println("Gson().toJson(m)" + new Gson().toJson(m));
		return new Gson().toJson(m);
	}
	@Secured("ROLE_SHELTER")
	@PostMapping(value = "/updateshelterlocation")
	public ModelAndView updateshelterlocation(Principal p, Company cp) {
		ModelAndView mav = new ModelAndView();
		mav = sm.updateshelterlocation(p, cp);

		return mav;
	}
	@Secured("ROLE_SHELTER")
	@RequestMapping(value = "/shelterdeletedetail", method = RequestMethod.GET)
	public ModelAndView shelterDeleteDetail(Integer dogid) { // null 값도 받으려고
		ModelAndView mav = new ModelAndView();
		System.out.println("여기 있어요");

		mav = sm.shelterDeleteDetail(dogid);

		return mav;
	}
	@Secured("ROLE_SHELTER")
	@GetMapping(value = "/updatesheltername", produces = "plain/text;charset=utf-8")
	public String updatesheltername(Principal p, Company cp) {
		System.out.println("==============================controller=============================\n:" + p.getName());
		mav = sm.updatesheltername(p, cp);

		return "{\"a\":\"성공했습니다.\"}";
	}
	@Secured("ROLE_SHELTER")
	@GetMapping(value = "/updateshelterboss", produces = "plain/text;charset=utf-8")
	public String updateshelterboss(Principal p, Company cp) {
		System.out.println("==============================controller=============================\n:" + p.getName());
		mav = sm.updateshelterboss(p, cp);

		return "{\"a\":\"성공했습니다.\"}";
	}
	@Secured("ROLE_SHELTER")
	@GetMapping(value = "/updateshelterphone", produces = "plain/text;charset=utf-8")
	public String updateshelterphone(Principal p, Company cp) {
		System.out.println("==============================controller=============================\n:" + p.getName());
		mav = sm.updatecompanyphone(p, cp);

		return "{\"a\":\"성공했습니다.\"}";
	}


	@Secured("ROLE_SHELTER")
	@GetMapping(value = "/updateshelteremail", produces = "plain/text;charset=utf-8")
	public String updateshelteremail(Principal p, Company cp) {
		System.out.println("==============================controller=============================\n:" + p.getName());
		mav = sm.updatecompanyemail(p, cp);

		return "{\"a\":\"성공했습니다.\"}";
	}
}
