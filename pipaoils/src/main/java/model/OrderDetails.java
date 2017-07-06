package model;

import java.io.Serializable;
import java.util.Date;

import javax.validation.constraints.NotNull;

import org.springframework.format.annotation.DateTimeFormat;

public class OrderDetails implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = -6140007165266404592L;
	
	@NotNull
	private String jmeno;
	@NotNull
	private String prijmeni;
	@DateTimeFormat(pattern = "dd/MM/yyyy")
	private Date orderDate;
	@NotNull
	private Address orderAddress;
	
	public OrderDetails(){
		this.orderAddress = new Address();
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

	public Date getOrderDate() {
		return orderDate;
	}

	public void setOrderDate(Date orderDate) {
		this.orderDate = orderDate;
	}

	public Address getOrderAddress() {
		return orderAddress;
	}

	public void setOrderAddress(Address orderAddress) {
		this.orderAddress = orderAddress;
	}
	
	
}
