package com.itcia.itgoo.service;

import java.io.Console;
import java.security.Principal;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import org.springframework.web.servlet.view.RedirectView;

import com.google.gson.Gson;
import com.itcia.itgoo.dao.IActivityDao;
import com.itcia.itgoo.dto.Activity;
import com.itcia.itgoo.dto.Company;
import com.itcia.itgoo.dto.Reservation;
import com.itcia.itgoo.share.UploadFile;
import com.itcia.itgoo.userclass.Paging;


@Service
public class ActivityManagement {
	@Autowired
	private IActivityDao aDao;
	@Autowired
	private UploadFile up;
	private ModelAndView mav ;

	public ModelAndView regiActivity(Principal p, MultipartHttpServletRequest multi,Activity ac) {
		mav= new ModelAndView();
		RedirectView redirectView = new RedirectView();

		ac.setCompanyid((String) p.getName());
		
		aDao.regiActivity(ac);

		List<String> paths = up.fileUp(multi.getFiles("files"), "activity");

		for (String picPath : paths) {
			System.out.println("ac="+ac);
			System.out.println("num="+ac.getActivitynum());
			aDao.insertPic(picPath, ac.getActivitynum());
		}redirectView.setExposeModelAttributes(false);
		redirectView.setUrl("activitydelete");
		mav.setView(redirectView);

		return mav;
	}
	public ModelAndView uploadactivitycompic(Principal p, MultipartHttpServletRequest multi, Company cp) {
		mav= new ModelAndView();
		RedirectView redirectView = new RedirectView();

		cp.setCompanyid((String) p.getName());
		
		List<String> paths = up.fileUp(multi.getFiles("files"), "company");
		for (String picPath : paths) {
			System.out.println("cp="+cp);
			System.out.println("num="+cp.getCompanyid());
			aDao.insertCompanyPic(picPath, cp.getCompanyid());
		}redirectView.setExposeModelAttributes(false);
		redirectView.setUrl("activitymyinfo");
		mav.setView(redirectView);
		return mav;

	}


	public ModelAndView activityMyInfo1(Principal p,Company cp) {
		//액티비티 패스 긁어오는곳
		mav= new ModelAndView();
		String view = null;
		cp.setCompanyid((String) p.getName());
		List<Company> aList = aDao.activityMyInfo1(cp);
		mav.addObject("aList",new Gson().toJson(aList));
		mav.setViewName("activitycompany/activityMyInfo");

		System.out.println("companyList[0]=" + aList);
		return mav;
	}


	public ModelAndView updatecompanyname(Principal p,Company cp) {
		mav = new ModelAndView();

		cp.setCompanyid((String) p.getName());
		aDao.updatecompanyname(cp);


		return mav;
	}


	public ModelAndView updatecompanyboss(Principal p,Company cp) {
		mav = new ModelAndView();
		String view=null;
		cp.setCompanyid((String) p.getName());
		aDao.updatecompanyboss(cp);

		return mav;
	}


	public ModelAndView updatecompanyphone(Principal p,Company cp) {
		mav = new ModelAndView();
		String view=null;
		cp.setCompanyid((String) p.getName());
		aDao.updatecompanyphone(cp);

		return mav;
	}


	public ModelAndView updatecompanyemail(Principal p,Company cp) {
		mav = new ModelAndView();
		String view=null;
		cp.setCompanyid((String) p.getName());
		aDao.updatecompanyemail(cp);

		return mav;
	}


	public ModelAndView updatecompanylocation(Principal p,Company cp) {
		mav= new ModelAndView();
		RedirectView redirectView = new RedirectView();
		String view = null;
		cp.setCompanyid((String) p.getName());

		aDao.updatecompanylocation(cp);
		redirectView.setExposeModelAttributes(false);
		redirectView.setUrl("activitymyinfo");
		mav.setView(redirectView);
		return mav;
	}

	public ModelAndView activityDeleteBtn(Activity ac,RedirectAttributes attr) {
		mav= new ModelAndView();
		System.out.println("activityname="+ac.getActivityname());
		boolean d = aDao.activityDeleteBtn(ac);
		if(d) {
			System.out.println("글 존재시 삭제 트랜잭션 성공");
			attr.addFlashAttribute("ac",ac);
		}else {
			System.out.println("삭제 트랜잭션 실패");
		}
		mav.setViewName("redirect:activitydelete");
		return mav;
	}

