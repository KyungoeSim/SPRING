package com.carshop.domain;

public interface OrderService {

	void confirmOrder(String cid, long quantity);
	Long saveOrder(Order order);
	
}
