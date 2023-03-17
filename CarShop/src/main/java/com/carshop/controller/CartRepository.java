package com.carshop.controller;

public interface CartRepository {

	Cart create(Cart cart);
	Cart read(String cartId);
}