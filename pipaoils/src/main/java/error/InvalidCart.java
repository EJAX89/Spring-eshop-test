package error;

public class InvalidCart extends RuntimeException {

	private String cartId;
	
	public InvalidCart(String cartId) {
		// TODO Auto-generated constructor stub
		this.cartId = cartId;
	}
	
	public String getCartId(){
		return cartId;
	}
}
