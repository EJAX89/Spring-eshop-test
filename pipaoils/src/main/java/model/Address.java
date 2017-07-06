package model;

import java.io.Serializable;

import javax.validation.constraints.NotNull;

public class Address implements Serializable{
	

	/**
	 * 
	 */
	private static final long serialVersionUID = -6939297295517653816L;
	
	@NotNull
	private int addressId;
	@NotNull
	private String ulice;
	@NotNull
	private String cisloPopisne;
	@NotNull
	private String mesto;
	@NotNull
	private String psc;
	
	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + addressId;
		result = prime * result + ((cisloPopisne == null) ? 0 : cisloPopisne.hashCode());
		result = prime * result + ((mesto == null) ? 0 : mesto.hashCode());
		result = prime * result + ((psc == null) ? 0 : psc.hashCode());
		result = prime * result + ((ulice == null) ? 0 : ulice.hashCode());
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
		Address other = (Address) obj;
		if (addressId != other.addressId)
			return false;
		if (cisloPopisne == null) {
			if (other.cisloPopisne != null)
				return false;
		} else if (!cisloPopisne.equals(other.cisloPopisne))
			return false;
		if (mesto == null) {
			if (other.mesto != null)
				return false;
		} else if (!mesto.equals(other.mesto))
			return false;
		if (psc == null) {
			if (other.psc != null)
				return false;
		} else if (!psc.equals(other.psc))
			return false;
		if (ulice == null) {
			if (other.ulice != null)
				return false;
		} else if (!ulice.equals(other.ulice))
			return false;
		return true;
	}
	
	public int getAddressId() {
		return addressId;
	}
	public void setAddressId(int addressId) {
		this.addressId = addressId;
	}
	public String getUlice() {
		return ulice;
	}
	public void setUlice(String ulice) {
		this.ulice = ulice;
	}
	public String getCisloPopisne() {
		return cisloPopisne;
	}
	public void setCisloPopisne(String cisloPopisne) {
		this.cisloPopisne = cisloPopisne;
	}
	public String getMesto() {
		return mesto;
	}
	public void setMesto(String mesto) {
		this.mesto = mesto;
	}
	public String getPsc() {
		return psc;
	}
	public void setPsc(String psc) {
		this.psc = psc;
	}
	
	
}
