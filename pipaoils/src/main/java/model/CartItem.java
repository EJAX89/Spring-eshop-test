package model;

import java.io.Serializable;
import java.math.BigDecimal;


public class CartItem implements Serializable{

	/**
	 * 
	 */
	private static final long serialVersionUID = -7236100072317743462L;
	private Product product;
	private int mnozstvi;
	private BigDecimal cenaCelkem;
	
	public CartItem(){
		
		
	}
	
	public CartItem(Product product){
		super();
		this.product = product;
		this.mnozstvi = 1;
		this.cenaCelkem = product.getCena();
	}

	public Product getProduct() {
		return product;
	}

	public void setProduct(Product product) {
		this.product = product;
		this.updateCena();
	}

	public void updateCena() {
		cenaCelkem = this.product.getCena().multiply(new BigDecimal(this.mnozstvi));
	}

	public int getMnozstvi() {
		return mnozstvi;
	}

	public void setMnozstvi(int mnozstvi) {
		this.mnozstvi = mnozstvi;
		this.updateCena();
	}

	public BigDecimal getCena() {
		return cenaCelkem;
	}
	
	@Override
	public int hashCode() {
		final int prime = 311;
		int result = 1;
		result = prime * result + ((product == null) ? 0 : product.hashCode());
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
		CartItem other = (CartItem) obj;
		if (product == null) {
			if (other.product != null)
				return false;
		} else if (!product.equals(other.product))
			return false;
		return true;
	}
	
}
