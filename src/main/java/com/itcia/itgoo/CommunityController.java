package com.itcia.itgoo;

import java.util.logging.Logger;

import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.ModelAndView;

import com.itcia.itgoo.dto.Community;
import com.itcia.itgoo.service.CommunityManagement;

@Controller
public class CommunityController {

	@Autowired
	private CommunityManagement cm;
	ModelAndView mav = new ModelAndView();

	
	@PostMapping(value = "/writepage")
	public ModelAndView writeList(MultipartHttpServletRequest multi, Community cMemmber) {
		mav = cm.writeList(multi, cMemmber);
		return mav;

	}

}
