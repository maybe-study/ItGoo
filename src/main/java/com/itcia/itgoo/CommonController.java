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
import com.itcia.itgoo.service.ShelterManagement;



@Controller
public class CommonController {
	@Autowired
	private ShelterManagement mm;
	
	ModelAndView mav=new ModelAndView();

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
	
	//회원가입
	@RequestMapping(value = "/memberjoin", method = RequestMethod.POST)
	public ModelAndView memberjoin(Member mb) {
		
		mav=mm.sheltermemberjoin(mb);
		
		
		return mav;
	}
	
}