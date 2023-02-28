package com.carshop.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Repository;

@Repository
public class CarRepositoryImpl implements CarRepository {
	private List<CarDTO> listOfCars = new ArrayList<CarDTO>();
	
	public CarRepositoryImpl() {
		CarDTO car1=new CarDTO("c001","소나타","2500","중형","거의새거");
		CarDTO car2=new CarDTO("c002","그랜저","3500","대형","아주새거");
		CarDTO car3=new CarDTO("c003","아반떼","2000","준중형","새거");
		CarDTO car4=new CarDTO("c004","K5","2600","중형","완전새거");
		
		listOfCars.add(car1);
		listOfCars.add(car2);
		listOfCars.add(car3);
		listOfCars.add(car4);
	}

	@Override
	public List<CarDTO> getAllCarList() {
		
		return listOfCars;
	}
	
	public List<CarDTO> getCarListByCatedory(String category){
		List<CarDTO> carsByCategory = new ArrayList<CarDTO>();
		for(int i=0; i<listOfCars.size(); i++) {
			CarDTO carDTO = listOfCars.get(i);
			if(category.equalsIgnoreCase(carDTO.getCcate()))
				carsByCategory.add(carDTO);
		}
		return carsByCategory;
	}

}