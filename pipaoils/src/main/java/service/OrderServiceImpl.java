package service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import dao.OrderDAO;
import dao.ProductDAO;
import model.Order;
import model.Product;

@Service
public class OrderServiceImpl implements OrderService {

	@Autowired
	private OrderDAO orderDao;
	
	@Autowired 
	private ProductDAO productDao;
	
	@Autowired
	private CartService cartService;
	
	@Override
	public void processOrder(String productId, int mnozstvi) {
		// TODO Auto-generated method stub
		Product productById = productDao.get(productId);
		
		if (productById.getpocet() < mnozstvi) {
			throw new IllegalArgumentException("Na skladu není dostatek zboží, které jste objednal" + productById.getpocet());
		}
		
		productById.setpocet(productById.getpocet() - mnozstvi);

	}

	@Override
	public Long saveOrder(Order order) {
		// TODO Auto-generated method stub
		Long orderId = orderDao.saveOrder(order);
		cartService.delete(order.getCart().getCartId());
		return orderId;
	}
	
	public String getEmail(){
		String email = orderDao.getEmail();
		return email;
	}

}
