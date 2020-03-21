package com.itcia.itgoo.service;

import java.security.Principal;
import java.sql.SQLIntegrityConstraintViolationException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.view.RedirectView;

import com.google.gson.Gson;
import com.google.gson.reflect.TypeToken;
import com.itcia.itgoo.dao.ITestDao;
import com.itcia.itgoo.dto.Ex;
import com.itcia.itgoo.dto.Question;
import com.itcia.itgoo.dto.Test;
import com.itcia.itgoo.dto.TestResult;

@Service
public class TestManagement {
	@Autowired
	private ITestDao tDao;
	ModelAndView mav=new ModelAndView();
	public ModelAndView testPaper(int dogid) {
		if(dogid==0) {	//강아지 아이디가 없으면 돌려보냄
			return null;
		}
		List<Question> qList=tDao.qList();
		for(Question q: qList) {
			List<Ex> exList=tDao.exList(q);
			q.setExList(exList);
		}
		mav.addObject("qList",new Gson().toJson(qList));
		mav.addObject("dogid",dogid);
		mav.setViewName("client/testPaper");
		return mav;
	}
	public ModelAndView testPaperSubmit(String test, Principal p) {
		
			List<Test> tList= new Gson().fromJson(test, new TypeToken<List<Test>>() {}.getType());
			tList.get(0).setId(p.getName());
			tDao.testDelete(tList.get(0));
			for(Test t: tList) {
				t.setId(p.getName());
				System.out.println(t);
				
				tDao.testPaperSubmit(t);
				System.out.println(t);
			}
		return testResult(tList.get(0));
	}
	private ModelAndView testResult(Test test) {
		int pointSum=0;
		RedirectView redirectView = new RedirectView(); // redirect url 설정
		redirectView.setExposeModelAttributes(false);
		redirectView.setUrl("testResult");
		mav.setView(redirectView);
		List<TestResult> rList=tDao.getTestResult(test);
		mav.addObject("rList",new Gson().toJson(rList));
		
		List<Question> qList=tDao.qList();
		for(Question q: qList) {
			List<Ex> exList=tDao.exList(q);
			q.setExList(exList);
		}
		//점수 합계
		for(TestResult t: rList) {
			if(t.getCorrect()==t.getAnswer());
				pointSum+=t.getPoint();
		}
		//50점 이상이면 단계 상승 -> 3단계
		if(pointSum>60)tDao.upgrade(test);
		//단계 하락 ->0단계
		else tDao.downgrade(test);
			
		mav.addObject("qList",new Gson().toJson(qList));
		mav.setViewName("client/testResult");
		return mav;
	}
	
}
