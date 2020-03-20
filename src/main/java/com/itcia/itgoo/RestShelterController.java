package com.itcia.itgoo;

import java.security.Principal;
import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
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

	@PostMapping(value = "/xduplicateid",  produces="plain/text;charset=utf-8")
	public String duplicateid(Member mb) {
		System.out.println("=====**********+++++++username 제발나와주세요:" + mb.getUsername());
		Member m = sm.xduplicateid(mb);
		System.out.println("m====="+m);
		System.out.println("Gson().toJson(m)"+new Gson().toJson(m));
		return new Gson().toJson(m);
	}
	@PostMapping(value = "/updateshelterlocation")
	public  ModelAndView updateshelterlocation (Principal p,Company cp) {
		ModelAndView mav = new ModelAndView();
		mav= sm.updateshelterlocation(p,cp);

		return mav;
	}
	@RequestMapping(value = "/shelterdeletedetail" , method = RequestMethod.GET)
	public ModelAndView shelterDeleteDetail(Integer dogid) {	//null 값도 받으려고
		ModelAndView mav = new ModelAndView();
		System.out.println("여기 있어요");
		
		mav= sm.shelterDeleteDetail(dogid);
		
		return mav;
	}
}
