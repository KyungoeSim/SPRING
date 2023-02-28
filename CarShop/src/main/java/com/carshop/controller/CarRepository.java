package com.carshop.controller;

import java.util.List;

public interface CarRepository {

	List<CarDTO> getAllCarList();
	List<CarDTO> getCarListByCatedory(String category);
}
