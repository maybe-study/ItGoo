package com.itcia.itgoo.service;

import java.security.Principal;
import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.javassist.expr.NewArray;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import org.springframework.web.servlet.view.RedirectView;

import com.google.gson.Gson;
import com.google.gson.reflect.TypeToken;
import com.itcia.itgoo.dao.IShelterDao;
import com.itcia.itgoo.dto.Activity;
import com.itcia.itgoo.dto.CareSheet;
import com.itcia.itgoo.dto.Cfile;
import com.itcia.itgoo.dto.Commonmember;
import com.itcia.itgoo.dto.Company;
import com.itcia.itgoo.dto.Dfile;
import com.itcia.itgoo.dto.Dog;
import com.itcia.itgoo.dto.Member;
import com.itcia.itgoo.dto.VirtualAdopt;
import com.itcia.itgoo.dto.VirtualAdoptRecent;
import com.itcia.itgoo.share.UploadFile;
import com.itcia.itgoo.userclass.Paging;

@Service
@Transactional
public class ShelterManagement {
	@Autowired
	private IShelterDao sDao;
	@Autowired
	private UploadFile up;
	private ModelAndView mav = new ModelAndView();

	/*
	 * public ModelAndView shelterjoin(Commonmember cmb) { mav = new ModelAndView();
	 * String view = null;
	 *
	 * // 인코더 암호화 --디코더 복호화 // 스프링시큐리티는 암호화는 가능하지만 복호화는 불가능하다. // 비번만 암호화해서 DB에 저장
	 * BCryptPasswordEncoder pwdEncoder = new BCryptPasswordEncoder();
	 * cmb.setPassword(pwdEncoder.encode(cmb.getPassword()));
	 *
	 * sDao.insertCompany(cmb); sDao.insertClient(cmb); // 파일 첨부 메소드 만들기
	 *
	 * mav.setViewName(view); return mav; }
	 */
	
	@Transactional
	public ModelAndView companyJoin(MultipartHttpServletRequest multi, Commonmember cMember) {
		cMember.setEnabled(1);
		cMember.setId(cMember.getCompanyid());
		/*
		 * 파일 업로드 사용법 1. UploadFile 클래스 선언 2. 단일 파일 업로드일
		 * 경우:fileUp(multi.getFile("넘긴 이름"),"dto") 여러개 파일 업로드일
		 * 경우:fileUp(multi.getFiles("넘긴 이름"),"dto") return 값을 db에 저장 parameter 구분 - 강아지
		 * 사진:dog, 시설사진:company, 액티비티 사진:activity
		 */

		mav = new ModelAndView();

		// 인코더 암호화 --디코더 복호화
		// 스프링시큐리티는 암호화는 가능하지만 복호화는 불가능하다.
		// 비번만 암호화해서 DB에 저장
		BCryptPasswordEncoder pwdEncoder = new BCryptPasswordEncoder();
		cMember.setPassword(pwdEncoder.encode(cMember.getPassword()));

	
		// 파일 업로드 (시설 등록증)
		String path = up.fileUp(multi.getFile("companycardfile"), "companycard");
		cMember.setCompanycard(path); // 시설 등록증 설정
		// cMe

		sDao.insertCompany(cMember);

		// 시설 사진 여러개 디비에 넣기
		// 파일 업로드(시설 사진 리스트)

		// 이거는 for문 돌려서 companypic 테이블에 넣어야함
		List<String> paths = up.fileUp(multi.getFiles("files"), "company");
		for (String picPath : paths) {
			sDao.insertPic(picPath, cMember.getCompanyid());
		}
		sDao.insertClient(cMember);
		sDao.insertRole(cMember.getId(), "ROLE_UNCOMPANY");
		sDao.insertRole(cMember.getId(), "ROLE_USER");
		mav.setViewName("login");
		return mav;
	}
	
