package com.carshop.controller;

import java.util.HashMap;
import java.util.Map;

public class Cart {

	private String cartId;
	private Map<String, CartItem> cartItems;
	private int grandTotal;
	
	
	
	public Cart() {
		cartItems = new HashMap<String, CartItem>();
	}



	public Cart(String cartId) {
		this();
		this.cartId = cartId;
	}



	public String getCartId() {
		return cartId;
	}



	public void setCartId(String cartId) {
		this.cartId = cartId;
	}



	public Map<String, CartItem> getCartItems() {
		return cartItems;
	}



	public void setCartItems(Map<String, CartItem> cartItems) {
		this.cartItems = cartItems;
	}



	public int getGrandTotal() {
		return grandTotal;
	}



	public void setGrandTotal(int grandTotal) {
		this.grandTotal = grandTotal;
	}



	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((cartId == null) ? 0 : cartId.hashCode());
		return result;
	}



	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		Cart other = (Cart) obj;
		if (cartId == null) {
			if (other.cartId != null)
				return false;
		} else if (!cartId.equals(other.cartId))
			return false;
		return true;
	}	
	
	
	public void updateGrandTotal() {
		grandTotal = 0;
		for(CartItem item : cartItems.values()) {
			grandTotal = grandTotal + item.getTotalPrice();
		}
	}
	
	
	
	
}