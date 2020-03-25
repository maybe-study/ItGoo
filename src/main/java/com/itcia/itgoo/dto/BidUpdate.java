package com.itcia.itgoo.dto;

import org.apache.ibatis.type.Alias;

import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.experimental.Accessors;

@NoArgsConstructor
@Alias("bidupdate")
@Data
@Accessors(chain=true)
public class BidUpdate {
	private String id;
	private int auctionnum;
	private int currentprice;

}
