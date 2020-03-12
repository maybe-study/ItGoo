package com.itcia.itgoo.dao;

import java.util.List;

import org.apache.ibatis.annotations.Select;

import com.itcia.itgoo.dto.Dog;

public interface IClientDao {
	@Select("SELECT * FROM dog inner join dogpics on dogpics.dogid = dog.dogid where ROWNUM=1")
	List<Dog> adoplist();

	@Select("SELECT * FROM dog inner join dogpics on dogpics.dogid = dog.dogid")
	Dog adoptlistdetail(String dogid);

}
