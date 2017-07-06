package dao;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import model.Category;

@Repository
public class CategoryDAOImpl implements CategoryDAO {
	@Autowired
	public SessionFactory sessionFactory;

	
	private List<Category> seznamKategorii = new ArrayList<Category>();
	
	//nacteni vsech kategorii
	@Transactional
	@SuppressWarnings("unchecked")
	public List<Category> list() {
		// TODO Auto-generated method stub
		return sessionFactory.getCurrentSession().createQuery("from Category").list();
	}
	
	//nacteni aktivnich kategorii
	@Transactional
	public List<Category> listAktivni() {
		Session session = sessionFactory.getCurrentSession();
		
		List<Category> categories = null;
		try {
			categories = (List<Category>) session.createQuery("from Category where aktivni=:aktivni").setBoolean("aktivni", true).list();
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		return categories;
	}

	//nacteni kategorie
	@Transactional
	public Category get(Integer id) {
		// TODO Auto-generated method stub
		Session session = sessionFactory.getCurrentSession();
		Category category = null;
		try {
			category = (Category) session.createQuery("from Category where id=:id").setInteger("id", id).uniqueResult();
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		return category;
	}
	
	//ulozeni nove kategorie
	@Transactional
	@Override
	public void add(Category category) {
		// TODO Auto-generated method stub
		sessionFactory.getCurrentSession().save(category);
	}

	//aktualizace kategorie
	@Transactional
	@Override
	public void update(Category category) {
		// TODO Auto-generated method stub
		sessionFactory.getCurrentSession().update(category);
	}

	//smazani kategorie
	@Transactional
	@Override
	public void delete(int id) {
		// TODO Auto-generated method stub
		Category category = get(id);
		sessionFactory.getCurrentSession().delete(category);
	}

	//schovani kategorie
	@Transactional
	@Override
	public void deaktivovat(int id) {
		// TODO Auto-generated method stub
		Category category = get(id);
		if (category != null) {
			category.setAktivni(false);
			sessionFactory.getCurrentSession().update(category);
		}
	}

	//aktivovani kategorie
	@Transactional
	@Override
	public void aktivovat(int id) {
		// TODO Auto-generated method stub
		Category category = get(id);
		if (category != null) {
			category.setAktivni(true);
			sessionFactory.getCurrentSession().update(category);
		}
	}

}
