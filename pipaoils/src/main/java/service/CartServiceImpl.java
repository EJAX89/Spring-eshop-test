package service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import dao.CartDAO;
import error.InvalidCart;
import model.Cart;

@Service
public class CartServiceImpl implements CartService {

	@Autowired
	public CartDAO cartDao;
	
	
	@Override
	public Cart create(Cart cart) {
		// TODO Auto-generated method stub
		
		return cartDao.create(cart);
	}

	@Override
	public Cart read(String cartId) {
		// TODO Auto-generated method stub
		return cartDao.read(cartId);
	}

	@Override
	public void update(String cartId, Cart cart) {
		// TODO Auto-generated method stub

		cartDao.update(cartId, cart);
	}

	@Override
	public void delete(String cartId) {
		// TODO Auto-generated method stub

		cartDao.delete(cartId);
	}

	@Override
	public Cart validate(String cartId) {
		// TODO Auto-generated method stub
		
		Cart cart = cartDao.read(cartId);
		if (cart==null || cart.getCartItems().size()==0) {
			throw new InvalidCart(cartId);
		}
		return cart;
	}

}