	@Transactional
	public ModelAndView shelterregiste(MultipartHttpServletRequest multi, Dog dog, Principal p) {

		List<String> paths = up.fileUp(multi.getFiles("dogpicby"), "dogpics");
		dog.setShelterid(p.getName());
		dog.setStatus(0);
		sDao.insertDog(dog);
		Dfile df = new Dfile();
		for (String path : paths) {
			df.setDogpic(path);
			sDao.inserDogPics(df);
		}
		return null;
	}

//아이디중복검사

	public Member xduplicateid(Member mb) {
		Member m = sDao.xduplicateid(mb);
		return m;
	}

	public ModelAndView shelterdelete1(Principal p, Dog dog, Integer pageNum) {

		mav = new ModelAndView();
		String view = null;
		int pNum = (pageNum == null) ? 1 : pageNum;
		if (pNum <= 0) {
			System.out.println("페이지 정보가 잘못되었습니다.");
		}
		System.out.println("pNum=" + pNum);
		dog.setShelterid(p.getName());

		List<Dog> dogList = sDao.shelterdelete(dog);
		mav.addObject("dogList", new Gson().toJson(dogList));
		mav.setViewName("shelter/shelterDelete");
		/* mav.addObject("paging", getPaging(pNum,dog)); */
		/* mav.setViewName("activitycompany/activityDelete"); */
		return mav;
	}

	// 마이페이지
	public ModelAndView shelterMyInfo(Principal p, Company c) {
		/*
		 * Company c = new Company(); c.setCompanyid(p.getName());
		 */
		c.setCompanyid(p.getName());
		Company com = sDao.shelterMyInfo(c);
		mav.addObject("shelter", new Gson().toJson(com));
		mav.setViewName("shelter/shelterMyInfo");
		return mav;
	}

	public ModelAndView updateshelterlocation(Principal p, Company cp) {
		mav = new ModelAndView();
		RedirectView redirectView = new RedirectView();
		String view = null;
		cp.setCompanyid((String) p.getName());

		sDao.updateshelterlocation(cp);
		redirectView.setExposeModelAttributes(false);
		redirectView.setUrl("sheltermyinfo");
		mav.setView(redirectView);
		return mav;
	}

	public ModelAndView shelterDeleteDetail(Integer dogid) {
		mav = new ModelAndView();
		String view = null;
		sDao.shelterdogpics(dogid);
		Dog detail = sDao.shelterdeletedetail(dogid);
		detail.setDogid(dogid);
		detail.setDogpics(sDao.shelterdogpics(dogid));

		System.out.println("ac=--------------------------------------------------------");

		mav.addObject("detail", new Gson().toJson(detail));

		view = "shelter/shelterDeleteDetail";
		mav.setViewName(view);
		return mav;
	}

	public ModelAndView dogdeletebtn(Dog dog, RedirectAttributes attr) {
		mav = new ModelAndView();
		System.out.println("activityname=" + dog.getDogid());
		boolean d = sDao.dogDeleteBtn(dog);
		if (d) {
			System.out.println("글 존재시 삭제 트랜잭션 성공");
			attr.addFlashAttribute("dog", dog);
		} else {
			System.out.println("삭제 트랜잭션 실패");
		}
		mav.setViewName("redirect:shelterdelete");
		return mav;
	}

	public ModelAndView updatecompanylocpic(Principal p, MultipartHttpServletRequest multi, Company cp) {
		mav= new ModelAndView();

		RedirectView redirectView = new RedirectView();

		cp.setCompanyid(p.getName());

		List<String> paths = up.fileUp(multi.getFiles("files"), "company");
		boolean lp = sDao.deleteCompanyLocPic(cp);
		for (String picPath : paths) {
			System.out.println("cp="+cp);
			System.out.println("num="+cp.getCompanyid());
			sDao.insertCompanyLocPic(picPath, cp.getCompanyid());
		}redirectView.setExposeModelAttributes(false);
		redirectView.setUrl("sheltermyinfo");
		mav.setView(redirectView);
		return mav;

	}
	public ModelAndView updatecompanycardpic(Principal p, MultipartHttpServletRequest multi, Company cp) {
		mav= new ModelAndView();

		cp.setCompanyid((String) p.getName());
		List<String> paths = up.fileUp(multi.getFiles("files"), "company");
		for (String picPath : paths) {
			System.out.println("cp="+cp);
			System.out.println("num="+cp.getCompanyid());
			sDao.updateCompanyCardPic(picPath, cp.getCompanyid());
		}
		RedirectView redirectView = new RedirectView();
		redirectView.setExposeModelAttributes(false);
		redirectView.setUrl("sheltermyinfo");
		mav.setView(redirectView);
		return mav;
	}

