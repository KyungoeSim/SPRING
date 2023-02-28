package com.carshop.study;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/study")
public class ModelMapExam {
	
	@GetMapping("/modelmaptest")
	public String modelmap(ModelMap modelmap) {
	modelmap.addAttribute("data1", "모델 앱 테스트");
	modelmap.addAttribute("data2", "모델 앱2 테스트");
	return "study/modelmaptest";
}
}
