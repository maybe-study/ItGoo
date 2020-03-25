package com.itcia.itgoo;

import java.sql.Timestamp;
import java.text.SimpleDateFormat;
import java.util.Calendar;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.messaging.handler.annotation.MessageMapping;
import org.springframework.messaging.simp.SimpMessageSendingOperations;
import org.springframework.messaging.simp.SimpMessagingTemplate;
import org.springframework.stereotype.Controller;

import com.itcia.itgoo.dto.BidUpdate;

@Controller
public class SocketController {
	
	private final SimpMessagingTemplate  template;
	@Autowired
	public SocketController(SimpMessagingTemplate template) {
		this.template = template;
	}
	
	@MessageMapping("/enter")
	public void enter(BidUpdate b) {
		System.out.println("옥션 번호:"+b.getAuctionnum());
		template.convertAndSend("/topic/bidding/"+b.getAuctionnum(), "100000원");
	}
	
}