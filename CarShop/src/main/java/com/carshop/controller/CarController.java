package com.carshop.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class CarController {
	
	@Autowired
	private CarService carService;
	
	@RequestMapping("/cars")
	public String CarList(Model model) {
		List<CarDTO> list = carService.getAllCarList();
		model.addAttribute("carList",list);
		return "cars";
	}
	
	@GetMapping("/{ccate}")
	public String requestCarsByCategory(@PathVariable("ccate")String carCategory, Model model) {
		List<CarDTO> carsByCategory = carService.getCarListByCategory(carCategory);
		model.addAttribute("carList",carsByCategory);
		return "cars";
	}
	
	@GetMapping("/car")
	public String requsetCarById(@RequestParam("id") String carId, Model model) {
		
		CarDTO carById = carService.getCarById(carId);
		model.addAttribute("car", carById);
		
		return "car";
	}
	
	@GetMapping("/add")
	public String requestAddCarForm(@ModelAttribute("NewCar") CarDTO car) {
		
		return "addCar";
	}
	
	@PostMapping("/add")
	public String submitAddNewCar(@ModelAttribute("NewCar") CarDTO car) {
		carService.setNewCar(car);
		return "redirect:/cars";
	}
	
	@ModelAttribute
	public void addAttribute(Model model) {
		model.addAttribute("addTitle", "신규차량등록");
	}
}
