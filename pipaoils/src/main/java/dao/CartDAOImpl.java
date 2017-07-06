package dao;

import java.util.HashMap;
import java.util.Map;

import org.springframework.stereotype.Repository;

import model.Cart;
import dao.CartDAO;

@Repository
public class CartDAOImpl implements CartDAO {
	
	public Map<String, Cart> seznamKosiku;
	
	public CartDAOImpl() {
		seznamKosiku = new HashMap<String, Cart>();
	}

	
	//vytvoreni nakupniho kosiku
	@Override
	public Cart create(Cart cart) {
		// TODO Auto-generated method stub
		
		if (seznamKosiku.keySet().contains(cart.getCartId())) {
			throw new IllegalArgumentException(String.format("Nelze vytvo�it n�kupn� ko��k. Litujeme, ale ko��k s t�mto id (%) ji� existuje", cart.getCartId()));
		}
		
		seznamKosiku.put(cart.getCartId(), cart);
		
		return cart;
	}

	//nacteni nakupniho kosiku
	@Override
	public Cart read(String cartId) {
		// TODO Auto-generated method stub
		
		return seznamKosiku.get(cartId);
	}

	//aktualizace nakupniho kosiku
	@Override
	public void update(String cartId, Cart cart) {
		// TODO Auto-generated method stub
		
		if (!seznamKosiku.keySet().contains(cartId)) {
			throw new IllegalArgumentException(String.format("N�kupn� ko��k nelze aktualizovat. N�kupn� ko��k s t�mto id (%) nejsp� neexistuje", cartId));
		}
		
		seznamKosiku.put(cartId, cart);

	}

	//vymazani nakupniho kosiku
	@Override
	public void delete(String cartId) {
		// TODO Auto-generated method stub
		
		if (!seznamKosiku.keySet().contains(cartId)) {
			throw new IllegalArgumentException(String.format("N�kupn� ko��k nelze smazat. N�kupn� ko��k s t�mto id (%) nejsp� neexistuje", cartId));
		}
		
		seznamKosiku.remove(cartId);

	}

}
