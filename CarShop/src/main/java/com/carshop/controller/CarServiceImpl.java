package com.carshop.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class CarServiceImpl implements CarService {

	@Autowired
	private CarRepository carRepository;
	
	@Override
	public List<CarDTO> getAllCarList() {
		// TODO Auto-generated method stub
		return carRepository.getAllCarList();
	}

	public List<CarDTO> getCarListByCategory(String category){
		List<CarDTO> carsByCategory = carRepository.getCarListByCatedory(category);
		return carsByCategory;
	}
}
