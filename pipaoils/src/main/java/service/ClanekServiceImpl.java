package service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import dao.ClanekDAO;
import model.Clanek;

@Service
public class ClanekServiceImpl implements ClanekService {

	@Autowired
	public ClanekDAO clanekDao;
	
	@Transactional
	@Override
	public void addClanek(Clanek clanek) {
		// TODO Auto-generated method stub
		clanekDao.addClanek(clanek);
	}

	@Transactional
	@Override
	public void removeClanek(Clanek clanek) {
		// TODO Auto-generated method stub
		clanekDao.removeClanek(clanek);
	}

	@Transactional
	@Override
	public void updateClanek(Clanek clanek) {
		// TODO Auto-generated method stub
		clanekDao.updateClanek(clanek);
	}

	@Transactional
	@Override
	public Clanek getClanekById(int id) {
		// TODO Auto-generated method stub
		return clanekDao.getClanekById(id);
	}

	@Transactional
	@Override
	public List<Clanek> getClanekAll() {
		// TODO Auto-generated method stub
		return clanekDao.getClanekAll();
	}
	@Transactional
	@Override
	public void aktivovat(int id) {
		// TODO Auto-generated method stub
		clanekDao.aktivovat(id);
	}

	@Transactional
	@Override
	public void deaktivovat(int id) {
		// TODO Auto-generated method stub
		clanekDao.deaktivovat(id);
	}

	@Transactional
	@Override
	public List<Clanek> getClankyAktivni() {
		// TODO Auto-generated method stub
		return clanekDao.getClankyAktivni();
	}

}
