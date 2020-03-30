package com.itcia.itgoo;

import java.security.Principal;
import java.util.List;
import java.util.Locale;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.google.gson.Gson;
import com.google.gson.reflect.TypeToken;
import com.itcia.itgoo.dto.Activity;
import com.itcia.itgoo.dto.Auction;
import com.itcia.itgoo.dto.Reservation;
import com.itcia.itgoo.dto.SmallMeeting;
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
	@Autowired
	private ClientManagement cm;
	@PreAuthorize("isAuthenticated()")
	@GetMapping("/testpaper")
	public ModelAndView testPaper(int dogid) {
		
		mav = tm.testPaper(dogid);
		return mav;
	}
	@PreAuthorize("isAuthenticated()")
	@PostMapping("/testpapersubmit")
	public ModelAndView testPaperSubmit(String test,Principal p) {
		System.out.println("===================test====================");
		System.out.println(test);
		mav=tm.testPaperSubmit(test,p);
		
		
		
		return mav;
	}
	@PreAuthorize("isAuthenticated()")
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
	@PreAuthorize("isAuthenticated()")
	@RequestMapping(value = "/auctionlist", method = RequestMethod.GET)
	public ModelAndView auctionList() {
		mav = am.auctionList();
		return mav;
	}
	@PreAuthorize("isAuthenticated()")
	@RequestMapping(value = "/auctionattend", method = RequestMethod.GET)
	public ModelAndView auctionAttend(int auctionnum,Principal p) {
		mav = am.auctionAttend(auctionnum,p);
		return mav;
	}
	@PreAuthorize("isAuthenticated()")
	@RequestMapping(value = "/auctiondetail", method = RequestMethod.GET)
	public ModelAndView auctionDetail(int auctionnum) {
		mav = am.auctionDetail(auctionnum);
		return mav;
	}
	@RequestMapping(value = "/puppysmall", method = RequestMethod.GET)
	public String puppysmall(Locale locale, Model model) {
		return "client/puppySmall";
	}
	@RequestMapping(value = "/smalllist", method = RequestMethod.GET)
	public ModelAndView smalllist(SmallMeeting sm) {
		ModelAndView mav = new ModelAndView();
		mav = cm.smalllist(sm);
		return mav;
	}
	@RequestMapping(value = "/regipuppysmall", method = RequestMethod.GET)
	public String regipuppysmall(Locale locale, Model model) {
		return "client/regiPuppySmall";
	}
	

	@RequestMapping(value = "/mysmallmeeting", method = RequestMethod.GET)
	public ModelAndView mysmallmeeting(Principal p,SmallMeeting sm) {
		ModelAndView mav = new ModelAndView();
		mav = cm.myrecruitsmall(p,sm);
		return mav;
	}
	@RequestMapping(value = "/myenrollsmallmeeting", method = RequestMethod.GET)
	public ModelAndView myenrollsmallmeeting(Principal p,SmallMeeting sm) {
		ModelAndView mav = new ModelAndView();
		mav = cm.myenrollsmall(p,sm);
		return mav;
	}
	@RequestMapping(value = "/joinsmallmeeting", method = RequestMethod.GET)
	public ModelAndView joinsmallmeeting(Principal p,SmallMeeting sm) {
		ModelAndView mav = new ModelAndView();
		mav= cm.joinsmallmeeting(p, sm);
		return mav;
	}
	@RequestMapping(value = "/delmysmallmeeting")
	public ModelAndView delmysmallmeeting(Principal p,SmallMeeting sm, RedirectAttributes attr) {
		ModelAndView mav = new ModelAndView();
		mav= cm.delmysmallmeeting(p, sm, attr);
		attr.addFlashAttribute("sm",sm);
		return mav;
	}
	
	
}
