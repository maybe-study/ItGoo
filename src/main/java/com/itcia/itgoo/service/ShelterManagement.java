package com.itcia.itgoo.service;

import java.security.Principal;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.ModelAndView;

import com.itcia.itgoo.dao.IShelterDao;
import com.itcia.itgoo.dto.Commonmember;
import com.itcia.itgoo.dto.Dfile;
import com.itcia.itgoo.dto.Dog;
import com.itcia.itgoo.dto.Member;
import com.itcia.itgoo.share.UploadFile;

@Service
@Transactional
public class ShelterManagement {
	@Autowired
	private IShelterDao sDao;

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
		 * 경우:fileUp(multi.getFile("넘긴 이름"),"종류") 여러개 파일 업로드일
		 * 경우:fileUp(multi.getFiles("넘긴 이름"),"종류") return 값을 db에 저장
		 * parameter 구분 - 강아지 사진:dog, 시설사진:company, 액티비티 사진:activity
		 */
		
		mav = new ModelAndView();

		// 인코더 암호화 --디코더 복호화
		// 스프링시큐리티는 암호화는 가능하지만 복호화는 불가능하다.
		// 비번만 암호화해서 DB에 저장
		BCryptPasswordEncoder pwdEncoder = new BCryptPasswordEncoder();
		cMember.setPassword(pwdEncoder.encode(cMember.getPassword()));

		UploadFile up = new UploadFile();
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
		sDao.insertRole(cMember.getId(),"ROLE_UNCOMPANY");
		sDao.insertRole(cMember.getId(),"ROLE_USER");
		return mav;
	}
	 @Transactional
		public ModelAndView shelterregiste(MultipartHttpServletRequest multi, Dog dog,Principal p) {
			UploadFile up = new UploadFile();
			
			List<String> paths = up.fileUp(multi.getFiles("dogpicby"), "dogpics");
			dog.setShelterid(p.getName());
			sDao.insertDog(dog);
			Dfile df= new Dfile();
			for(String path: paths) {
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
	
	

	
	
	

}
