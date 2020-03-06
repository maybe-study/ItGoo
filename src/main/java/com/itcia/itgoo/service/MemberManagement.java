package com.itcia.itgoo.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;
import org.springframework.web.servlet.ModelAndView;

import com.google.gson.Gson;
import com.itcia.itgoo.dao.IMemberDao;
import com.itcia.itgoo.dto.Member;

@Service
public class MemberManagement {
	@Autowired
	private IMemberDao mDao;
	private ModelAndView mav;
   public ModelAndView memberJoin(Member mb) {
      mav = new ModelAndView();
      String view = null;
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
      mav.setViewName(view);
//=======
//	public ModelAndView memberJoin(Member mb) {
//		mav = new ModelAndView();
//		String view = null;
//		// Encoder(암호화)<--->Decoder(복호화)
//		// 스프링은 암호화는 가능하지만 복호화가 불가능하다.
//		BCryptPasswordEncoder pwdEncoder = new BCryptPasswordEncoder();
//		// 비밀번호만 암호화해서 DB에 저장
//		mb.setPassword(pwdEncoder.encode(mb.getPassword()));
//		
//		if (mDao.memberJoin(mb)) {
//			view = "index";// 회원가입 성공
//			mav.addObject("check", 1);
//		} else {
//			view = "joinform";
//			mav.addObject("check", 0);
//		}
//		mav.setViewName(view);
//>>>>>>> 68847156dde45b5e773238188b6f2edbf86f65a5
		return mav;
	}

	public Member searchid(Member mb) {
		Member m = mDao.searchid(mb);
		
		return m;
	}

}