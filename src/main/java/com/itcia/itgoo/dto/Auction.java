package com.itcia.itgoo.dto;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.type.Alias;
import org.springframework.web.socket.WebSocketSession;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.experimental.Accessors;


//@Getter@Setter
@NoArgsConstructor
@AllArgsConstructor
@Alias("auction")
@Data
@Accessors(chain=true)
public class Auction {
	private Map<String,WebSocketSession> users;
	private int auctionnum;
	private String auctionname;
	private String auctionpic;
	private int lowprice;
	private String auctionexplain;
	private String auctionstart;
	private String owner;
	private String buyer;
	private int realprice;
}
