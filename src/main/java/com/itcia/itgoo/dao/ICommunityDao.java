package com.itcia.itgoo.dao;

import org.apache.ibatis.annotations.Insert;

import com.itcia.itgoo.dto.Communityfile;

public interface ICommunityDao {

	@Insert("INSERT INTO COMMUNITYFILE VALUES(#{communityfile},#{communitynum})")
	public void insertCommunityfile(String picPath, String communityfile);

}
