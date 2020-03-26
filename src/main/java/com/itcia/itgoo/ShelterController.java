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
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.itcia.itgoo.dto.Commonmember;
import com.itcia.itgoo.dto.Company;
import com.itcia.itgoo.dto.Dog;
import com.itcia.itgoo.service.ShelterManagement;
import com.itcia.itgoo.share.UploadFile;

@Controller
public class ShelterController {

	@Autowired
	private ShelterManagement smm;
	ModelAndView mav = new ModelAndView(); // 계속 추가해줘야함
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

	// 마이페이지

	@RequestMapping(value = "/sheltermyinfo", method = RequestMethod.GET)
	public ModelAndView shelterMyInfo(Principal p,Company c) {
		System.out.println("쉘터 마이 인포");
		if (p != null) {
			p.getName();
			System.out.println("p=" + p.getName());
		}
		mav = smm.shelterMyInfo(p,c);
		return mav;
	}

	// 회원가입
	@PreAuthorize("isAnonymous()")
	@PostMapping(value = "/companyjoin")
	public ModelAndView companyJoin(MultipartHttpServletRequest multi, Commonmember cMember) {
		mav = smm.companyJoin(multi, cMember);

		return mav;
	}

	// 유기견공고리스트 등록
	@PreAuthorize("isAuthenticated()")
	@PostMapping(value = "/shelterdogregi")
	public ModelAndView shelterregiste(MultipartHttpServletRequest multi, Dog dog, Principal p) {
		mav = smm.shelterregiste(multi, dog, p);
		return mav;

	}

	// 공고리스트 삭제
	@RequestMapping(value = "/shelterdelete", method = RequestMethod.GET)
	public ModelAndView shelterdelete(Principal p, Dog dog, Integer pageNum) {
		if (p != null) {
			p.getName();
			System.out.println("p=" + p.getName());
		}
		mav = smm.shelterdelete1(p, dog, pageNum);
		return mav;
	}

	// 마이페이지 수정
	@PreAuthorize("isAuthenticated()")
	@PostMapping(value = "/shelterinfochange")
	public ModelAndView shelterinfochange(Principal p) {
		mav = smm.shelterinfochange(p);
		return mav;
	}

	// 페이지 보기만

	@GetMapping(value = "/shelterDelete")
	public String shelterDelete() {
		return "shelter/shelterDelete";
	}
	@RequestMapping(value = "/dogdeletebtn")
	public ModelAndView dogdeletebtn(Dog dog, RedirectAttributes attr) {

		mav = smm.dogdeletebtn(dog, attr);
		attr.addFlashAttribute("dog", dog);
		return mav;
	}

	@PostMapping(value = "/updatecompanypic")
	public ModelAndView updatecompanypic(Principal p, MultipartHttpServletRequest multi, Company cp) {
		if (p != null) {
			p.getName();
			System.out.println("p=" + p.getName());
		}
		mav = smm.updatecompanypic(p, multi, cp);

		return mav;
	}

	@PostMapping(value = "/updatecompanylocpic")
	public ModelAndView updatecompanylocpic(Principal p, MultipartHttpServletRequest multi, Company cp) {
		if (p != null) {
			p.getName();
			System.out.println("p=" + p.getName());
		}
		mav = smm.updatecompanylocpic(p, multi, cp);

		return mav;
	}

	// 페이지 보기만

	@PreAuthorize("isAuthenticated()")
	@GetMapping(value = "/shelterlocationinfo")
	public String page3() {
		return "shelter/shelterLocationInfo";
	}

	@PreAuthorize("isAuthenticated()")
	@GetMapping(value = "/shelterpicinfo")
	public String page4() {
		return "shelter/shelterPicInfo";
	}

	@PreAuthorize("isAuthenticated()")
	@GetMapping(value = "/shelterregiste")
	public String page5() {
		return "shelter/shelterRegiste";
	}

	@PreAuthorize("isAuthenticated()")
	@GetMapping(value = "/sheltercard")
	public String page7() {
		return "shelter/sheltercard";
	}
}
