package dao;

import model.Order;

public interface OrderDAO {
	Long saveOrder(Order order);
	String getEmail();
}
