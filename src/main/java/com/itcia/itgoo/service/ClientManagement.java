package com.itcia.itgoo.service;

import java.security.Principal;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.ModelAndView;

import com.google.gson.Gson;
import com.itcia.itgoo.dao.IClientDao;
import com.itcia.itgoo.dto.Adopt;
import com.itcia.itgoo.dto.Dog;
import com.itcia.itgoo.share.UploadFile;

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
		System.out.println("======================================\ndogid:" + dogid);
		Dog dog = cDao.dogDetail(dogid);
		dog.setDogpics(cDao.adoptlistdetail(dogid));
		return new Gson().toJson(dog);
	}

	public ModelAndView applyadopt(MultipartHttpServletRequest multi, Adopt ad, Principal p) {
		ad.setPhase(1);
		ad.setId(p.getName());
		System.out.println("111111111111111111"+ad.getId());
		ad.setScore(0);
		UploadFile up = new UploadFile();
		String path = up.fileUp(multi.getFile("identifile"), "idfile");
		ad.setIdfile(path);
		cDao.insertapplyadopt(ad);
		mav.setViewName("myAdoptPhase");
		return mav;
	}
}
