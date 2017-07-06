package model;

import java.io.Serializable;
import java.math.BigDecimal;
import java.sql.Blob;
import java.util.ArrayList;
import java.util.List;

import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Lob;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.validation.constraints.Min;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Pattern;
import javax.xml.bind.annotation.XmlRootElement;
import javax.xml.bind.annotation.XmlTransient;

import org.codehaus.jackson.annotate.JsonIgnore;
import org.springframework.web.multipart.MultipartFile;


@Entity
@Table(name = "produkty")
@XmlRootElement 
public class Product implements Serializable {
	
	
	/**
	 * 
	 */
	private static final long serialVersionUID = 3380727609482560042L;
	
	
	@Id
	@GeneratedValue
	@Column(name = "id")
	private String id;
	@Column(name = "nazev")
	private String nazev;
	@Column(name = "categoryid")
	@JsonIgnore
	@NotNull(message= "Kategorie nesmí být prázdná")
	private String kategorie;
	
	@Min(value=0, message="Cena nesmí být nulová")
	@NotNull(message= "Cena nesmí být prázdná")
	@Column(name = "cena")
	private BigDecimal cena;

	@Column(name = "soubor")
	@JsonIgnore
	@Lob
	private Blob soubor;
	
	@Column(name = "popis")
	private String popis;
	@Column(name = "pocet")
	private Integer pocet;
	@Column(name = "aktivni")
	private boolean aktivni;

	@Column(name ="popisdlouhy")
	private String popisDlouhy;
	

	
	public Product() {
		super();
	}

	public Product(String id, String nazev, BigDecimal cena) {
		
		this.nazev = nazev;
		this.cena = cena;
		
	
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getNazev() {
		return nazev;
	}

	public void setNazev(String nazev) {
		this.nazev = nazev;
	}

	public BigDecimal getCena() {
		return cena;
	}

	public void setCena(BigDecimal cena) {
		this.cena = cena;
	}

	public String getPopis() {
		return popis;
	}

	public void setPopis(String popis) {
		this.popis = popis;
	}

	public Integer getpocet() {
		return pocet;
	}

	public void setpocet(Integer pocet) {
		this.pocet = pocet;
	}

	public String getKategorie() {
		return kategorie;
	}

	public void setKategorie(String kategorie) {
		this.kategorie = kategorie;
	}

	

	public boolean isAktivni() {
		return aktivni;
	}

	public void setAktivni(boolean aktivni) {
		this.aktivni = aktivni;
	}

	@XmlTransient  
	public Blob getSoubor() {
		return soubor;
	}

	public void setSoubor(Blob soubor) {
		this.soubor = soubor;
	}

		
	

	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		Product other = (Product) obj;
		if (id == null) {
			if (other.id != null)
				return false;
		} else if (!id.equals(other.id))
			return false;
		return true;
	}



	public String getPopisDlouhy() {
		return popisDlouhy;
	}

	public void setPopisDlouhy(String popisDlouhy) {
		this.popisDlouhy = popisDlouhy;
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((id == null) ? 0 : id.hashCode());
		return result;
	}

	@Override
	public String toString() {
		return "Product [id=" + id + ", name=" + nazev + "]";
	}


}
