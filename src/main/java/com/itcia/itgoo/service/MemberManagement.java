package com.itcia.itgoo.service;

import java.util.Collection;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;
import org.springframework.web.servlet.ModelAndView;

import com.google.gson.Gson;
import com.itcia.itgoo.dao.IMemberDao;
import com.itcia.itgoo.dto.Member;
import com.itcia.itgoo.dto.Role;

@Service
public class MemberManagement {
	@Autowired
	private IMemberDao mDao;
	private ModelAndView mav;

	public ModelAndView memberJoin(Member mb,Role rl) {
		mav = new ModelAndView();
		String view = null;
		mb.setEnabled(1);
		rl.setId(mb.getId());
		rl.setRole("ROLE_USER");
		// Encoder(암호화)<--->Decoder(복호화)
		// 스프링은 암호화는 가능하지만 복호화가 불가능하다.
		BCryptPasswordEncoder pwdEncoder = new BCryptPasswordEncoder();
		// 비밀번호만 암호화해서 DB에 저장
		mb.setPassword(pwdEncoder.encode(mb.getPassword()));
		
		if (mDao.memberJoin(mb)) {
			view = "index";// 회원가입 성공
			mav.addObject("check", 1);
			
		} else {
			view = "joinfrm";
			mav.addObject("check", 0);
		}
		mDao.memberRoleJoin(rl);
		mav.setViewName(view);

		return mav;
	}

	public Member searchid(Member mb) {
		Member m = mDao.searchid(mb);

		return m;
	}

	public Member searchidphone(Member mb) {
		Member m = mDao.searchidphone(mb);
		return m;
	}

	public Member duplicateid(Member mb) {
		Member m = mDao.duplicateid(mb);
		return m;
	}

	public String loginTo() {
		Object principal = SecurityContextHolder.getContext().getAuthentication().getPrincipal(); 
		UserDetails userDetails = (UserDetails)principal;
		System.out.println("==============================principal=======================================");
		String url="";
		switch(userDetails.getAuthorities().toString()) {
		case "[ROLE_ACTIVITY , ROLE_ADMIN, ROLE_SHELTER, ROLE_USER]":	//관리자
			url="redirect:/adminactivity";
			break;
		case "[ROLE_USER]":
			url="redirect:/";
			break;
		case "[ROLE_SHELTER, ROLE_USER]":
			url="redirect:/sheltermyinfo";
			break;
		case "[ROLE_ACTIVITY, ROLE_USER]":
			url="redirect:/adminactivity.do";
			break;
		};
		
		
		return url;
	}

}