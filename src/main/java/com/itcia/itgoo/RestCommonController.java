package com.itcia.itgoo;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.annotation.Secured;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.google.gson.Gson;
import com.itcia.itgoo.dto.Member;
import com.itcia.itgoo.service.MemberManagement;

@RestController
public class RestCommonController {
	@Autowired
	private MemberManagement mm;

	ModelAndView mav = new ModelAndView();
	
	@PostMapping(value = "/searchid", produces="plain/text;charset=utf-8")
	public String searchid(Member mb) {
		System.out.println("=====**********+++++++아이디님 제발나와주세요:" + mb.getUsername());
		Member m = mm.searchid(mb);
		
		return new Gson().toJson(m);
	}
	
	@PostMapping(value = "/searchidphone", produces="plain/text;charset=utf-8")
	public String searchidphone(Member mb) {
		System.out.println("=====**********+++++++username 제발나와주세요:" + mb.getUsername());
		Member m = mm.searchidphone(mb);
		
		return new Gson().toJson(m);
	}

	@PostMapping(value = "/duplicateid", produces="plain/text;charset=utf-8")
	public String duplicateid(Member mb) {
		System.out.println("=====**********+++++++username 제발나와주세요:" + mb.getUsername());
		Member m = mm.duplicateid(mb);
		
		return new Gson().toJson(m);
	}
}
