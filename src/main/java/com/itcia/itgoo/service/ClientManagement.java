package com.itcia.itgoo.service;

import java.security.Principal;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.view.RedirectView;

import com.google.gson.Gson;
import com.itcia.itgoo.dao.IClientDao;
import com.itcia.itgoo.dao.IMemberDao;
import com.itcia.itgoo.dto.Adopt;
import com.itcia.itgoo.dto.Company;
import com.itcia.itgoo.dto.Dog;
import com.itcia.itgoo.dto.Member;
import com.itcia.itgoo.dto.Reservation;
import com.itcia.itgoo.dto.SmallMeeting;
import com.itcia.itgoo.share.UploadFile;

@Service
public class ClientManagement {
	@Autowired
	private IClientDao cDao;
	@Autowired
	private IMemberDao mDao;

	private ModelAndView mav = new ModelAndView();

	public ModelAndView adoplist() {
		List<Dog> d = cDao.adoplist();

		System.out.println(d);
		mav.addObject("dogList", new Gson().toJson(d));
		mav.setViewName("adoptList");

		return mav;
	}

	public String adoptlistdetail(String dogid) {
		System.out.println("======================================\ndogid:" + dogid);
		Adopt dog = cDao.dogDetail(dogid);
		dog.setDogpics(cDao.adoptlistdetail(dogid));
		return new Gson().toJson(dog);
	}

	public ModelAndView applyadopt(MultipartHttpServletRequest multi, Adopt ad, Principal p) {
		ad.setPhase(1);
		ad.setId(p.getName());
		System.out.println("111111111111111111"+ad.getId());
		ad.setScore(0);
		UploadFile up = new UploadFile();
		String path = up.fileUp(multi.getFile("identifile"), "idfile");
		ad.setIdfile(path);
		cDao.insertapplyadopt(ad);
		mav.setViewName("clientMyPage");

		List<Member> mList = mDao.showmyinfo(ad);
		mav.addObject("mList",new Gson().toJson(mList));
		System.out.println("리스트++++++++++++++++++++"+p.getName());
		return mav;
	}


	public ModelAndView updateusername(Principal p,Member mb) {
		mb.setId(p.getName());
		mDao.updateusername(mb);
		return mav;
	}

	public ModelAndView updateuseremail(Principal p, Member mb) {
		mb.setId(p.getName());
		mDao.updateuseremail(mb);
		return null;
	}

	public ModelAndView updateuserphone(Principal p, Member mb) {
		mb.setId(p.getName());
		mDao.updatephone(mb);
		return null;
	}

	public ModelAndView updateuserbirth(Principal p, Member mb) {
		mb.setId(p.getName());
		mDao.updatebirth(mb);
		return null;
	}


	public ModelAndView updateuseraddress(Principal p, Member mb) {
		mb.setId(p.getName());
		mDao.updateadderess(mb);
		return null;
	}

	public ModelAndView showmyactivity(Principal p, Reservation rs) {
		System.out.println("액티비티 마이페이지가는중 ");
		System.out.println("도그번호"+rs);
		rs.setId(p.getName());
		List<Reservation> rList = cDao.showmyactivity(rs);
		System.out.println("알리스트 값은 "+rList);
		mav.addObject("rsList",new Gson().toJson(rList));
		mav.setViewName("client/MyActivityPage");
		return mav;
	}

	public ModelAndView finalsook(Principal p, Dog dog,int dogid) {
		dog.setId(p.getName());
		dog.setDogid(dogid);
		Dog choice=cDao.finalsook(dog);
		System.out.println("숙려기간 데이터 쏴주자");
		System.out.println("나의리스트는"+choice);
		mav.addObject("fifa",new Gson().toJson(choice));
		mav.setViewName("client/sook");
		return mav;
	}


	public ModelAndView regismallmeeting(Principal p, SmallMeeting sm) {
		mav= new ModelAndView();
		RedirectView redirectView = new RedirectView();
		String view = null;
		sm.setId((String) p.getName());
		cDao.regismallmeeting(sm);
		redirectView.setExposeModelAttributes(false);
		redirectView.setUrl("activitymyinfo");
		mav.setView(redirectView);
		return mav;

	public ModelAndView updatedog(int dogid,String choice, Principal p, Reservation rs) {
		System.out.println("마지막 선택 업데이트 중");
		rs.setId(p.getName());
		rs.setDogid(dogid);

		if(choice.equals("go")){
			System.out.println("사랑으로 키우기");
			cDao.updateDog(rs);
			mav.setViewName("./client/myAdoptPhase");
		}
		if(choice.equals("stop")){
			System.out.println("강아지 입양해 좀!!!!!");
			cDao.deleteadopt(rs);
			mav.setViewName("adoptList");
		}

		return mav;

	}
}
