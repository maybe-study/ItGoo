package com.itcia.itgoo.service;

import java.security.Principal;
import java.util.Collection;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.User;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;
import org.springframework.web.servlet.ModelAndView;

import com.google.gson.Gson;
import com.itcia.itgoo.dao.IClientDao;
import com.itcia.itgoo.dao.IMemberDao;
import com.itcia.itgoo.dto.Adopt;
import com.itcia.itgoo.dto.Dog;
import com.itcia.itgoo.dto.Member;
import com.itcia.itgoo.dto.Role;

@Service
public class MemberManagement {
	@Autowired
	private IMemberDao mDao;
	@Autowired
	private IClientDao cDao;
	private ModelAndView mav=new ModelAndView();

	public ModelAndView memberJoin(Member mb, Role rl) {
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
		UserDetails userDetails = (UserDetails) SecurityContextHolder.getContext().getAuthentication().getPrincipal();
		System.out.println("==============================principal=======================================");
		System.out.println(userDetails.getAuthorities().toString());
		
		String url="/";
		switch(userDetails.getAuthorities().toString()) {
		case "[ROLE_ACTIVITY, ROLE_ADMIN, ROLE_SHELTER, ROLE_USER]":	//관리자
			url="redirect:/adminactivity";
			break;
		case "[ROLE_USER]":
			url="redirect:/";
			break;
		case "[ROLE_SHELTER, ROLE_USER]":
			url="redirect:/sheltermyinfo";
			break;
		case "[ROLE_ACTIVITY, ROLE_USER]":
			url="redirect:/activitymyinfo";
			break;
		case "":
			break;
		};
		
		
		return url;
	}

	public ModelAndView mypage(Principal p,Member mb) {
		mb.setId(p.getName());
		List<Member> mList = mDao.myPage(mb);
		mav.addObject("mList",new Gson().toJson(mList));
		mav.setViewName("clientMyPage");
		return mav;
	}

	public ModelAndView myadoptphase(Principal p, Adopt ad) {
		ad.setId(p.getName());
		List<Adopt> d = cDao.myPhasedogList(ad);
		mav.addObject("aList",new Gson().toJson(d));
		mav.setViewName("./client/myAdoptPhase");
		return mav;
	}


}