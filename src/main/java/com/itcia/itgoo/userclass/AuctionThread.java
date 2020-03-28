package com.itcia.itgoo.userclass;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;

import com.itcia.itgoo.dao.IAuctionDao;
import com.itcia.itgoo.dto.Auction;
import com.itcia.itgoo.service.SocketService;

public class AuctionThread extends Thread{
	//시작, 종료
	private SimpleDateFormat format = new SimpleDateFormat("MM/dd/yyyy h:mm:ss a",new Locale("en", "US"));
	private Auction a;
	private long start;
	private long end;
	public AuctionThread(Auction a){
		this.a=a;
		try {
			this.start=format.parse(a.getAuctionstart()).getTime();
			this.end=format.parse(a.getAuctionend()).getTime();
		} catch (ParseException e) {
			e.printStackTrace();
		}
	}
	@Override
	public void run() {
		SocketService ss=(SocketService)BeanUtils.getBean("socketservice");
		IAuctionDao aDao=(IAuctionDao)BeanUtils.getBean("adao");
		//시작 시간 - 현재시간 후 경매 시작
		long diff=start-new Date().getTime();
		
		waiting(diff);
		System.out.println("==============경매 시작=================");
		aDao.startAuction(a);
		
		
		
		//종료시간 - 현재시간 후 경매 종료
		diff=end-new Date().getTime();
		waiting(diff-10000);
		//경매 종료 카운트
		for(int i=10;i>0;i--) {
			ss.auctionEndCountDown(a,i);
			waiting(1000);
		}
		//1)경매 구독한 소켓에 종료 메시지 전달
		ss.auctionEndCast(a);
		//2)낙찰가 업데이트
		if(aDao.biderCnt(a)>0) {//경매에 참여한 사람이 있으면
			//낙찰가 낙찰자 업데이트
			aDao.updateAuctionBider(a);
		}
		System.out.println("==============경매 종료=================");
		aDao.endAuction(a);	//경매 종료
	}
	public void waiting(long diff) {
		try {
			Thread.sleep(diff);
		} catch (InterruptedException e) {
			e.printStackTrace();
		}
	}
	public long getStart() {
		return start;
	}
	public void setStart(long start) {
		this.start = start;
	}
	public long getEnd() {
		return end;
	}
	public void setEnd(long end) {
		this.end = end;
	}
	
	 
}
