package model;

import java.io.Serializable;

public class Customer implements Serializable{

	/**
	 * 
	 */
	private static final long serialVersionUID = -8040335892019148408L;
	private String customerId;
	private String jmeno;
	private String prijmeni;
	private Address adresa;
	private String telCislo;
	private String email;
	
	public Customer(){
		super();
		this.adresa = new Address();
	}
	
	public Customer(String customerId, String jmeno, String prijmeni){
		this();
		this.customerId = customerId;
		this.jmeno = jmeno;
		this.prijmeni = prijmeni;
	}

	public String getCustomerId() {
		return customerId;
	}

	public void setCustomerId(String customerId) {
		this.customerId = customerId;
	}

	public String getJmeno() {
		return jmeno;
	}

	public void setJmeno(String jmeno) {
		this.jmeno = jmeno;
	}

	public String getPrijmeni() {
		return prijmeni;
	}

	public void setPrijmeni(String prijmeni) {
		this.prijmeni = prijmeni;
	}

	public Address getAdresa() {
		return adresa;
	}

	public void setAdresa(Address adresa) {
		this.adresa = adresa;
	}

	public String getTelCislo() {
		return telCislo;
	}

	public void setTelCislo(String telCislo) {
		this.telCislo = telCislo;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getEmail() {
		return email;
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((customerId == null) ? 0 : customerId.hashCode());
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
		Customer other = (Customer) obj;
		if (customerId == null) {
			if (other.customerId != null)
				return false;
		} else if (!customerId.equals(other.customerId))
			return false;
		return true;
	}
	
	
}
