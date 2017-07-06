package model;


import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.ManyToOne;
import javax.persistence.Table;


 @Entity
 @Table(name="komentare")
public class Komentar {

	@Id
	@GeneratedValue
	@Column(name="id")
	private int id;
	@Column(name="nadpis")
	private String nadpis;
	@Column(name="autor")
	private String autor;
	@Column(name="text")
	private String text;
	@Column(name="aktivni")
	private boolean aktivni;
	
	@ManyToOne
	private Product produkt;
	
	public Komentar(){
		
	}
	
	
	
	public Komentar(String autor, String nadpis, String text, Product produkt) {
		super();
		this.autor = autor;
		this.nadpis = "";
		this.text = text;
		this.produkt = produkt;
	}
	
	
	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	

	
	public String getAutor() {
		return autor;
	}



	public void setAutor(String autor) {
		this.autor = autor;
	}



	public boolean isAktivni() {
		return aktivni;
	}



	public void setAktivni(boolean aktivni) {
		this.aktivni = aktivni;
	}



	public Product getProdukt() {
		return produkt;
	}



	public void setProdukt(Product produkt) {
		this.produkt = produkt;
	}



	public String getNadpis() {
		return nadpis;
	}

	public void setNadpis(String nadpis) {
		this.nadpis = nadpis;
	}

	public String getText() {
		return text;
	}

	public void setText(String text) {
		this.text = text;
	}

	
	

}
