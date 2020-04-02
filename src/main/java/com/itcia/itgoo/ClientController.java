package com.itcia.itgoo;


import java.security.Principal;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.annotation.Secured;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.ModelAndView;

import com.google.gson.Gson;
import com.google.gson.reflect.TypeToken;
import com.itcia.itgoo.dto.Adopt;
import com.itcia.itgoo.dto.CareSheet;
import com.itcia.itgoo.dto.Commonmember;
import com.itcia.itgoo.dto.Dog;
import com.itcia.itgoo.dto.Member;
import com.itcia.itgoo.dto.Reservation;
import com.itcia.itgoo.dto.Test;
import com.itcia.itgoo.dto.VirtualAdopt;
import com.itcia.itgoo.service.ClientManagement;
import com.itcia.itgoo.service.MemberManagement;

@Controller
public class ClientController {

	ModelAndView mav = new ModelAndView();

	@Autowired
	private ClientManagement cm;
	@Autowired MemberManagement mm;

	@PreAuthorize("isAuthenticated()")
	@GetMapping("/adoptlist")
	public ModelAndView adoptlist() {
		System.out.println("컨트롤러 도착");
		mav = cm.adoplist();
		return mav;
	}
	@PreAuthorize("isAuthenticated()")
	@PostMapping("/applyadopt")
	public ModelAndView applyadopt(MultipartHttpServletRequest multi,Adopt ad, Principal p) {
		System.out.println("입양시작하는중");
		System.out.println("==================id==================="+p.getName());
		mav = cm.applyadopt(multi,ad,p);
		mav=cm.updatestatusdog(ad);
		return mav;
	}
	
	@PreAuthorize("isAuthenticated()")
	@RequestMapping(value = "/myadoptphase", method = RequestMethod.GET)
	public ModelAndView myadoptphase(Principal p, Adopt ad) {
		System.out.println("adoptPHase 가는중");
		mav = mm.myadoptphase(p,ad);
		return mav;
	}
	
	@PreAuthorize("isAuthenticated()")
	@RequestMapping(value = "/showmyactivity", method = RequestMethod.GET)
	public ModelAndView showmyactivity(Principal p, Reservation rs) {
		System.out.println("마이액티비티 가는중");
		mav = cm.showmyactivity(p,rs);
		return mav;
	}
	
	@PreAuthorize("isAuthenticated()")
	@RequestMapping(value = "/finalsook", method = RequestMethod.GET)
	public ModelAndView finalsook(Principal p, Dog dog ,int dogid) {
		System.out.println("숙려기간으로  가는중");
		System.out.println("숙려기간넘어가는 도그아이디"+dogid);
		mav = cm.finalsook(p,dog,dogid);
		return mav;
	}

	@PreAuthorize("isAuthenticated()")
	@RequestMapping(value = "/finalchoice", method = RequestMethod.GET)
	public ModelAndView finalchoice(int dogid,String choice,Principal p, Reservation rs) {
		System.out.println("숙려기간선택!");
		System.out.println("마지막 선택한 강아지 도그아이디를 알려줘"+dogid);
		mav = cm.updatedog(dogid,choice,p,rs);
		return mav;
	}
	
	@PreAuthorize("isAuthenticated()")
	@RequestMapping(value = "/finalcaresheet", method = RequestMethod.GET)
	public ModelAndView finalcaresheet(int dogid,CareSheet cs,Principal p) {
		System.out.println("케어시트!");
		System.out.println("케어시트에 추가할 강아지"+dogid);
		mav = cm.finalcaresheet(dogid,cs,p);
		return mav;
	}
	
	@PreAuthorize("isAuthenticated()")
	@RequestMapping(value = "/submitsheet", method = RequestMethod.GET)
	public ModelAndView submitSheet(int dogid,String aJson,Principal p) {
		System.out.println("시트 제출!");
		System.out.println(dogid);
		mav=cm.submitSheet(dogid,aJson,p);
		return mav;
	}
	
	@PreAuthorize("isAuthenticated()")
	@RequestMapping(value = "/virtualadoptapply", method = RequestMethod.GET)
	public ModelAndView virtualadoptapply(int dogid,VirtualAdopt va,Principal p) {
		System.out.println("시트 제출!");
		System.out.println(dogid);
		mav=cm.virtualadoptapply(dogid,va,p);
		return mav;
	}
	
	@PreAuthorize("isAuthenticated()")
	@RequestMapping(value = "/applyAdopt", method = RequestMethod.GET)
	public String applyAdopt() {
		return "applyAdopt";
	}
	
	@PreAuthorize("isAuthenticated()")
	@RequestMapping(value = "/virtualadopt", method = RequestMethod.GET)
	public ModelAndView virtualadopt(int dogid,VirtualAdopt va,Principal p) {
		System.out.println("가상입양할 강아지번호 나옵니다 이제 기대하세요");
		System.out.println(dogid);
		mav.addObject("dogid",dogid);
		mav.setViewName("virtualadopt");
		return mav;
	}
	
	@PreAuthorize("isAuthenticated()")
	@RequestMapping(value = "/recentvirtualadopt", method = RequestMethod.GET)
	public ModelAndView recentvirtualadopt(Principal p) {
	System.out.println("가상입양강아지 보기");  
	mav=cm.recentvirtualadopt(p); 
	return mav; 
	}
	
	@PreAuthorize("isAuthenticated()")
	@RequestMapping(value = "/clentrecentdetail", method = RequestMethod.GET) 
	public ModelAndView clentrecentdetail(int dogid,Principal p) {
	System.out.println("가상입양디테일하게  보기"); 
	mav=cm.clentrecentdetail(dogid,p);
	return mav; 
	}

}


