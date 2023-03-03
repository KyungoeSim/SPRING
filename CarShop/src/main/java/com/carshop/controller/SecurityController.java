package com.carshop.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;


@Controller
public class SecurityController {
	
	@GetMapping("/manager")
	public String ManagerMethod(Model model) {
		model.addAttribute("data", "manager");
		return "test";
	}
	
	@GetMapping("/member")
	public String MemberMethod(Model model) {
		model.addAttribute("data", "member");
		return "test";
	}
	
	@GetMapping("/guest")
	public String GuestMethod(Model model) {
		model.addAttribute("data", "guest");
		return "test";
	}
	
}
