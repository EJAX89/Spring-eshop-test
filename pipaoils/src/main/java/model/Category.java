package model;

import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.persistence.Transient;
import javax.validation.constraints.NotNull;
import javax.xml.bind.annotation.XmlRootElement;


@Entity
@Table(name="kategorie")
@XmlRootElement
public class Category {
	@Id
	@GeneratedValue
	@Column(name="id")
	private int id;
	
	@OneToMany(mappedBy = "kategorie")
	private List<Product> products;
	
	@NotNull(message= "Název nesmí být prázdný")
	@Column(name="jmeno")
	private String jmeno;
	
	@NotNull(message= "Pole zkratka nesmí být prázdné")
	@Column(name="zkratka")
	private String zkratka;

	
	@Column(name="aktivni")
	private boolean aktivni;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getjmeno() {
		return jmeno;
	}

	public void setjmeno(String jmeno) {
		this.jmeno = jmeno;
	}

	public String getZkratka() {
		return zkratka;
	}

	public void setZkratka(String zkratka) {
		this.zkratka = zkratka;
	}

	
	public boolean isAktivni() {
		return aktivni;
	}

	public void setAktivni(boolean aktivni) {
		this.aktivni = aktivni;
	}

	public List<Product> getProducts() {
		return products;
	}

	public void setProducts(List<Product> products) {
		this.products = products;
	}
	
	
	

	
}
