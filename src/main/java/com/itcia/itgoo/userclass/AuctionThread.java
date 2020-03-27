package com.itcia.itgoo.userclass;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;


import com.itcia.itgoo.dto.Auction;
import com.itcia.itgoo.service.SocketService;

public class AuctionThread extends Thread{
	//시작, 종료
	SimpleDateFormat format = new SimpleDateFormat("MM/dd/yyyy h:mm a",new Locale("en", "US"));
	Auction a;
	Date start;
	
	public AuctionThread(Auction a){
		this.a=a;
		try {
			this.start=format.parse(a.getAuctionstart());
		} catch (ParseException e) {
			e.printStackTrace();
		}
	}
	@Override
	public void run() {
		//종료 시간 구하고 종료시간에서 현재시간을 뺀 시간 sleep 후 경매 종료
		Date today=new Date();
		//long diff=start.getTime()+3600000-today.getTime();
		long diff=10000;
		try {
			Thread.sleep(diff);
		} catch (InterruptedException e) {
			e.printStackTrace();
		}
		
		//경매 종료: 1) 연결된 소켓에 종료 메시지 전달, 2) 물건 산 사람 업데이트, 낙찰가 업데이트
		//1)
		SocketService ss=(SocketService)BeanUtils.getBean("socketservice");
		ss.auctionEndCast(a);
		
	}
	 
}
