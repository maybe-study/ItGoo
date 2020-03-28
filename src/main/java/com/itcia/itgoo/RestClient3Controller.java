package com.itcia.itgoo;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import com.google.gson.Gson;
import com.itcia.itgoo.dto.Auction;
import com.itcia.itgoo.service.AuctionManagement;

@RestController
public class RestClient3Controller {
	@Autowired
	private AuctionManagement am;
	@RequestMapping(value = "/ajauctionlist", method = RequestMethod.POST, produces="application/json")
	public List<Auction> auctionListAJ(String type) {
		System.out.println("type:"+type);
		List<Auction> aList = am.auctionListAJ(type);
		return aList;
	}
}
