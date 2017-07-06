package dao;

import java.util.List;

import model.Category;

public interface CategoryDAO {
	
	public List<Category> list();
	public List<Category> listAktivni();
	public Category get(Integer id);
	public void add(Category category);
	public void update(Category category);
	public void delete(int id);
	public void deaktivovat(int id);
	public void aktivovat(int id);
}
