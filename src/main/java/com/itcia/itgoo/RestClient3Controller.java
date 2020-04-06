package com.itcia.itgoo;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.annotation.Secured;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import com.google.gson.Gson;
import com.itcia.itgoo.dto.Adopt;
import com.itcia.itgoo.dto.Auction;
import com.itcia.itgoo.dto.CareSheet;
import com.itcia.itgoo.service.AuctionManagement;
import com.itcia.itgoo.service.ClientManagement;
@Secured("ROLE_USER")
@RestController
public class RestClient3Controller {
	@Autowired
	private AuctionManagement am;
	@Autowired
	private ClientManagement cm;
	@RequestMapping(value = "/ajauctionlist", method = RequestMethod.POST, produces="application/json")
	public List<Auction> auctionListAJ(String type) {
		System.out.println("type:"+type);
		List<Auction> aList = am.auctionListAJ(type);
		return aList;
	}
	@RequestMapping(value = "/usercaresheet", method = RequestMethod.POST, produces="application/json")
	public List<CareSheet> usercaresheet(Adopt ad) {
		System.out.println("Adopt:"+ad);
		List<CareSheet> cList=cm.usercaresheet(ad);
		return cList;
	}
}
