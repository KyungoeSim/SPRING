package com.carshop.domain;

import java.io.Serializable;
import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;

@SuppressWarnings("serial")
public class Shipping implements Serializable {
	
	private String name; //배송 받는 고객 이름
	@DateTimeFormat(pattern="yyyy/MM/dd")  //날짜 패턴을 제한한다. 오류 발생
	private Date date;   //java.util.date
	private Address address; // 배송 주소 객체
	
	//기본 생성자
	public Shipping() {
		this.address = new Address();
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public Date getDate() {
		return date;
	}

	public void setDate(Date date) {
		this.date = date;
	}

	public Address getAddress() {
		return address;
	}

	public void setAddress(Address address) {
		this.address = address;
	}
	
	

}
