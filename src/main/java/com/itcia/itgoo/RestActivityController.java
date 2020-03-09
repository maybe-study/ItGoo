package com.itcia.itgoo;

import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.itcia.itgoo.dto.Company;
import com.itcia.itgoo.service.ActivityManagement;
@RestController
public class RestActivityController {
	private static final Logger logger = LoggerFactory.getLogger(AdminController.class);
	@Autowired
	private ActivityManagement am;

	private ModelAndView mav;
	@RequestMapping(value = "/updatecompanyname", method = RequestMethod.GET)
	public  String updatecompanyname (Company cp,HttpServletRequest req) {
		HttpSession session=req.getSession();
		session.setAttribute("companyid","123");
		System.out.println("session="+session.getAttribute("companyid"));
		
		mav= am.updatecompanyname(cp, req);

		return "{\"a\":\"1\"}";
	}
	@RequestMapping(value = "/updatecompanyboss", method = RequestMethod.GET)
	public  String updatecompanyboss (Company cp,HttpServletRequest req) {
		HttpSession session=req.getSession();
		session.setAttribute("companyid","123");
		System.out.println("session="+session.getAttribute("companyid"));
		
		mav= am.updatecompanyboss(cp, req);

		return "{\"a\":\"1\"}";
	}
	@RequestMapping(value = "/updatecompanyphone", method = RequestMethod.GET)
	public  String updatecompanyphone (Company cp,HttpServletRequest req) {
		HttpSession session=req.getSession();
		session.setAttribute("companyid","123");
		System.out.println("session="+session.getAttribute("companyid"));
		
		mav= am.updatecompanyphone(cp, req);

		return "{\"a\":\"1\"}";
	}
	@RequestMapping(value = "/updatecompanyemail", method = RequestMethod.GET)
	public  String updatecompanyemail (Company cp,HttpServletRequest req) {
		HttpSession session=req.getSession();
		session.setAttribute("companyid","123");
		System.out.println("session="+session.getAttribute("companyid"));
		
		mav= am.updatecompanyemail(cp, req);

		return "{\"a\":\"1\"}";
	}
}
