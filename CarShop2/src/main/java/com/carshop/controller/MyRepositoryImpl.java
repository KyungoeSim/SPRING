package com.carshop.controller;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Primary;
import org.springframework.stereotype.Repository;

@Primary
@Repository
public class MyRepositoryImpl implements CarRepository {


	@Autowired
	SqlSessionTemplate sqlSessionTemplate;
	
	public List<CarDTO> getAllCarList() {
		
		return this.sqlSessionTemplate.selectList("car.select_list");
	}

	public List<CarDTO> getCarListByCategory(String category) {
		// TODO Auto-generated method stub
		return null;
	}

	public CarDTO getCarById(String cid) {
		
		return this.sqlSessionTemplate.selectOne("car.select_detail", cid);
	}

	public void setNewCar(CarDTO car) {
		this.sqlSessionTemplate.insert("car.insert", car);

	}

	public void removeCar(String cid) {
		this.sqlSessionTemplate.delete("car.delete", cid);

	}

	public void setUpdateCar(CarDTO car) {
		if(car.getCfilename() != null) {
			this.sqlSessionTemplate.update("car.update1", car);
		} else if(car.getCfilename() == null) {
			this.sqlSessionTemplate.update("car.update2", car);
	}

}
	


}

