package com.carshop.exception;

@SuppressWarnings("serial")
public class CartException extends RuntimeException{

	private String cartId;
	
	public CartException(String cartId) {
		this.cartId = cartId;
		
	}
	
	public String getCardId() {
		return cartId;
	}
}
