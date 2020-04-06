package com.itcia.itgoo.service;

import java.security.Principal;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.messaging.simp.SimpMessagingTemplate;
import org.springframework.stereotype.Service;

import com.google.gson.Gson;
import com.itcia.itgoo.dao.IAuctionDao;
import com.itcia.itgoo.dto.Auction;
import com.itcia.itgoo.dto.BidUpdate;
import com.itcia.itgoo.dto.Chat;

@Service("socketservice")
public class SocketService {
	private final SimpMessagingTemplate  template;
	@Autowired
	private IAuctionDao aDao;
	@Autowired
	public SocketService(SimpMessagingTemplate template) {
		this.template = template;
	}
	
	
	public void bidCast(BidUpdate b, Principal p) {
		b.setId(p.getName());
		System.out.println("유저아이디:"+p.getName());
		System.out.println("옥션 번호:"+b.getAuctionnum());
		Auction a=aDao.auctionDetail(b.getAuctionnum());
		BidUpdate maxBid=aDao.getMaxBid(b);

		int lowPrice=a.getLowprice();
		if(a.getStatus()!=1) {//경매 진행중이 아니면
			return;
		}else if(maxBid==null&&(lowPrice<b.getCurrentprice())) {	//입찰이 없고, 최저가보다 입찰가가 크면
			aDao.insertBid(b);
			template.convertAndSend("/topic/bidding/"+b.getAuctionnum(), new Gson().toJson(b));
		}else if(maxBid.getCurrentprice()<b.getCurrentprice()){
		//최고 가격보다 입찰가격이 높으면 경매가 갱신하고 전달
			aDao.insertBid(b);
			template.convertAndSend("/topic/bidding/"+b.getAuctionnum(), new Gson().toJson(b));
		}
	}
	public void auctionEndCast(Auction a) {
		System.out.println("=======================캐스트!!!!!=======================");
		System.out.println("종료 하는 경매 : "+a.getAuctionnum());
		template.convertAndSend("/topic/auctoinEnd/"+a.getAuctionnum(), new Gson().toJson(a));
	}
	public void auctionEndCountDown(Auction a, int i) {
		template.convertAndSend("/topic/auctoinEndCountDown/"+a.getAuctionnum(), i);
	}


	public void chatCast(Chat c) {
		// TODO Auto-generated method stub
		template.convertAndSend("/topic/smallmeetingchat/"+c.getSmallnumber(), new Gson().toJson(c));
	}
}
