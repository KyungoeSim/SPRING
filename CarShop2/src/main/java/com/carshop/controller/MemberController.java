package com.carshop.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MemberController {

	
	@RequestMapping("/login")
	public String loginMethod() {
		
		return "login";
	}
	
	@GetMapping("/loginfailed")
	public String loginfailedMethod() {
		
		return "login";
	}
	
	@GetMapping("/logout")
	public String logoutMethod() {
		
		return "login";
	}

}
