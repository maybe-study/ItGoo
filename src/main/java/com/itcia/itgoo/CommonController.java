package com.itcia.itgoo;

import org.springframework.security.access.annotation.*;
import org.springframework.security.access.prepost.*;
import org.springframework.stereotype.*;
import org.springframework.web.bind.annotation.*;

@Controller
public class CommonController {

	@GetMapping("/")
	public String home() {
		return "index";
	}

	@PreAuthorize("isAnonymous()")
	@GetMapping("/login")
	public String loginForm() {
		return "common/login";
	}

//	@PreAuthorize("isAnonymous()")
//	@GetMapping("/list")
//	public String guest() {
//		return "guest";
//	}
//
//	@PreAuthorize("isAuthenticated()")
//	@GetMapping("/list")
//	public String user() {
//		return "user";
//	}
//
//	@Secured({ "ROLE_USER", "ROLE_MANAGER", "ROLE_ADMIN" })
//	@GetMapping("/list")
//	public String member() {
//		return "member";
//	}
//
//	@Secured({ "ROLE_MANAGER", "ROLE_ADMIN" })
//	@GetMapping("/list")
//	public String manager() {
//		return "manager";
//	}
//
//	@Secured("ROLE_ADMIN")
//	@GetMapping("/list")
//	public String admin() {
//		return "admin";
//	}
}