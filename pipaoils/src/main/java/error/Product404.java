package error;

public class Product404 extends RuntimeException {

	private static final long serialVersionUID = -694354952032299587L;

	private String productId;

	public Product404(String productId) {

		this.productId = productId;

	}

	public String getProductId() {

		return productId;
	}
}
