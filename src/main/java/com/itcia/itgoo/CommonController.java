package com.itcia.itgoo;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import org.springframework.web.servlet.ModelAndView;

import com.itcia.itgoo.dto.Dog;
import com.itcia.itgoo.dto.Member;
import com.itcia.itgoo.dto.Role;
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
	@PreAuthorize("isAnonymous()")
	@RequestMapping(value = "/findid", method = RequestMethod.GET)
	public String findaccount(Member mb) {
		return "findid";
	}
	
	@PreAuthorize("isAuthenticated()")
	@RequestMapping(value = "/itgoo1main", method = RequestMethod.GET)
	public String itgoo1main() {
		return "itgoo1main";
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