package com.itcia.itgoo.dao;

import java.util.List;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;

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
	@Insert("insert into auction values(auction_seq.nextval,#{auctionname},#{auctionpic},#{lowprice},#{auctionexplain},TO_timestamp(#{auctionstart},'MM/DD/YYYY HH:MI AM', 'NLS_DATE_LANGUAGE = AMERICAN'),#{owner},'undefined',0)")
	void addAuction(Auction a);
	@Select("select * from auction where auctionnum=#{auctionnum}")
	Auction auctionDetail(int auctionnum);

}
