package com.itcia.itgoo.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.ModelAndView;

import com.itcia.itgoo.dao.ICommunityDao;
import com.itcia.itgoo.dto.Communityfile;
import com.itcia.itgoo.share.UploadFile;

@Service
public class CommunityManagement {
	@Autowired
	private ICommunityDao iDao;
	@Autowired
	private UploadFile up;
	private ModelAndView mav = new ModelAndView();

	public ModelAndView writeList(MultipartHttpServletRequest multi, Communityfile cfile) {
		
		List<String> paths = up.fileUp(multi.getFiles("files"), "communityfile");
		for (String picPath : paths) {
			iDao.insertCommunityfile(picPath, cfile.getCommunityfile());
		}
		mav.setViewName("listitgoo");

		return mav;
	}

}
