package dao;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import model.Clanek;

@Repository
public class ClanekDAOImpl implements ClanekDAO {

	@Autowired
	public SessionFactory sessionFactory;
	
	private List<Clanek> seznamClanku = new ArrayList<Clanek>();
	
	//pridani clanku
	@Transactional
	@Override
	public void addClanek(Clanek clanek) {
		// TODO Auto-generated method stub
		sessionFactory.getCurrentSession().save(clanek);

	}

	//odebrani clanku
	@Transactional
	@Override
	public void removeClanek(Clanek clanek) {
		// TODO Auto-generated method stub
		sessionFactory.getCurrentSession().delete(clanek);

	}

	//aktualizace clanku
	@Transactional
	@Override
	public void updateClanek(Clanek clanek) {
		// TODO Auto-generated method stub
		sessionFactory.getCurrentSession().update(clanek);

	}

	//zobrazeni jednoho clanku
	@Transactional
	@Override
	public Clanek getClanekById(int id) {
		// TODO Auto-generated method stub
		Session session = sessionFactory.getCurrentSession();
		Clanek clanek = null;
		
		try {
			clanek = (Clanek) session.createQuery("from Clanek where id=:id").setInteger("id", id).uniqueResult();
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		return clanek;
	}

	//zobrazeni vsech clanku
	@Transactional
	@Override
	public List<Clanek> getClanekAll() {
		// TODO Auto-generated method stub
		Session session = sessionFactory.getCurrentSession();
		try {
			seznamClanku = session.createQuery("from Clanek").list();
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		return seznamClanku;
	}

	//aktivace pro zobrazeni
	@Transactional
	@Override
	public void aktivovat(int id) {
		// TODO Auto-generated method stub
		Clanek clanek = getClanekById(id);
		if (clanek != null) {
			clanek.setAktivni(true);
			sessionFactory.getCurrentSession().update(clanek);
		}
	}

	//deaktivace pro schovani
	@Transactional
	@Override
	public void deaktivovat(int id) {
		// TODO Auto-generated method stub
		Clanek clanek = getClanekById(id);
		if (clanek != null) {
			clanek.setAktivni(false);
			sessionFactory.getCurrentSession().update(clanek);
		}
	}

	//nacteni aktivnich clanku
	@Transactional
	@Override
	public List<Clanek> getClankyAktivni() {
		// TODO Auto-generated method stub
		Session session = sessionFactory.getCurrentSession();
		try {
			seznamClanku = session.createQuery("from Clanek where aktivni!=:aktivni").setBoolean("aktivni", false).list();
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		return seznamClanku;
	}

}
