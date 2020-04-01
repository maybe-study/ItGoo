package com.itcia.itgoo;

import java.security.Principal;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.annotation.Secured;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.ModelAndView;

import com.google.gson.Gson;
import com.itcia.itgoo.dto.Dog;
import com.itcia.itgoo.dto.Member;
import com.itcia.itgoo.service.AuctionManagement;
import com.itcia.itgoo.service.ClientManagement;

@RestController
public class RestClientController {
	
	@Autowired
	private ClientManagement cm;
	@Autowired
	private AuctionManagement am;
	
	ModelAndView mav = new ModelAndView();
	@Secured("ROLE_USER")
	@PostMapping(value = "/adoptlistdetail", produces="plain/text;charset=utf-8")
	public String adoptlistdetail(String dogid) {
		System.out.println("==============================controller=============================\ndogid:"+dogid);
		String dogpics = cm.adoptlistdetail(dogid);
		return dogpics;
	}
	@Secured("ROLE_USER")
	@PostMapping(value = "/myadoptlistdetail", produces="plain/text;charset=utf-8")
	public String myadoptlistdetail(String dogid,Principal p) {
		System.out.println("==============================controller=============================\ndogid:"+dogid);
		String dogpics = cm.myAdoptlistdetail(dogid,p);
		return dogpics;
	}
	
	@Secured("ROLE_USER")
	@GetMapping(value = "/updateusername", produces="plain/text;charset=utf-8")
	public String updateusername(Principal p,Member mb) {
		System.out.println("==============================controller=============================\n:"+p.getName());
		mav = cm.updateusername(p,mb);
		
		return "{\"a\":\"성공했습니다.\"}";
	}
	@Secured("ROLE_USER")
	@GetMapping(value = "/updateuseremail", produces="plain/text;charset=utf-8")
	public String updateuseremail(Principal p,Member mb) {
		System.out.println("==============================controller=============================\n:"+p.getName());
		mav = cm.updateuseremail(p,mb);
		
		return "{\"a\":\"성공했습니다.\"}";
	}
	@Secured("ROLE_USER")
	@GetMapping(value = "/updateuserphone", produces="plain/text;charset=utf-8")
	public String updateuserphone(Principal p,Member mb) {
		System.out.println("==============================controller=============================\n:"+p.getName());
		mav = cm.updateuserphone(p,mb);
		
		return "{\"a\":\"성공했습니다.\"}";
	}
	@Secured("ROLE_USER")
	@GetMapping(value = "/updateuserbirth", produces="plain/text;charset=utf-8")
	public String updateuserbirth(Principal p,Member mb) {
		System.out.println("==============================controller=============================\n:"+p.getName());
		mav = cm.updateuserbirth(p,mb);
		
		return "{\"a\":\"성공했습니다.\"}";
	}
	@Secured("ROLE_USER")
	@GetMapping(value = "/updateuseraddress", produces="plain/text;charset=utf-8")
	public String updateuseraddress(Principal p,Member mb) {
		System.out.println("==============================controller=============================\n:"+p.getName());
		mav = cm.updateuseraddress(p,mb);
		
		return "{\"a\":\"성공했습니다.\"}";
	}
	//ck에디터 이미지 업로드
	@PostMapping("/ck/upload")
	public String ckUpload(@RequestParam(value="upload", required = false) MultipartFile file) {
		System.out.println("===================ckupload====================");
		System.out.println(file.getOriginalFilename());
		return am.ckUpload(file);
	}
}
