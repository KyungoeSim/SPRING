package com.carshop.study;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/study")
public class ModelExam {

	@GetMapping("/modeltest")
	public String modeltest(Model model) {
		model.addAttribute("data1","모델테스트입니다.");
		model.addAttribute("data2","url요청은 modeltest입니다.");
		
		return "study/modeltest";
	}
}

