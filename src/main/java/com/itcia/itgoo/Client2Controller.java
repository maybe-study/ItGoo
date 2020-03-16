package com.itcia.itgoo;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.servlet.ModelAndView;

import com.itcia.itgoo.service.ClientManagement;
import com.itcia.itgoo.service.TestManagement;

@Controller
public class Client2Controller {
	ModelAndView mav = new ModelAndView();

	@Autowired
	private TestManagement tm;

	
	@GetMapping("/testpaper")
	public ModelAndView adoptlist() {
		
		mav = tm.testPaper();
		return mav;
	}
}
