package com.itcia.itgoo.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.servlet.ModelAndView;

import com.google.gson.Gson;
import com.itcia.itgoo.dao.IClientDao;
import com.itcia.itgoo.dto.Dog;
import com.itcia.itgoo.dto.Member;

@Service
public class ClientManagement {
	@Autowired
	private IClientDao cDao;
	private ModelAndView mav = new ModelAndView();
	public ModelAndView adoplist() {
		List<Dog> d = cDao.adoplist();

		System.out.println(d);
		mav.addObject("dogList", new Gson().toJson(d));
		mav.setViewName("adoptList");

		return mav;
	}

	public String adoptlistdetail(String dogid) {
		List<String> dogpics = cDao.adoptlistdetail(dogid);
		return new Gson().toJson(dogpics);
	}
}