	public ModelAndView shelterinfochange(Principal p) {
		Company c = new Company();
		return mav;
	}

	public ModelAndView updatesheltername(Principal p, Company cp) {
		cp.setCompanyid(p.getName());
		sDao.updatecompanyname(cp);
		return mav;
	}

	public ModelAndView updateshelterboss(Principal p, Company cp) {
		cp.setCompanyid(p.getName());
		sDao.updatecompanyboss(cp);
		return mav;
	}

	public ModelAndView updatecompanyphone(Principal p, Company cp) {
		cp.setCompanyid(p.getName());
		sDao.updatecompanyphone(cp);
		return mav;
	}



	public ModelAndView updatecompanyemail(Principal p, Company cp) {
		cp.setCompanyid(p.getName());
		sDao.updatecompanyemail(cp);
		return mav;
	}

	public ModelAndView virtualAdoptList(String companyid, int input) {
		mav.setViewName("shelter/virtualAdoptList");
		List<VirtualAdopt> vList = sDao.virtualAdoptList(companyid);
		mav.addObject("virtualList",new Gson().toJson(vList));
		mav.addObject("input",input);
		System.out.println("==========================리스트============================");
		System.out.println(new Gson().toJson(sDao.virtualAdoptList(companyid)));
		return mav;
	}

	public ModelAndView recentFrm(VirtualAdopt va) {
		System.out.println(va);
		mav.addObject("virtualAdopt", new Gson().toJson(va));
		mav.setViewName("shelter/RecentFrm");
		return mav;
	}
	public ModelAndView insertRecent(VirtualAdoptRecent r,String srcJson) {
		List<String> srcList=new Gson().fromJson(srcJson,new TypeToken<ArrayList<String>>() {}.getType());
		System.out.println(r);
		//근황 넣기
		sDao.insertRecent(r);
		for(String s:srcList) {
			//근황 사진 넣기
			System.out.println(s);
			sDao.insertRecentPic(r.getRecentid(),s);
		}
		VirtualAdopt va=new VirtualAdopt();
		va.setDogid(r.getDogid());
		va.setId(r.getId());
		mav.addObject("recentList",new Gson().toJson(sDao.recentList(va)));
		//해당 가상입양의 근황 리스트
		mav.setViewName("shelter/RecentList");
		
		return mav;
	}


	public ModelAndView recentDelete(int recentid) {
		sDao.recentDelete(recentid);
		RedirectView redirectView = new RedirectView();
		redirectView.setExposeModelAttributes(false);
		redirectView.setUrl("virtualadoptlist?input=0");
		mav.setView(redirectView);
		return mav;
	}

	public ModelAndView recentList(VirtualAdopt va) {
		mav.addObject("recentList",new Gson().toJson(sDao.recentList(va)));
		//해당 가상입양의 근황리스트
		mav.setViewName("shelter/RecentList");
		return mav;
	}


	public ModelAndView recentDetail(int recentid) {
		mav.addObject("recent",new Gson().toJson(sDao.recentDetail(recentid)));
		//해당 가상입양의 근황리스트
		mav.setViewName("shelter/RecentDetail");
		
		return mav;
	}

	public ModelAndView aleadyadopt(Principal p) {
		List<Dog> dList=sDao.aleadyAdopt(p.getName());
		mav.addObject("aleadyList", new Gson().toJson(dList));
		mav.setViewName("shelter/AleadyAdopt");
		return mav;
	}
	
}

