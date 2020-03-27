package com.itcia.itgoo.service;

import java.security.Principal;
import java.sql.Timestamp;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.messaging.simp.SimpMessagingTemplate;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.view.RedirectView;

import com.google.gson.Gson;
import com.google.gson.reflect.TypeToken;
import com.itcia.itgoo.dao.IAuctionDao;
import com.itcia.itgoo.dto.Auction;
import com.itcia.itgoo.share.UploadFile;
import com.itcia.itgoo.userclass.AuctionThread;
@Transactional
@Service
public class AuctionManagement {
	private ModelAndView mav = new ModelAndView();
	private final SimpMessagingTemplate  template;
	@Autowired
	private IAuctionDao aDao;
	@Autowired
	public AuctionManagement(SimpMessagingTemplate template) {
		this.template = template;
	}
	
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
		
		//경매 종료 타이머
		AuctionThread aThread =new AuctionThread(a);
		aThread.start();
		
		aDao.addAuction(a);
		for(String src:srcList) {
			aDao.addauctionPic(a.getAuctionnum(),src);
		}
		
		RedirectView redirectView = new RedirectView(); // redirect url 설정
		redirectView.setExposeModelAttributes(false);
		redirectView.setUrl("auctionlist");
		mav.setView(redirectView);
		return mav;
	}

	public ModelAndView auctionAttend(int auctionnum, Principal p) {
		mav.addObject("auction",new Gson().toJson(aDao.auctionDetail(auctionnum)));
		mav.addObject("aPics",new Gson().toJson(aDao.auctionPics(auctionnum)));
		mav.addObject("bids",new Gson().toJson(aDao.bids(auctionnum)));
		mav.setViewName("client/AuctionAttend");
		return mav;
	}

	public ModelAndView auctionDetail(int auctionnum) {
		mav.addObject("auction",new Gson().toJson(aDao.auctionDetail(auctionnum)));
		mav.setViewName("client/AuctionDetail");
		return mav;
	}

	public String auctionListAJ(String kind) {
		List<Auction> aList=null;
		if(kind.equals("진행 예정 경매"))
			aList=aDao.expectedAuctionList();
		if(kind.equals("진행중"))
			aList=aDao.proceedingAuctionList();
		if(kind.equals("완료"))
			aList=aDao.completeAuctionListts();
		
		return new Gson().toJson(aList);
	}
}
