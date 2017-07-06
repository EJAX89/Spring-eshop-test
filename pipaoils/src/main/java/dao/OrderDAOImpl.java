package dao;

import java.util.HashMap;
import java.util.Map;

import org.springframework.stereotype.Repository;

import model.Order;
@Repository
public class OrderDAOImpl implements OrderDAO {

	private Map<Long, Order> seznamObjednavek;
	private long nextOrderId;
	private String email;
	
	public OrderDAOImpl() {
		// TODO Auto-generated constructor stub
		seznamObjednavek = new HashMap<Long, Order>();
		nextOrderId = 1000;
	}
		
	//ulozeni objednavky a pridani dalsiho id
	@Override
	public Long saveOrder(Order order) {
		// TODO Auto-generated method stub
		order.setOrderId(getNextOrderId());
		seznamObjednavek.put(order.getOrderId(), order);
		return order.getOrderId();
	}

	public long getNextOrderId() {
		// TODO Auto-generated method stub
		return nextOrderId++;
	}
	
	public String getEmail(){
		email = seznamObjednavek.get(getClass()).getCustomer().getEmail();
		
		return email;
	}
	

	
}
