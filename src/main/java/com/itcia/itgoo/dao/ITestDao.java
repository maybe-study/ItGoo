package com.itcia.itgoo.dao;

import java.util.List;

import org.apache.ibatis.annotations.Select;

import com.itcia.itgoo.dto.Ex;
import com.itcia.itgoo.dto.Question;

public interface ITestDao {
	@Select("select * from question where toggle=1")
	List<Question> qList();

	@Select("select * from ex where questionnum=${questionnum}")
	List<Ex> exList(Question q);

}
