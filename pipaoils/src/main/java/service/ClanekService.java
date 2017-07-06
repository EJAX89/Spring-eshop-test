package service;

import java.util.List;

import model.Clanek;

public interface ClanekService {

	public void addClanek(Clanek clanek);
	public void removeClanek(Clanek clanek);
	public void updateClanek(Clanek clanek);
	public void aktivovat(int id);
	public void deaktivovat(int id);
	public Clanek getClanekById(int id);
	public List<Clanek> getClanekAll();
	public List<Clanek> getClankyAktivni();
	
}
