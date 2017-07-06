package model;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@Entity
@Table(name="clanky")
public class Clanek {
	
	@Id
	@GeneratedValue
	@Column(name = "id")
	private int id;
	@Column(name = "nadpis")
	private String nadpis;

	@Column(name ="abstrakt")
	private String abstrakt;
	
	@Column(name = "text")
	private String text;
	
	@Column(name = "aktivni")
	private boolean aktivni;
	
	public Clanek(){
		
	}
	
	public Clanek(String nadpis, String text){
		super();
		this.nadpis = nadpis;
		this.text = text;
		
		
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getNadpis() {
		return nadpis;
	}

	public void setNadpis(String nadpis) {
		this.nadpis = nadpis;
	}

	public void setAktivni(boolean aktivni) {
		this.aktivni = aktivni;
	}

	public String getText() {
		return text;
	}

	public void setText(String text) {
		this.text = text;
	}

	public boolean isAktivni() {
		return aktivni;
	}

	public String getAbstrakt() {
		return abstrakt;
	}

	public void setAbstrakt(String abstrakt) {
		this.abstrakt = abstrakt;
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + (aktivni ? 1231 : 1237);
		result = prime * result + id;
		result = prime * result + ((nadpis == null) ? 0 : nadpis.hashCode());
		result = prime * result + ((text == null) ? 0 : text.hashCode());
		return result;
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		Clanek other = (Clanek) obj;
		if (aktivni != other.aktivni)
			return false;
		if (id != other.id)
			return false;
		if (nadpis == null) {
			if (other.nadpis != null)
				return false;
		} else if (!nadpis.equals(other.nadpis))
			return false;
		if (text == null) {
			if (other.text != null)
				return false;
		} else if (!text.equals(other.text))
			return false;
		return true;
	}

	
	
}
