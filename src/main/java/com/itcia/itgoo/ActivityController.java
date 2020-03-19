package com.itcia.itgoo;


import java.security.Principal;
import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.itcia.itgoo.dto.Activity;
import com.itcia.itgoo.dto.Company;
import com.itcia.itgoo.dto.Reservation;
import com.itcia.itgoo.service.ActivityManagement;
@Controller

public class ActivityController {
	private static final Logger logger = LoggerFactory.getLogger(AdminController.class);

	@Autowired
	private ActivityManagement am;

	private ModelAndView mav;
	@RequestMapping(value = "/activitymyinfo", method = RequestMethod.GET)
	public  ModelAndView activityMyInfo1 (Principal p,Company cp) {
		if(p!=null) {
			p.getName ();
			System.out.println("p="+p.getName());
		}
		mav= am.activityMyInfo1(p,cp);

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
	@PostMapping(value = "/regiactivity")
	public ModelAndView regiactivity (Principal p ,MultipartHttpServletRequest multi,Activity ac) {
		if(p!=null) {
			p.getName();
			System.out.println("p="+p.getName());
		}
		mav=am.regiActivity(p,multi,ac);

		return mav;
	}
	@PostMapping(value = "/uploadactivitycompic")
	public ModelAndView uploadactivitycompic (Principal p ,MultipartHttpServletRequest multi,Company cp) {
		if(p!=null) {
			p.getName();
			System.out.println("p="+p.getName());
		}
		mav=am.uploadactivitycompic(p,multi,cp);

		return mav;
	}





	@RequestMapping(value = "/activitydelete", method = RequestMethod.GET)
	public  ModelAndView activityDelete (Principal p ,Company cp,Integer pageNum) {
		if(p!=null) {
			p.getName ();
			System.out.println("p="+p.getName());
		}
		mav= am.activityDelete1(p,cp,pageNum);


		return mav;
	}







	@RequestMapping(value = "/activitydeletebtn" )
	public ModelAndView activityDeleteBtn(Activity ac,RedirectAttributes attr) {	//null 값도 받으려고
		mav= am.activityDeleteBtn(ac,attr);
		attr.addFlashAttribute("ac",ac);
		return mav;

	}
	@RequestMapping(value = "/activitylist", method = RequestMethod.GET)
	public String activityList(Locale locale, Model model) {
		return "activityclient/activityList";
	}
	@RequestMapping(value = "/activitylist1", method = RequestMethod.GET)
	public ModelAndView activityList1(Principal p, Activity ac) {
		if(p!= null) {
			p.getName();
			System.out.println("p="+p.getName());
		}
		mav= am.activityList(p,ac);
		return mav;
	}
	@RequestMapping(value = "/activityreservationbtn" )
	public ModelAndView activityReservationBtn(Principal p ,Reservation rv,RedirectAttributes attr) {	//null 값도 받으려고
		if(p!= null) {
			p.getName();
			System.out.println("p="+p.getName());
		}
		mav= am.activityReservationBtn(p,rv,attr);
		attr.addFlashAttribute("rv",rv);
		return mav;
	}
	@RequestMapping(value = "/activitypass", method = RequestMethod.GET)
	public  ModelAndView activityPass (Principal p ,Company cp,Integer pageNum) {
		if(p!=null) {
			p.getName ();
			System.out.println("p="+p.getName());
		}
		mav= am.activityPass(p,cp,pageNum);
		return mav;
	}
}
