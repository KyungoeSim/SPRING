package com.carshop.study;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.MatrixVariable;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/vari")
public class VariableController {

	@GetMapping("/names/{name}")
	public String namesMethod(@PathVariable String name, Model model) {
		model.addAttribute("data", "성명:" + name);
		
		return "/study/name";
	}
	
	@GetMapping("/names/{name}/{gender}")
	public String namesMethod2(@PathVariable String name,@PathVariable String gender, Model model) {
		model.addAttribute("data", "성명:" + name + "<br>"+ "성별:" + gender);
		
		return "/study/name";
	}
	
	@GetMapping("/names/cars/{carID}")
	public String namesMethod3(@PathVariable String carID,@MatrixVariable String cate, Model model) {
		model.addAttribute("data", "차아이디:" + carID + "<br>"+ "차종:" + cate);
		
		return "/study/name";
	
}
}
