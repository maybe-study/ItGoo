package com.itcia.itgoo;

import java.security.Principal;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.google.gson.Gson;
import com.itcia.itgoo.dto.Dog;
import com.itcia.itgoo.dto.Member;
import com.itcia.itgoo.service.ClientManagement;

@RestController
public class RestClientController {
	
	@Autowired
	private ClientManagement cm;
	
	ModelAndView mav = new ModelAndView();
	
	@PostMapping(value = "/adoptlistdetail", produces="plain/text;charset=utf-8")
	public String adoptlistdetail(String dogid) {
		System.out.println("==============================controller=============================\ndogid:"+dogid);
		String dogpics = cm.adoptlistdetail(dogid);
		
		return dogpics;
	}
	

	@GetMapping(value = "/updateusername", produces="plain/text;charset=utf-8")
	public String updateusername(Principal p,Member mb) {
		System.out.println("==============================controller=============================\n:"+p.getName());
		mav = cm.updateusername(p,mb);
		
		return "{\"a\":\"성공했습니다.\"}";
	}
	
	@GetMapping(value = "/updateuseremail", produces="plain/text;charset=utf-8")
	public String updateuseremail(Principal p,Member mb) {
		System.out.println("==============================controller=============================\n:"+p.getName());
		mav = cm.updateuseremail(p,mb);
		
		return "{\"a\":\"성공했습니다.\"}";
	}
	
	@GetMapping(value = "/updateuserphone", produces="plain/text;charset=utf-8")
	public String updateuserphone(Principal p,Member mb) {
		System.out.println("==============================controller=============================\n:"+p.getName());
		mav = cm.updateuserphone(p,mb);
		
		return "{\"a\":\"성공했습니다.\"}";
	}
	@GetMapping(value = "/updateuserbirth", produces="plain/text;charset=utf-8")
	public String updateuserbirth(Principal p,Member mb) {
		System.out.println("==============================controller=============================\n:"+p.getName());
		mav = cm.updateuserbirth(p,mb);
		
		return "{\"a\":\"성공했습니다.\"}";
	}
	
	@GetMapping(value = "/updateuseraddress", produces="plain/text;charset=utf-8")
	public String updateuseraddress(Principal p,Member mb) {
		System.out.println("==============================controller=============================\n:"+p.getName());
		mav = cm.updateuseraddress(p,mb);
		
		return "{\"a\":\"성공했습니다.\"}";
	}
}
