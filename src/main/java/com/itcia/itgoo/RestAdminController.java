package com.itcia.itgoo;

import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import com.itcia.itgoo.dto.Adopt;
import com.itcia.itgoo.service.AdminCompany;
import com.itcia.itgoo.service.AdminTest;
@RestController
public class RestAdminController {
	@Autowired
	AdminTest at;
	private static final Logger logger = LoggerFactory.getLogger(RestAdminController.class);
	@RequestMapping(value = "/documentpass", produces = "text/plain;charset=UTF-8", method=RequestMethod.POST)
	public String documentPass(Adopt adopt) {
		System.out.println("adopt:"+adopt);
		at.documentPass(adopt);
		return "{\"status\":\"서류합격\"}";
	}
	@RequestMapping(value = "/adoptout", produces = "text/plain;charset=UTF-8", method=RequestMethod.POST)
	public String adoptOut(Adopt adopt) {
		System.out.println("adopt:"+adopt);
		at.adoptOut(adopt);
		return "{\"status\":\"탈락\"}";
	}
}
