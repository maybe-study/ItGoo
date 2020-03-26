package com.itcia.itgoo;

import java.security.Principal;
import java.sql.Timestamp;
import java.text.SimpleDateFormat;
import java.util.Calendar;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.messaging.handler.annotation.MessageMapping;
import org.springframework.messaging.simp.SimpMessageSendingOperations;
import org.springframework.messaging.simp.SimpMessagingTemplate;
import org.springframework.stereotype.Controller;

import com.google.gson.Gson;
import com.itcia.itgoo.dao.IAuctionDao;
import com.itcia.itgoo.dto.BidUpdate;

@Controller
public class SocketController {
	
	private final SimpMessagingTemplate  template;
	@Autowired
	private IAuctionDao aDao;
	@Autowired
	public SocketController(SimpMessagingTemplate template) {
		this.template = template;
	}
	
	@MessageMapping("/enter")
	public void enter(BidUpdate b) {
		System.out.println("옥션 번호:"+b.getAuctionnum());
		//template.convertAndSend("/topic/bidding/"+b.getAuctionnum(), "100000원");
	}
	
	@MessageMapping("/bid")
	public void bid(BidUpdate b, Principal p) {
		b.setId(p.getName());
		System.out.println("유저아이디:"+p.getName());
		System.out.println("옥션 번호:"+b.getAuctionnum());
		BidUpdate maxBid=aDao.getMaxBid(b);
		System.out.println("=======================bid=======================");
		if(maxBid==null) {	//입찰이 없으면
			//최저가보다 입찰가가 크면 인서트
			int lowPrice=aDao.auctionDetail(b.getAuctionnum()).getLowprice();
			if(lowPrice<b.getCurrentprice()) {
				aDao.insertBid(b);
				template.convertAndSend("/topic/bidding/"+b.getAuctionnum(), new Gson().toJson(b));
			}
		}else if(maxBid.getCurrentprice()<b.getCurrentprice()){//기존 최고가보다 입찰가가 크면
		//현재 가격보다 높으면 경매가 갱신하고 전달
			aDao.insertBid(b);
			template.convertAndSend("/topic/bidding/"+b.getAuctionnum(), new Gson().toJson(b));
		}
	}
	
	
	
}