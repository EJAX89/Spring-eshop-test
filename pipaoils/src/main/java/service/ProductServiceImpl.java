package service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import dao.ProductDAO;
import model.Product;

@Service
public class ProductServiceImpl implements ProductService {
	@Autowired
	private ProductDAO productDAO;
	
	@Transactional
	public List<Product> list() {
		// TODO Auto-generated method stub
		return productDAO.list();
	}

	@Transactional
	public Product get(String id) {
		// TODO Auto-generated method stub
		return productDAO.get(id);
	}

	@Transactional
	public void add(Product product) {
		// TODO Auto-generated method stub
		productDAO.add(product);
	}

	@Transactional
	public List<Product> getProductsByCategory(String category) {
		return productDAO.getProductsByCategory(category);
	}

	
	@Transactional
	public void update(Product product) {
		// TODO Auto-generated method stub
		productDAO.update(product);
	}

	@Transactional
	public void delete(String id) {
		// TODO Auto-generated method stub
		productDAO.delete(id);
	}

	@Transactional
	public List<Product> getAllProducts() {
		// TODO Auto-generated method stub
		return productDAO.getAllProducts();
	}

	public List<Product> getAll(){
		return productDAO.getAll();
	}
	
	@Transactional
	@Override
	public void aktivovat(String id) {
		// TODO Auto-generated method stub
		productDAO.aktivovat(id);
	}

	@Transactional
	@Override
	public void deaktivovat(String id) {
		// TODO Auto-generated method stub
		productDAO.deaktivovat(id);
	}

	

}
