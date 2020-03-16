package com.itcia.itgoo.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.servlet.ModelAndView;

import com.google.gson.Gson;
import com.itcia.itgoo.dao.ITestDao;
import com.itcia.itgoo.dto.Ex;
import com.itcia.itgoo.dto.Question;

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
}
