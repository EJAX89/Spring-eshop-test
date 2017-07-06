package service;

import model.Order;

public interface OrderService {

	void processOrder(String productId, int mnozstvi);
	
	Long saveOrder(Order order);
	String getEmail();
	
}
