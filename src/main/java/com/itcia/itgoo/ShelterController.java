package com.itcia.itgoo;


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
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.ModelAndView;

import com.itcia.itgoo.dto.Commonmember;
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
	@PostMapping(value = "/shelterjoin")
	public ModelAndView memberjoin(Commonmember cmb) {
		System.out.println("여기오니");
		mav = smm.shelterjoin(cmb);

		return mav;
	}
	// 회원가입
	@PreAuthorize("isAnonymous()")
	@PostMapping(value = "/companyjoin")
	public ModelAndView companyJoin(MultipartHttpServletRequest multi, Commonmember cMember) {
		/*
		 * 파일 업로드 사용법
		 * 1. UploadFile 클래스 선언
		 * 2. 단일 파일 업로드일 경우:fileUp(multi.getFile("넘긴 이름"),"종류")
		 *    여러개 파일 업로드일 경우:fileUp(multi.getFiles("넘긴 이름"),"종류")
		 *    return 값을 db에 저장
		 */
		UploadFile up=new UploadFile();
		
		//파일 업로드(시설 사진 리스트)
		List<String> paths=up.fileUp(multi.getFiles("files"),"company");
		//파일 업로드 (시설 등록증)
		String path=up.fileUp(multi.getFile("companycardfile"),"companycard");
		
		
		cMember.setCompanycard(path);	//시설 등록증 설정
		
		
		return mav;
	}

}
