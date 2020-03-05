package com.itcia.itgoo;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.annotation.Secured;
import org.springframework.security.access.prepost.*;
import org.springframework.stereotype.*;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import com.itcia.itgoo.dto.Member;
import com.itcia.itgoo.service.MemberManagement;

@Controller
public class CommonController {

	@Autowired
	private MemberManagement mm;
	
	private ModelAndView mav=new ModelAndView();

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
	@GetMapping("/findaccount")
	public ModelAndView findaccount(Member mb) {
		mav = findid(mb);

		return mav;
	}

	private ModelAndView findid(Member mb) {
		mav = new ModelAndView();
		// mb= mDao.findId(mb.get)
		return mav;
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

	
	
	@PreAuthorize("isAnonymous()")
	@GetMapping("/joinform")
	public ModelAndView joinfrm() {
		mav.setViewName("joinform");
		return mav;
	}
	
	@PostMapping(value = "/memberjoin",produces ="text/html;charset=UTF-8" )
	public ModelAndView memberJoin(Member mb) {
		System.out.println("아이디:"+mb.getId());
		System.out.println("아이디:"+mb.getPassword());
		System.out.println("아이디:"+mb.getEnabled());
		System.out.println("아이디:"+mb.getBirthday());
		System.out.println("아이디:"+mb.getPhone());
		System.out.println("주소:"+mb.getUseraddress());
		System.out.println("이메일:"+mb.getUseremail());
		System.out.println("enabled:"+mb.getUsername());
		mav = mm.memberJoin(mb);

		return mav;
	}
//	@PreAuthorize("isAnonymous()")
//	@GetMapping("/list")
//	public String guest() {
//		return "guest";
//	}
//
//	@PreAuthorize("isAuthenticated()")
//	@GetMapping("/list")
//	public String user() {
//		return "user";
//	}
//
//	@Secured({ "ROLE_USER", "ROLE_MANAGER", "ROLE_ADMIN" })
//	@GetMapping("/list")
//	public String member() {
//		return "member";
//	}
//
//	@Secured({ "ROLE_MANAGER", "ROLE_ADMIN" })
//	@GetMapping("/list")
//	public String manager() {
//		return "manager";
//	}
//
//	@Secured("ROLE_ADMIN")
//	@GetMapping("/list")
//	public String admin() {
//		return "admin";
//	}
}