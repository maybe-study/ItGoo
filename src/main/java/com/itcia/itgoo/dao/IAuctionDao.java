package com.itcia.itgoo.dao;

import java.util.List;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.SelectKey;
import org.apache.ibatis.annotations.Update;
import org.apache.ibatis.type.Alias;
import org.springframework.stereotype.Repository;

import com.google.gson.JsonElement;
import com.itcia.itgoo.dto.Auction;
import com.itcia.itgoo.dto.BidUpdate;

import lombok.Data;

@Repository("adao")
public interface IAuctionDao {
	/*
	 * 진행 예정인 경매 : 경매 시작 시간>현재 시간
	 * 진행중인 경매 : 경매 시작 시간<현재시간 && 경매시작 시간+1>현재시간
	 * 경매 완료 : 경매 시작 시간+1<현재시간
	 * 경매는 한시간동안 이루어진다.
	 */
	@Select("select auctionnum,auctionname,auctionexplain,auctionpic,\r\n" + 
			"to_char(auctionstart,'MM/DD/YYYY HH:MI:SS AM', 'NLS_DATE_LANGUAGE = AMERICAN') \r\n" + 
			"as auctionstart,owner,lowprice\r\n" + 
			"from auction where status=0")
	List<Auction> expectedAuctionList();
	@Select("select auctionnum,auctionname,auctionexplain,auctionpic,\r\n" + 
			"to_char(auctionstart,'MM/DD/YYYY HH:MI:SS AM', 'NLS_DATE_LANGUAGE = AMERICAN') \r\n" + 
			"as auctionstart,owner,lowprice from auction where status=1")
	List<Auction> proceedingAuctionList();
	@Select("select auctionnum,auctionname,auctionexplain,auctionpic,\r\n" + 
			"to_char(auctionstart,'MM/DD/YYYY HH:MI:SS AM', 'NLS_DATE_LANGUAGE = AMERICAN') \r\n" + 
			"as auctionstart,owner,lowprice from auction where status=2")
	List<Auction> completeAuctionListts();
	//매퍼
	void addAuction(Auction a);
	@Select("select * from auction where auctionnum=#{auctionnum}")
	Auction auctionDetail(int auctionnum);
	
	@Insert("insert into auctionpics values(#{param2},#{param1})")
	void addauctionPic(int i, String src);
	@Select("select * from auctionpics where auctionnum=#{auctionnum}")
	List<String> auctionPics(int auctionnum);
	@Select("select * from (select * from bidupdate ORDER by currentprice desc) " + 
			"where auctionnum=${auctionnum} and rownum=1")
	BidUpdate getMaxBid(BidUpdate b);
	@Insert("insert into bidupdate values(#{currentprice},#{id},#{auctionnum})")
	void insertBid(BidUpdate b);
	@Select("select * from bidupdate where auctionnum=#{auctionnum}")
	List<BidUpdate> bids(int auctionnum);
	@Update("update auction set status=1 where auctionnum=#{auctionnum}")
	void startAuction(Auction a);
	@Update("update auction set status=2 where auctionnum=#{auctionnum}")
	void endAuction(Auction a);
	@Select("select count(*) from bidupdate where auctionnum=#{auctionnum}")
	int biderCnt(Auction a);
	//매퍼
	void updateAuctionBider(Auction a);
	@Select("select id,max(bidupdate.currentprice) currentprice,auction.auctionnum,auction.auctionname,auction.auctionstart \r\n" + 
			"from bidupdate join auction on bidupdate.auctionnum=auction.auctionnum \r\n" + 
			"where id=#{id} group by id, auction.auctionnum, auction.auctionname, auction.auctionstart")
	List<Auction> myAttended(String id);
	@Select("select * from auction where owner=#{id}")
	List<Auction> myUploadAuction(String id);

}
