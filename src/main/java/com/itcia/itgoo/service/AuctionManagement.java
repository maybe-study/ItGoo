package com.itcia.itgoo.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.ModelAndView;

import com.google.gson.Gson;
import com.itcia.itgoo.dao.IClientDao;
import com.itcia.itgoo.share.UploadFile;

@Service
public class AuctionManagement {
	@Autowired
	private IClientDao cDao;
	private ModelAndView mav = new ModelAndView();
	
	public String ckUpload(MultipartFile file) {
		UploadFile up = new UploadFile();
		String path = up.fileUp(file , "auction");
		System.out.println("==============multi====================");
		System.out.println(path);
		return "{ \"uploaded\" : true, \"url\" : \"" + path + "\" }";
	}
}
