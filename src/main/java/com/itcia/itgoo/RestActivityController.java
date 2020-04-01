package com.itcia.itgoo;

import java.security.Principal;

import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.annotation.Secured;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.itcia.itgoo.dto.Company;
import com.itcia.itgoo.dto.Reservation;
import com.itcia.itgoo.service.ActivityManagement;
@Secured("ROLE_ACTIVITY")
@RestController
public class RestActivityController {
	private static final Logger logger = LoggerFactory.getLogger(AdminController.class);
	@Autowired
	private ActivityManagement am;

	private ModelAndView mav;
	@RequestMapping(value = "/updatecompanyname", method = RequestMethod.GET)
	public  String updatecompanyname (Principal p,Company cp) {
		mav= am.updatecompanyname(p,cp);

		return "{\"a\":\"1\"}";
	}
	@RequestMapping(value = "/updatecompanyboss", method = RequestMethod.GET)
	public  String updatecompanyboss (Principal p,Company cp) {
		
		mav= am.updatecompanyboss(p,cp);

		return "{\"a\":\"1\"}";
	}
	@RequestMapping(value = "/updatecompanyphone", method = RequestMethod.GET)
	public  String updatecompanyphone (Principal p, Company cp) {
		
		mav= am.updatecompanyphone(p, cp);

		return "{\"a\":\"1\"}";
	}
	@RequestMapping(value = "/updatecompanyemail", method = RequestMethod.GET)
	public  String updatecompanyemail (Principal p,Company cp) {
		
		mav= am.updatecompanyemail(p,cp);

		return "{\"a\":\"1\"}";
	}
	@PostMapping(value = "/updatecompanylocation")
	public  ModelAndView updatecompanylocation (Principal p,Company cp) {
		
		mav= am.updatecompanylocation(p,cp);

		return mav;
	}
	@RequestMapping(value = "/deletedetail" , method = RequestMethod.GET)
	public ModelAndView deleteDetail(Integer activitynum) {	//null 값도 받으려고
		System.out.println("여기 있어요");
		
		mav= am.deleteDetail(activitynum);
		
		return mav;
	}
	@RequestMapping(value = "/passdetail" , method = RequestMethod.GET)
	public ModelAndView passDetail(Integer activitynum) {	//null 값도 받으려고
		System.out.println("여기 있어요");
		
		mav= am.passDetail(activitynum);
		
		return mav;
	}
	@RequestMapping(value = "/activitylistdetail" , method = RequestMethod.GET)
	public ModelAndView activityListDetail(Integer activitynum,int dogid) {	//null 값도 받으려고
		System.out.println("여기 있어요");
		
		mav= am.activityListDetail(activitynum,dogid);
		
		return mav;
	}
	@PostMapping(value = "/acceptbtn")
	public  ModelAndView acceptBtn (Reservation rv) {
		System.out.println("username="+rv.getUsername());
		mav= am.acceptBtn(rv);
		
		return mav;
	}
	@PostMapping(value = "/rejectbtn")
	public  ModelAndView rejectBtn (Reservation rv) {
		System.out.println("username="+rv.getUsername());
		mav= am.rejectBtn(rv);
		
		return mav;
	}
	
	
}
