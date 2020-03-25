package com.itcia.itgoo.dao;

import java.util.List;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.SelectKey;

import com.google.gson.JsonElement;
import com.itcia.itgoo.dto.Auction;


public interface IAuctionDao {
	/*
	 * 진행 예정인 경매 : 경매 시작 시간>현재 시간
	 * 진행중인 경매 : 경매 시작 시간<현재시간 && 경매시작 시간+1>현재시간
	 * 경매 완료 : 경매 시작 시간+1<현재시간
	 * 경매는 한시간동안 이루어진다.
	 */
	@Select("select auctionnum,auctionname,auctionexplain,auctionpic,\r\n" + 
			"to_char(auctionstart,'MM/DD/YYYY HH:MI AM', 'NLS_DATE_LANGUAGE = AMERICAN') \r\n" + 
			"as auctionstart,owner,lowprice\r\n" + 
			"from auction where auctionstart>systimestamp")
	List<Auction> expectedAuctionList();
	@Select("select auctionnum,auctionname,auctionexplain,auctionpic,\r\n" + 
			"to_char(auctionstart,'MM/DD/YYYY HH:MI AM', 'NLS_DATE_LANGUAGE = AMERICAN') \r\n" + 
			"as auctionstart,owner,lowprice from auction where systimestamp between auctionstart and AUCTIONSTART + (interval '1' hour)")
	List<Auction> proceedingAuctionList();
	@Select("select auctionnum,auctionname,auctionexplain,auctionpic,\r\n" + 
			"to_char(auctionstart,'MM/DD/YYYY HH:MI AM', 'NLS_DATE_LANGUAGE = AMERICAN') \r\n" + 
			"as auctionstart,owner,lowprice from auction where AUCTIONSTART + (interval '1' hour)<systimestamp")
	List<Auction> completeAuctionListts();
	//매퍼
	void addAuction(Auction a);
	@Select("select * from auction where auctionnum=#{auctionnum}")
	Auction auctionDetail(int auctionnum);
	
	@Insert("insert into auctionpics values(#{param2},#{param1})")
	void addauctionPic(int i, String src);
	@Select("select * from auctionpics where auctionnum=#{auctionnum}")
	List<String> auctionPics(int auctionnum);

}
