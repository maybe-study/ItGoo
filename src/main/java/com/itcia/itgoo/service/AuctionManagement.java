package com.itcia.itgoo.service;

import java.security.Principal;
import java.sql.Timestamp;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.google.gson.Gson;
import com.google.gson.reflect.TypeToken;
import com.itcia.itgoo.dao.IAuctionDao;
import com.itcia.itgoo.dto.Auction;
import com.itcia.itgoo.dto.Ex;
import com.itcia.itgoo.share.UploadFile;
@Transactional
@Service
public class AuctionManagement {
	@Autowired
	private IAuctionDao aDao;
	private ModelAndView mav = new ModelAndView();
	
	public String ckUpload(MultipartFile file) {
		UploadFile up = new UploadFile();
		String path = up.fileUp(file , "auction");
		
		System.out.println("==============multi====================");
		System.out.println(path);
		return "{ \"uploaded\" : true, \"url\" : \"" + path + "\" }";
	}

	public ModelAndView auctionList() {
		
		List<Auction> aList=null;
		
		aList=aDao.expectedAuctionList();
				
		mav.addObject("aList",new Gson().toJson(aList));
		mav.setViewName("client/AuctionList");
		return mav;
	}
	@Transactional
	public ModelAndView addAuction(Principal p, Auction a,MultipartFile f, String srcJson) {
		UploadFile up = new UploadFile();
		a.setOwner(p.getName());
		a.setAuctionpic(up.fileUp(f , "auctionthumb"));
		List<String> srcList=new Gson().fromJson(srcJson,new TypeToken<ArrayList<String>>() {}.getType());
		aDao.addAuction(a);
		for(String src:srcList) {
			aDao.addauctionPic(a.getAuctionnum(),src);
		}
		mav.setViewName("/auctionlist");
		return mav;
	}

	public ModelAndView auctionAttend(int auctionnum, Principal p) {
		mav.addObject("auction",new Gson().toJson(aDao.auctionDetail(auctionnum)));
		mav.addObject("aPics",new Gson().toJson(aDao.auctionPics(auctionnum)));
		//방 생성
		
		//소켓 열고
		
		//경매 참여자 리스트에 저장
		
		mav.setViewName("client/AuctionAttend");
		return mav;
	}

	public ModelAndView auctionDetail(int auctionnum) {
		mav.addObject("auction",new Gson().toJson(aDao.auctionDetail(auctionnum)));
		mav.setViewName("client/AuctionDetail");
		return mav;
	}
}
