package dao;

import model.Cart;

public interface CartDAO {

	public Cart create(Cart cart);
	
	public Cart read(String cartId);
	
	public void update(String cartId, Cart cart);
	
	public void delete(String cartId);
	
	
}
