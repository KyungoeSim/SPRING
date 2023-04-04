package com.carshop.controller;

import java.util.List;

public interface CarRepository {
	
	List<CarDTO> getAllCarList();
	List<CarDTO> getCarListByCategory(String category);
	CarDTO getCarById(String carId);

	void setNewCar(CarDTO car);
	
	void removeCar(String cid);
	
	void setUpdateCar(CarDTO car);
}