	public ModelAndView activityDelete1(Principal p, Company cp, Integer pageNum) {
		//모달안에서 데이터 긁어오는거
		mav= new ModelAndView();
		String view = null;
		int pNum = (pageNum == null) ? 1:pageNum;
		if(pNum<=0) {
			System.out.println("페이지 정보가 잘못되었습니다.");
		}
			System.out.println("pNum="+ pNum);
		cp.setCompanyid(p.getName());

		List<Activity> adList = aDao.activityDelete(cp);
		mav.addObject("adList",new Gson().toJson(adList));
		mav.addObject("paging", getPaging(pNum,cp));
		mav.setViewName("activitycompany/activityDelete");

		System.out.println("companyList[0]=" + adList);
		return mav;
}
	public ModelAndView activityPass(Principal p, Company cp, Integer pageNum) {
		mav= new ModelAndView();
		String view = null;
		int pNum = (pageNum == null) ? 1:pageNum;
		if(pNum<=0) {
			System.out.println("페이지 정보가 잘못되었습니다.");
		}
			System.out.println("pNum="+ pNum);
		cp.setCompanyid((String) p.getName());

		List<Company> apList = aDao.activityPass(cp);
		mav.addObject("apList",new Gson().toJson(apList));
		mav.addObject("paging", getPaging(pNum,cp));
		mav.setViewName("activitycompany/activityPass");

		System.out.println("companyList[0]=" + apList);
		return mav;
	}
	private Object getPaging(int pNum,Company cp) {
		int maxNum= aDao.getActivityCnt(cp);
		int listCount = 10;
		int pageCount = 2;
		String activity = "activitypass";
		Paging paging = new Paging(maxNum, pNum, listCount, pageCount, activity);
		return paging.makeHtmlPaging();

	}


	public ModelAndView deleteDetail(Integer activitynum) {
		mav = new ModelAndView();
		String view=null;
		aDao.activitypics(activitynum);
		Activity detail = aDao.deleteDetail(activitynum);
		detail.setActivitynum(activitynum);
		detail.setActivitypics(aDao.activitypics(activitynum));

		System.out.println("ac=--------------------------------------------------------");

		mav.addObject("detail",new Gson().toJson(detail));

		view = "activitycompany/activityDeleteDetail";
		mav.setViewName(view);
		return mav;
	}
	public ModelAndView activityList(Activity ac,int dogid) {
		mav = new ModelAndView();
		String view=null;
		List<Activity> atList = aDao.activitylist(ac);
		System.out.println("at리스트에 들어있는 값은 "+atList);
		mav.addObject("atList",new Gson().toJson(atList));
		mav.addObject("dogid",dogid);
		mav.setViewName("activityclient/activityList");
		return mav;
	}
	public ModelAndView activityListDetail(Integer activitynum,int dogid) {
		mav = new ModelAndView();
		String view=null;
		aDao.activitypics(activitynum);
		Activity listdetail = aDao.activityListDetail(activitynum);
		listdetail.setActivitynum(activitynum);
		listdetail.setActivitypics(aDao.activitypics(activitynum));
		System.out.println("ac=--------------------------------------------------------");
		System.out.println("제발 별이야 아이디좀 알려주라 좀 "+dogid);
		mav.addObject("listdetail",new Gson().toJson(listdetail));
		mav.addObject("dogid",dogid);
		view = "activityclient/activityListDetail";
		mav.setViewName(view);
		return mav;
	}
	public ModelAndView activityReservationBtn(Principal p,Reservation rv, RedirectAttributes attr, int dogid) {
		mav= new ModelAndView();
		RedirectView redirectView = new RedirectView();
		rv.setId((String) p.getName());
		rv.setDogid(dogid);
		boolean r = aDao.activityReservationBtn(rv);
		aDao.updateReservationPhase(rv);

		mav.setViewName("redirect:myadoptphase");
		return mav;
	}
	public ModelAndView passDetail(Integer activitynum) {
		mav = new ModelAndView();
		String view=null;
		List<Reservation> passdetail = aDao.passDetail(activitynum);
		

		System.out.println("ac=--------------------------------------------------------");

		mav.addObject("passdetail",new Gson().toJson(passdetail));

		view = "activitycompany/activityPassDetail";
		mav.setViewName(view);
		return mav;
	}
	public ModelAndView acceptBtn(Reservation rv) {
		System.out.println(rv);
		RedirectView redirectView = new RedirectView();
		String view = null;
		System.out.println("username="+rv.getUsername());
		aDao.acceptBtn(rv);
		redirectView.setExposeModelAttributes(false);
		redirectView.setUrl("activitypass");
		mav.setView(redirectView);
		return mav;
	}
	public ModelAndView rejectBtn(Reservation rv) {
		RedirectView redirectView = new RedirectView();
		String view = null;
		System.out.println("username="+rv.getUsername());
		aDao.rejectBtn(rv);
		redirectView.setExposeModelAttributes(false);
		redirectView.setUrl("activitypass");
		mav.setView(redirectView);
		return mav;
	}
}
