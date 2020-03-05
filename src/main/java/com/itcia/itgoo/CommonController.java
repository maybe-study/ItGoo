package com.itcia.itgoo;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import org.springframework.web.servlet.ModelAndView;

import com.itcia.itgoo.dto.Member;
import com.itcia.itgoo.service.MemberManagement;

@Controller
public class CommonController {
	@Autowired
	private MemberManagement mm;

	ModelAndView mav = new ModelAndView();

	@GetMapping("/")
	public String home() {
		return "index";
	}

	@PreAuthorize("isAnonymous()")
	@GetMapping("/login")
	public String login() {
		return "/login";
	}

	@RequestMapping(value = "/findid", method = RequestMethod.GET)
	public String findaccount(Member mb) {
		return "findid";
	}

	
	@PreAuthorize("isAuthenticated()")
	@GetMapping("/itgoo1")
	public String itgoo1() {
		return "index";
	}

	@PreAuthorize("isAuthenticated()")
	@GetMapping("/ibyang")
	public String ibyang() {
		return "index";
	}

	// 회원가입
	@RequestMapping(value = "/joinform", method = RequestMethod.GET)
	public String joinform(Member mb) {
		return "joinform";
	}

	// 회원가입
	@RequestMapping(value = "/memberjoin", method = RequestMethod.POST)
	public ModelAndView memberjoin(Member mb) {
		mav = mm.memberJoin(mb);
		return mav;
	}

}