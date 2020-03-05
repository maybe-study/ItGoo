package com.itcia.itgoo;

import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.itcia.itgoo.dto.Member;

@RestController
public class RestCommonController {

	@PostMapping("/searchId")
	public ModelAndView SearchId(Member mb) {
		System.out.println("=====**********+++++++아이디님 제발나와주세요:" + mb.getId());
		return null;
	}

}
