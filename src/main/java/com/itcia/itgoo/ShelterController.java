package com.itcia.itgoo;


import java.security.Principal;
import java.text.DateFormat;
import java.util.Date;
import java.util.List;
import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.ModelAndView;

import com.itcia.itgoo.dto.Commonmember;
import com.itcia.itgoo.dto.Dog;
import com.itcia.itgoo.service.ShelterManagement;
import com.itcia.itgoo.share.UploadFile;

@Controller
public class ShelterController {

	@Autowired
	private ShelterManagement smm;
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
	@PreAuthorize("isAnonymous()")
	@PostMapping(value = "/companyjoin")
	public ModelAndView companyJoin(MultipartHttpServletRequest multi, Commonmember cMember) {
		mav=smm.companyJoin(multi,cMember);
		
		return mav;
	}
	
	
	
	//유기견공고리스트 등록
	@PreAuthorize("isAuthenticated()")
	@PostMapping(value = "/shelterdogregi")
	public ModelAndView shelterregiste(MultipartHttpServletRequest multi,Dog dog,Principal p) {
		mav=smm.shelterregiste(multi,dog,p);
		return mav;
		
	}
	
	
	
	
	
	
	
	
	
	
	
	
	//페이지 보기만
		
		@GetMapping(value = "/sheltermyinfo")
		public ModelAndView shelterMyInfo() {
			mav.setViewName("shelter/shelterMyInfo");
			
			return mav;
		}
		@PreAuthorize("isAuthenticated()")
		@GetMapping(value = "/shelterdelete")
		public String page1() {
			return "shelter/shelterDelete";
		}

		@PreAuthorize("isAuthenticated()")
		@GetMapping(value = "/shelterDeleteDetail")
		public String page2() {
			return "shelter/shelterDeleteDetail";
		}
		
		@PreAuthorize("isAuthenticated()")
		@GetMapping(value = "/shelterLocationInfo")
		public String page3() {
			return "shelter/shelterLocationInfo";
		}
		
		@PreAuthorize("isAuthenticated()")
		@GetMapping(value = "/shelterPicInfo")
		public String page4() {
			return "shelter/shelterPicInfo";
		}
		
		@PreAuthorize("isAuthenticated()")
		@GetMapping(value = "/shelterRegiste")
		public String page5() {
			return "shelter/shelterRegiste";
		}

}
