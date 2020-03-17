package com.itcia.itgoo;

import java.security.Principal;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.ModelAndView;

import com.google.gson.Gson;
import com.google.gson.reflect.TypeToken;
import com.itcia.itgoo.dto.Test;
import com.itcia.itgoo.service.ClientManagement;
import com.itcia.itgoo.service.TestManagement;

@Controller
public class Client2Controller {
	ModelAndView mav = new ModelAndView();

	@Autowired
	private TestManagement tm;

	
	@GetMapping("/testpaper")
	public ModelAndView testPaper() {
		
		mav = tm.testPaper();
		return mav;
	}
	
	@PostMapping("/testpapersubmit")
	public ModelAndView testPaperSubmit(String test,Principal p) {
		System.out.println("===================test====================");
		System.out.println(test);
		mav=tm.testPaperSubmit(test,p);
		
		
		
		return mav;
	}
}
