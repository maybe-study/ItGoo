package com.itcia.itgoo;

import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.itcia.itgoo.dto.Member;
import com.itcia.itgoo.service.ShelterManagement;

@Controller
public class ShelterController {

	@Autowired
	private ShelterManagement mm;
	ModelAndView mav = new ModelAndView();
	private static final Logger logger = LoggerFactory.getLogger(AdminController.class);

	@RequestMapping(value = "/joinfrm", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
		logger.info("Welcome home! The client locale is {}.", locale);

		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);

		String formattedDate = dateFormat.format(date);

		model.addAttribute("serverTime", formattedDate);

		return "main";
	}

	// 회원가입
	@RequestMapping(value = "/sheltermemberjoin", method = RequestMethod.POST)
	public ModelAndView memberjoin(Member mb) {

		mav = mm.sheltermemberjoin(mb);

		return mav;
	}

}
