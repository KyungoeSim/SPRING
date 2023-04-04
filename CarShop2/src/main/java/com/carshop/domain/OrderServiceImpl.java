package com.carshop.domain;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.carshop.controller.CartService;

@Service
public class OrderServiceImpl implements OrderService {
	
	@Autowired
	private OrderRepository orderRepository;
	
	@Autowired
	private CartService cartService;
	

	@Override
	public void confirmOrder(String cid, long quantity) {
		// 추후에는 판매가 이루어지면 재고량에서 1개를 빼주는 계산 처리 

	}

	@Override
	public Long saveOrder(Order order) {
		Long orderId = orderRepository.saveOrder(order);
		cartService.delete(order.getCart().getCartId());
		return orderId;
		//주문이 처리가 되어 기존 장바구니는 비워준다
	}

}
