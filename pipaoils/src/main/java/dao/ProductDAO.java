package dao;

import java.util.List;

import model.Product;

public interface ProductDAO {
	public List<Product> list();
	public List <Product> getAllProducts();
	public List<Product> getAll();
	public List<Product> getProductsByCategory(String category);
	public Product get(String id);
	public void add(Product product);
	public void update(Product product);
	public void delete(String id);
	public void aktivovat(String id);
	public void deaktivovat(String id);

}
