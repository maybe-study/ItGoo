package com.itcia.itgoo.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;
import org.springframework.web.servlet.ModelAndView;

import com.itcia.itgoo.dao.IAdminDao;
import com.itcia.itgoo.dto.Member;

@Service
public class ShelterManagement {
	@Autowired
	private IAdminDao mDao;

	private ModelAndView mav = new ModelAndView();

	public ModelAndView memberjoin(Member mb) {
		mav = new ModelAndView();
		String view = null;

		// 인코더 암호화 --디코더 복호화
		// 스프링시큐리티는 암호화는 가능하지만 복호화는 불가능하다.
		BCryptPasswordEncoder pwdEncoder = new BCryptPasswordEncoder();
		// 비번만 암호화해서 DB에 저장
		mb.setPassword(pwdEncoder.encode(mb.getPassword()));

		if (mDao.memberJoin(mb)) {
			System.out.println("true");
			view = "home"; // 회원가입 성공시
			mav.addObject("check", 1); // 회원가입 성공
		} else {
			view = "joinFrm"; // 회원가입실패시
		}
		mav.setViewName(view);
		return mav;
	}

}
