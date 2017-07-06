package dao;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.FetchMode;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.Projections;
import org.hibernate.criterion.Restrictions;
import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import model.Category;
import model.Product;

@Repository
public class ProductDAOImpl implements ProductDAO {
	@Autowired
	public SessionFactory sessionFactory;
	
	private List<Product> listOfProducts = new ArrayList<Product>();
	
	
	//nacteni seznamu aktivnich produktu 
	@Transactional
	@SuppressWarnings("unchecked")
	public List<Product> list() {
		// TODO Auto-generated method stub
		Session session = sessionFactory.getCurrentSession();
		List<Product> products = null;
		try {
			products = (List<Product>) session.createQuery("from Product where aktivni!=:aktivni")
					.setBoolean("aktivni", false).list();
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		return products;
	}


	

	//nacteni produktu podle id
	@Transactional
	public Product get(String id) {
		// TODO Auto-generated method stub
		Session session = sessionFactory.getCurrentSession();

		Product product = null;

		try {
			product = (Product) session.createQuery("from Product where id=:id").setString("id", id).uniqueResult();
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		return product;
	}

	//pridani produktu 
	@Transactional
	public void add(Product product) {
		// TODO Auto-generated method stub
		sessionFactory.getCurrentSession().save(product);

	}

	//aktualizace produktu
	@Transactional
	public void update(Product product) {
		// TODO Auto-generated method stub

		sessionFactory.getCurrentSession().update(product);
	}

	//deaktivace produktu
	@Transactional
	public void deaktivovat(String id) {
		// TODO Auto-generated method stub

		Product product = get(id);
		if (product != null) {
			product.setAktivni(false);
			sessionFactory.getCurrentSession().update(product);
		}
	}
	
	//aktivace produktu pro zobrazeni
	@Transactional
	public void aktivovat(String id) {
		// TODO Auto-generated method stub

		Product product = get(id);
		if (product != null) {
			product.setAktivni(true);
			sessionFactory.getCurrentSession().update(product);
		}
	}
	
	//smazani produktu
	@Transactional
	public void delete(String id) {
		// TODO Auto-generated method stub
		Product product = get(id);
		sessionFactory.getCurrentSession().delete(product);
	}
	
	//nacteni produktu v kategorii
	@SuppressWarnings("unchecked")
	@Transactional
	public List<Product> getProductsByCategory(String category) {
		// TODO Auto-generated method stub
		
		List<Product> productsByCategory = new ArrayList<Product>();
		Session session = sessionFactory.getCurrentSession();
		
		try {
			productsByCategory = session.createQuery("from Product where categoryid=:category").setString("category", category).list();
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		
		return productsByCategory;
		
	}

	//nacteni vsech aktivnich produktu 
	@Transactional
	public List<Product> getAllProducts() {
		// TODO Auto-generated method stub
		Session session = sessionFactory.getCurrentSession();
		try {
			listOfProducts = (List<Product>) session.createQuery("from Product where aktivni!=:aktivni")
					.setBoolean("aktivni", false).list();
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		return listOfProducts;
	}
	
	//nacteni vsech produktu
	@Transactional
	public List<Product> getAll() {
		// TODO Auto-generated method stub
		Session session = sessionFactory.getCurrentSession();
		try {
			listOfProducts = (List<Product>) session.createQuery("from Product").list();
					
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		return listOfProducts;
	}



}
