package com.itcia.itgoo;

import java.security.Principal;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.ModelAndView;

import com.google.gson.Gson;
import com.google.gson.reflect.TypeToken;
import com.itcia.itgoo.dto.Auction;
import com.itcia.itgoo.dto.Reservation;
import com.itcia.itgoo.dto.Test;
import com.itcia.itgoo.service.AuctionManagement;
import com.itcia.itgoo.service.ClientManagement;
import com.itcia.itgoo.service.TestManagement;

@Controller
public class RestClient2Controller {
	ModelAndView mav = new ModelAndView();

	@Autowired
	private TestManagement tm;
	@Autowired
	private AuctionManagement am;
	
	@GetMapping("/example")
	public String auctionAttend(int dogid) {
		
		mav = tm.testPaper(dogid);
		return null;
	}
	@RequestMapping(value = "/ajauctionlist", method = RequestMethod.GET)
	public String auctionListAJ(String kind) {
		String aList = am.auctionListAJ(kind);
		return aList;
	}
	
	
	
}
