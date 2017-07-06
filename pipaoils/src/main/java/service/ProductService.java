package service;

import java.util.List;

import model.Product;

public interface ProductService {
	public List<Product> list();
	public List<Product> getAllProducts();
	public List<Product> getAll();
	
	public Product get(String id);
	public List<Product> getProductsByCategory(String category);
	
	public void add(Product product);
	public void update(Product product);
	public void delete(String id);
	public void aktivovat(String id);
	public void deaktivovat(String id);
	
}
