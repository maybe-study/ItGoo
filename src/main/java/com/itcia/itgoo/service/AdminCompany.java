package com.itcia.itgoo.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.view.RedirectView;

import com.google.gson.Gson;
import com.google.gson.reflect.TypeToken;
import com.itcia.itgoo.dao.IAdminDao;
import com.itcia.itgoo.dto.Adopt;
import com.itcia.itgoo.dto.CareSheet;
import com.itcia.itgoo.dto.Company;
import com.itcia.itgoo.dto.Ex;
import com.itcia.itgoo.dto.Question;

@Service
@Transactional
public class AdminCompany {
	@Autowired
	private IAdminDao aDao;
	ModelAndView mav=new ModelAndView();
	public ModelAndView adminActivity() {
		
		List<Company> companyWaitList = aDao.adminWaitActivity();
		List<Company> companyEnrolledList = aDao.adminEnrolledActivity();
		
		mav.setViewName("admin/AdminActivityCompany");
		mav.addObject("companyWaitList",new Gson().toJson(companyWaitList));
		mav.addObject("companyEnrolledList",new Gson().toJson(companyEnrolledList));
		return mav;
	}
	public ModelAndView adminShelter() {
		List<Company> companyWaitList = aDao.adminWaitShelter();
		List<Company> companyEnrolledList = aDao.adminEnrolledShelter();
		
		mav.setViewName("admin/AdminShelter");
		mav.addObject("companyWaitList",new Gson().toJson(companyWaitList));
		mav.addObject("companyEnrolledList",new Gson().toJson(companyEnrolledList));
		return mav;
	}
	public ModelAndView adminActivityDetail(String companyid) {
		mav.addObject("company",new Gson().toJson(aDao.adminCompany(companyid)));
		mav.addObject("activities",new Gson().toJson(aDao.adminActivities(companyid)));
		mav.setViewName("admin/AdminActivityCompanyDetail");
		
		return mav;
	}

	public ModelAndView adminShelterDetail(String companyid) {
		mav.addObject("company",new Gson().toJson(aDao.adminCompany(companyid)));
		mav.addObject("dogs",new Gson().toJson(aDao.adminDogs(companyid)));
		mav.setViewName("admin/AdminShelterDetail");
		
		return mav;
	}
	public ModelAndView adminOkNo(String companyid) {
		System.out.println("companyid="+companyid);
		mav.addObject("company",new Gson().toJson(aDao.adminCompany(companyid)));
		mav.addObject("pList",new Gson().toJson(aDao.adminCompanyPics(companyid)));
		mav.setViewName("admin/AdminOkNo");
		return mav;
	}
	
	
	public ModelAndView adminUpdateComPany(String select, String companyid, int companykind) {
		RedirectView redirectView = new RedirectView(); // redirect url 설정
		redirectView.setExposeModelAttributes(false);
		//수락
		if(select.equals("ok")) {
			aDao.adminOk(companyid);	//등록
			aDao.deleteCompanyRole(companyid);
		}else {//거절
			aDao.adminNo(companyid);	//삭제
		}
		if(companykind==1) {	//액티비티업체라면
			aDao.activityRole(companyid);
			redirectView.setUrl("adminactivity");
			mav.setView(redirectView);
		}else if(companykind==2) {	//보호소라면
			aDao.shelterRole(companyid);
			redirectView.setUrl("adminshelter");
			mav.setView(redirectView);
		}
		
		return mav;
	}
	public ModelAndView addTest(Question question, String exJson) {
		//보기 json을 리스트로 저장
		List<Ex> exList= new Gson().fromJson(exJson, new TypeToken<List<Ex>>() {}.getType());
		//문제 보이기
		question.setToggle(1);
		System.out.println("correct:"+question.getCorrect());
		aDao.addTest(question);
		
		//보기 테이블
		for(int i=0;i<exList.size();i++) {
			aDao.addEx(exList.get(i));
		}
		RedirectView redirectView = new RedirectView(); // redirect url 설정
		redirectView.setExposeModelAttributes(false);
		redirectView.setUrl("admintest");
		mav.setView(redirectView);
		return mav;
	}
	public ModelAndView adminTest() {
		mav.addObject("testList",new Gson().toJson(aDao.getTest()));
		//mav.addObject("correctList", new Gson().toJson(aDao.getCorrect()));
		mav.setViewName("/admin/AdminTest");
		return mav;
	}
	public ModelAndView modifyQuestionFrm(int questionnum) {
		mav.addObject("question",new Gson().toJson(aDao.getQuestion(questionnum)));
		mav.addObject("exList",new Gson().toJson(aDao.getExList(questionnum)));
		mav.setViewName("/admin/AdminTestAdd");
		
		return mav;
	}
	public ModelAndView modifyQuestion(Question question, String exJson) {
		//삭제하고
		System.out.println("문제 -----------:"+question);
		aDao.deleteQuestion(question.getQuestionnum());
		//넣기
		return addTest( question,  exJson);
	}
	public ModelAndView questionDelete(int questionnum) {
		aDao.deleteQuestion(questionnum);
		return adminTest();
	}
	public ModelAndView adminAdoptList() {
		List<Adopt> adoptList=aDao.adminAdoptList();
		mav.addObject("adoptList",new Gson().toJson(adoptList));
		mav.setViewName("/admin/AdminAdopt");
		return mav;
	}
	public ModelAndView adminCareSheet() {
		List<CareSheet> cList=aDao.careSheetList();
		mav.addObject("cList",new Gson().toJson(cList));
		mav.setViewName("/admin/AdminCareSheet");
		
		return mav;
		
	}
	public ModelAndView adminUpdateCareSheet(String careJson) {
		
		System.out.println("careJson"+careJson);
		List<CareSheet> cList= new Gson().fromJson(careJson, new TypeToken<List<CareSheet>>() {}.getType());
		
		for(CareSheet c : cList) { //지우고 넣기
			if(c.getQuestionnum()!=0) aDao.deleteCareSheet(c);
			else aDao.adminInsertCareSheet(c);
		}
		RedirectView redirectView = new RedirectView(); // redirect url 설정
		redirectView.setExposeModelAttributes(false);
		redirectView.setUrl("admincaresheet");
		mav.setView(redirectView);
		return mav;
	}
	public ModelAndView deleteCareSheet(int questionnum) {
		//토글 0으로 바꾸기
		CareSheet c= new CareSheet();
		c.setQuestionnum(questionnum);
		aDao.deleteCareSheet(c);
		
		RedirectView redirectView = new RedirectView(); // redirect url 설정
		redirectView.setExposeModelAttributes(false);
		redirectView.setUrl("admincaresheet");
		mav.setView(redirectView);
		return mav;
	}
	public ModelAndView adminCareSheetUpdateFrm() {
		List<CareSheet> cList=aDao.careSheetList();
		mav.addObject("cList",new Gson().toJson(cList));
		mav.setViewName("admin/AdminCareSheetUpdate");
		return mav;
	}
	

}
