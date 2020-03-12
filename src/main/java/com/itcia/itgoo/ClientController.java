package com.itcia.itgoo;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.servlet.ModelAndView;

import com.google.gson.Gson;
import com.itcia.itgoo.dto.Dog;
import com.itcia.itgoo.service.ClientManagement;
@Controller
public class ClientController {
	
	ModelAndView mav = new ModelAndView();
	
	@Autowired
	private ClientManagement cm;

	@PreAuthorize("isAuthenticated()")
	@GetMapping("/adoptlist")
	public ModelAndView adoptlist() {
		System.out.println("컨트롤러 도착");
		mav = cm.adoplist();
		return mav;
	}

}
