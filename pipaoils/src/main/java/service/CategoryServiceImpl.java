package service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import dao.CategoryDAO;
import model.Category;

@Service
public class CategoryServiceImpl implements CategoryService {

	@Autowired
	private CategoryDAO categoryDao;
	
	@Transactional
	@Override
	public List<Category> list() {
		// TODO Auto-generated method stub
		return categoryDao.list();
	}

	@Transactional
	@Override
	public Category get(Integer id) {
		// TODO Auto-generated method stub
		return categoryDao.get(id);
	}

	@Transactional
	@Override
	public void add(Category category) {
		// TODO Auto-generated method stub
		categoryDao.add(category);
	}

	@Transactional
	@Override
	public void update(Category category) {
		// TODO Auto-generated method stub
		categoryDao.update(category);
	}

	@Transactional
	@Override
	public void delete(int id) {
		// TODO Auto-generated method stub
		categoryDao.delete(id);
	}

	@Transactional
	@Override
	public void deaktivovat(int id) {
		// TODO Auto-generated method stub
		categoryDao.deaktivovat(id);
	}

	@Transactional
	@Override
	public void aktivovat(int id) {
		// TODO Auto-generated method stub
		categoryDao.aktivovat(id);
	}

	@Transactional
	@Override
	public List<Category> listAktivni() {
		// TODO Auto-generated method stub
		return categoryDao.listAktivni();
	}

}
