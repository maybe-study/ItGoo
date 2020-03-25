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
public class Client2Controller {
	ModelAndView mav = new ModelAndView();

	@Autowired
	private TestManagement tm;
	@Autowired
	private AuctionManagement am;
	
	@GetMapping("/testpaper")
	public ModelAndView testPaper(int dogid) {
		
		mav = tm.testPaper(dogid);
		return mav;
	}
	
	@PostMapping("/testpapersubmit")
	public ModelAndView testPaperSubmit(String test,Principal p) {
		System.out.println("===================test====================");
		System.out.println(test);
		mav=tm.testPaperSubmit(test,p);
		
		
		
		return mav;
	}
	@GetMapping("/auctionfrm")
	public ModelAndView auctionFrm() {
		mav.setViewName("client/AuctionFrm");
		return mav;
	}
	
	@PostMapping("/addauction")
	public ModelAndView addAuction(Principal p,Auction a,MultipartFile f,String srcJson) {
		mav=am.addAuction(p,a,f,srcJson);
		return mav;
	}
	
	@RequestMapping(value = "/auctionlist", method = RequestMethod.GET)
	public ModelAndView auctionList() {
		mav = am.auctionList();
		return mav;
	}
	
	@RequestMapping(value = "/auctionattend", method = RequestMethod.GET)
	public ModelAndView auctionAttend(int auctionnum,Principal p) {
		mav = am.auctionAttend(auctionnum,p);
		return mav;
	}
	@RequestMapping(value = "/auctiondetail", method = RequestMethod.GET)
	public ModelAndView auctionDetail(int auctionnum) {
		mav = am.auctionDetail(auctionnum);
		return mav;
	}
	
	
}
