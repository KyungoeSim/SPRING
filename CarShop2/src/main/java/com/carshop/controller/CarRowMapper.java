package com.carshop.controller;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

public class CarRowMapper implements RowMapper<CarDTO> {
	
	public CarDTO mapRow(ResultSet rs, int rowNum) throws SQLException {
		CarDTO car = new CarDTO();
		
		car.setCid(rs.getString(1));
		car.setCname(rs.getString(2));
		car.setCprice(rs.getString(3));
		car.setCcate(rs.getString(4));
		car.setCdesc(rs.getString(5));
		car.setCfilename(rs.getString(6));
		
		return car;
	}
	
	
	
}
