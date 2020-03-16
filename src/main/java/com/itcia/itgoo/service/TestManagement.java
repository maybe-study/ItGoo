package com.itcia.itgoo.service;

import java.security.Principal;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.servlet.ModelAndView;

import com.google.gson.Gson;
import com.google.gson.reflect.TypeToken;
import com.itcia.itgoo.dao.ITestDao;
import com.itcia.itgoo.dto.Ex;
import com.itcia.itgoo.dto.Question;
import com.itcia.itgoo.dto.Test;

@Service
public class TestManagement {
	@Autowired
	private ITestDao tDao;
	ModelAndView mav=new ModelAndView();
	public ModelAndView testPaper() {
		List<Question> qList=tDao.qList();
		for(Question q: qList) {
			List<Ex> exList=tDao.exList(q);
			q.setExList(exList);
		}
		mav.addObject("qList",new Gson().toJson(qList));
		mav.setViewName("client/testPaper");
		return mav;
	}
	public ModelAndView testPaperSubmit(String test, Principal p) {
		List<Test> tList= new Gson().fromJson(test, new TypeToken<List<Test>>() {}.getType());
		for(Test t: tList) {
			t.setId(p.getName());
			System.out.println(t);
			tDao.testPaperSubmit(t);
			System.out.println(t);
		}
		return null;
	}
}
