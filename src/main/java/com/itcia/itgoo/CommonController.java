﻿package com.itcia.itgoo;

import java.security.Principal;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import org.springframework.web.servlet.ModelAndView;

import com.google.gson.Gson;
import com.itcia.itgoo.dto.Dog;
import com.itcia.itgoo.dto.Member;
import com.itcia.itgoo.dto.Role;
import com.itcia.itgoo.service.MemberManagement;

@Controller
public class CommonController {
	@Autowired
	private MemberManagement mm;

	ModelAndView mav = new ModelAndView();

	
	@GetMapping("/loginto")
	public String loginTo() {
		//사용자면 /
		//업체 : /activitymyinfo
		//보호소 : /sheltermyinfo
		//관리자 : /adminactivity
		
		return mm.loginTo();
	}

	@PreAuthorize("isAnonymous()")
	@GetMapping("/login")
	public String login() {
		return "/login";
	}
	@PreAuthorize("isAnonymous()")
	@RequestMapping(value = "/findid", method = RequestMethod.GET)
	public  String findaccount(Member mb) {
		return "findid";
	}
	
	@PreAuthorize("isAuthenticated()")
	@RequestMapping(value = "/itgoo1main", method = RequestMethod.GET)
	public ModelAndView itgoo1main(String flag) {
		if(flag==null)flag="none";
		mav.addObject("flag",flag);
		mav.setViewName("itgoo1main");
		return mav;
	}
	@PreAuthorize("isAuthenticated()")
	@RequestMapping(value = "/mypage", method = RequestMethod.GET)
	public ModelAndView mypage(Principal p, Member mb) {
		System.out.println("마이페이지 가는중");
		mav = mm.mypage(p,mb);
		return mav;
	}
	
	
	@PreAuthorize("isAuthenticated()")
	@RequestMapping(value = "/adoptMain", method = RequestMethod.GET)
	public String adoptMain() {
		return "adoptMain";
	}


	// 회원가입
	@RequestMapping(value = "/joinform", method = RequestMethod.GET)
	public String joinform(Member mb) {
		return "joinform";
	}

	// 회원가입
	@RequestMapping(value = "/memberjoin", method = RequestMethod.POST)
	public String memberjoin(Member mb,Role rl) {
		mav = mm.memberJoin(mb,rl);
		return "login";
	}

}