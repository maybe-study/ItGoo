package com.itcia.itgoo.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;
import org.springframework.web.servlet.ModelAndView;

import com.itcia.itgoo.dao.IAdminDao;
import com.itcia.itgoo.dao.IShelterDao;
import com.itcia.itgoo.dto.Member;
import com.itcia.itgoo.dto.commonmember;

@Service
public class ShelterManagement {
	@Autowired
	private IShelterDao sDao;

	private ModelAndView mav = new ModelAndView();

	public ModelAndView shelterjoin(commonmember cmb) {
		mav = new ModelAndView();
		String view = null;

		// 인코더 암호화 --디코더 복호화
		// 스프링시큐리티는 암호화는 가능하지만 복호화는 불가능하다.
		// 비번만 암호화해서 DB에 저장
		BCryptPasswordEncoder pwdEncoder = new BCryptPasswordEncoder();
		cmb.setPassword(pwdEncoder.encode(cmb.getPassword()));

		sDao.insertShelter(cmb);
		sDao.insertClient(cmb);
		//파일 첨부 메소드 만들기
		
		
		
		mav.setViewName(view);
		return mav;
	}


}
