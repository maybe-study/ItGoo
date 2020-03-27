package com.itcia.itgoo;

import java.security.Principal;
import java.sql.Timestamp;
import java.text.SimpleDateFormat;
import java.util.Calendar;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.messaging.handler.annotation.MessageMapping;
import org.springframework.messaging.simp.SimpMessageSendingOperations;
import org.springframework.messaging.simp.SimpMessagingTemplate;
import org.springframework.scheduling.annotation.Scheduled;
import org.springframework.stereotype.Controller;

import com.google.gson.Gson;
import com.itcia.itgoo.dao.IAuctionDao;
import com.itcia.itgoo.dto.BidUpdate;
import com.itcia.itgoo.service.SocketService;

@Controller
public class SocketController {
	
	@Autowired
	private SocketService ss;
	

	@MessageMapping("/enter")
	public void enter(BidUpdate b) {
		System.out.println("옥션 번호:"+b.getAuctionnum());
		//template.convertAndSend("/topic/bidding/"+b.getAuctionnum(), "100000원");
	}
	
	@MessageMapping("/bid")
	public void bid(BidUpdate b, Principal p) {
		ss.bidCast(b, p);
	}
}