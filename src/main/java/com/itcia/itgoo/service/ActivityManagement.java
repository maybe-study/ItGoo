package com.itcia.itgoo.service;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
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
import com.itcia.itgoo.share.UploadFile;


@Service
public class ActivityManagement {
	@Autowired
	private IActivityDao aDao;
	
	private ModelAndView mav ;
	
	public ModelAndView regiActivity(MultipartHttpServletRequest multi,Activity ac,HttpServletRequest req) {
		mav= new ModelAndView();
		RedirectView redirectView = new RedirectView();
		HttpSession session = req.getSession();
		ac.setCompanyid((String) session.getAttribute("companyid"));
		UploadFile up = new UploadFile();
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
	public ModelAndView uploadactivitycompic(MultipartHttpServletRequest multi, Company cp, HttpServletRequest req) {
		mav= new ModelAndView();
		RedirectView redirectView = new RedirectView();
		HttpSession session = req.getSession();
		cp.setCompanyid((String) session.getAttribute("companyid"));
		UploadFile up = new UploadFile();
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
	
	
	public ModelAndView activityMyInfo1(Company cp,HttpServletRequest req) {
		HttpSession session = req.getSession();
		mav= new ModelAndView();
		String view = null;
		cp.setCompanyid((String) session.getAttribute("companyid"));
		List<Company> aList = aDao.activityMyInfo1(cp);
		mav.addObject("aList",new Gson().toJson(aList));
		mav.setViewName("activitycompany/activityMyInfo");
		
		System.out.println("companyList[0]=" + aList);
		return mav; 
	}


	public ModelAndView updatecompanyname(Company cp, HttpServletRequest req) {
		HttpSession session = req.getSession();
		mav = new ModelAndView();
		
		cp.setCompanyid((String) session.getAttribute("companyid"));
		aDao.updatecompanyname(cp);
		
		
		return mav;
	}


	public ModelAndView updatecompanyboss(Company cp, HttpServletRequest req) {
		HttpSession session = req.getSession();
		mav = new ModelAndView();
		String view=null;
		cp.setCompanyid((String) session.getAttribute("companyid"));
		aDao.updatecompanyboss(cp);
		
		return mav;
	}


	public ModelAndView updatecompanyphone(Company cp, HttpServletRequest req) {
		HttpSession session = req.getSession();
		mav = new ModelAndView();
		String view=null;
		cp.setCompanyid((String) session.getAttribute("companyid"));
		aDao.updatecompanyphone(cp);
		
		return mav;
	}


	public ModelAndView updatecompanyemail(Company cp, HttpServletRequest req) {
		HttpSession session = req.getSession();
		mav = new ModelAndView();
		String view=null;
		cp.setCompanyid((String) session.getAttribute("companyid"));
		aDao.updatecompanyemail(cp);
		
		return mav;
	}


	public ModelAndView updatecompanylocation(Company cp, HttpServletRequest req) {
		HttpSession session = req.getSession();
		mav= new ModelAndView();
		RedirectView redirectView = new RedirectView();
		String view = null;
		cp.setCompanyid((String) session.getAttribute("companyid"));
		
		aDao.updatecompanylocation(cp);
		redirectView.setExposeModelAttributes(false);
		redirectView.setUrl("activitymyinfo");
		mav.setView(redirectView);
		return mav;
	}


	public ModelAndView activityDelete1(Company cp, HttpServletRequest req) {
		HttpSession session = req.getSession();
		mav= new ModelAndView();
		String view = null;
		cp.setCompanyid((String) session.getAttribute("companyid"));
		List<Company> adList = aDao.activityDelete(cp);
		mav.addObject("adList",new Gson().toJson(adList));
		mav.setViewName("activitycompany/activityDelete");
		
		System.out.println("companyList[0]=" + adList);
		return mav; 
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


	

}
