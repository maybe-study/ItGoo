package com.itcia.itgoo.dao;

import java.util.List;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;

import com.itcia.itgoo.dto.Chat;

public interface IChatDao {
	@Insert("insert into smallchat values(smallchat_seq.nextval,#{smallnumber},#{id},#{chat})")
	void insertChat(Chat c);
	
	@Select("select * from smallchat where smallnumber=#{smallnumber}")
	List<Chat> smallChatList(Integer smallnumber);
	
}
