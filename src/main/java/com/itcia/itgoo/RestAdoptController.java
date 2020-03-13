package com.itcia.itgoo;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.google.gson.Gson;
import com.itcia.itgoo.dto.Dog;
import com.itcia.itgoo.dto.Member;
import com.itcia.itgoo.service.ClientManagement;

@RestController
public class RestAdoptController {
	
	@Autowired
	private ClientManagement cm;
	
	ModelAndView mav = new ModelAndView();
	
	@PostMapping(value = "/adoptlistdetail", produces="plain/text;charset=utf-8")
	public String adoptlistdetail(String dogid) {
		String dogpics = cm.adoptlistdetail(dogid);
		
		return dogpics;
	}
	
}
