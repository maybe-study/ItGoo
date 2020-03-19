package com.itcia.itgoo;


import java.security.Principal;

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

import com.itcia.itgoo.dto.Adopt;
import com.itcia.itgoo.dto.Commonmember;
import com.itcia.itgoo.dto.Member;
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
	
	@PostMapping("/applyadopt")
	public ModelAndView applyadopt(MultipartHttpServletRequest multi,Adopt ad, Principal p) {
		System.out.println("입양시작하는중");
		System.out.println("==================id==================="+p.getName());
		mav = cm.applyadopt(multi,ad,p);
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
	public ModelAndView showmyactivity(Principal p, Adopt ad) {
		System.out.println("adoptPHase 가는중");
		mav = cm.showmyactivity(p,ad);
		return mav;
	}
	
	

}
