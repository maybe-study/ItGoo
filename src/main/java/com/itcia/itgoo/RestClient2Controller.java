package com.itcia.itgoo;

import java.security.Principal;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.annotation.Secured;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.itcia.itgoo.dto.SmallMeeting;
import com.itcia.itgoo.service.ClientManagement;

@Controller
@Secured("ROLE_USER")
public class RestClient2Controller {
	ModelAndView mav = new ModelAndView();

	@Autowired
	private ClientManagement cm;

	@PostMapping(value = "/regismallmeeting")
	public  ModelAndView regismallmeeting (Principal p,SmallMeeting sm) {
		if(p!=null) {
			p.getName ();
			System.out.println("p="+p.getName());
		}
		mav= cm.regismallmeeting(p,sm);

		return mav;
	}
	
	
	
	@RequestMapping(value = "/myenrollsmalldetail" , method = RequestMethod.GET)
	public ModelAndView myenrollsmalldetail( Integer smallnumber) {	//null 값도 받으려고
		System.out.println("여기 있어요");

		mav= cm.myenrollsmalldetail(smallnumber);

		return mav;
	}
	
}
