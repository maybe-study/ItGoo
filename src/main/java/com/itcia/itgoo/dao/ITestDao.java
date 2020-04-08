package com.itcia.itgoo.dao;

import java.sql.SQLIntegrityConstraintViolationException;
import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import com.google.gson.JsonElement;
import com.itcia.itgoo.dto.Adopt;
import com.itcia.itgoo.dto.Ex;
import com.itcia.itgoo.dto.Question;
import com.itcia.itgoo.dto.Test;
import com.itcia.itgoo.dto.TestResult;

public interface ITestDao {
	@Select("select * from question where toggle=1")
	List<Question> qList();

	@Select("select * from ex where questionnum=${questionnum}")
	List<Ex> exList(Question q);
	
	@Insert("insert into test values(${questionnum},'${id}',${dogid},${answer})")
	void testPaperSubmit(Test t);
	
	@Delete("delete from test where id='${id}' and dogid=${dogid}")
	void testDelete(Test test);
	@Select("select  question.questionnum,question.correct,question.point," + 
			"        question.question, test.answer" + 
			"        from test join question on" + 
			"        test.questionnum = question.questionnum"
			+ " where test.id='${id}' and test.dogid=${dogid} order by question.questionnum")
	List<TestResult> getTestResult(Test test);
	
	@Select("select test.questionnum from question join test on question.questionnum=test.questionnum where test.id='${id}' and test.dogid=${dogid} order by test.questionnum")
	List<Question> getResultQuestion(Test test);
	
	@Update("update adopt set phase=2 where id='${id}' and dogid=${dogid}")
	void documentPass(Adopt adopt);

	@Delete("delete adopt where dogid=${dogid}")
	void adoptOut(Adopt adopt);

	
	@Update("update adopt set phase=3 where id='${id}' and dogid=${dogid}")
	void upgrade(Test test);
	
	@Update("update adopt set phase=0 where id='${id}' and dogid=${dogid}")
	void downgrade(Test test);
	@Update("update adopt set score=#{pointSum} where id=#{id} and dogid=${dogid}")
	void updateScore(Test test);
	
	@Update("update dog set status=0 where dogid=#{dogid}")
	void dogUpdate(Adopt adopt);

	@Delete("delete test where dogid=#{dogid}")
	void testOut(Adopt adopt);

	List<Question> qTestList();
	
	

}
