package com.test.model;

import java.time.LocalDate;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Lob;
import javax.persistence.Table;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;

@Entity
@Table(name="productsbuy")
@JsonIgnoreProperties(ignoreUnknown=true)
public class ProductBuy {
	
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private Integer id;
	
	private String name;
	
	private String description;
	
	private int price;
	
	@Lob
	@Column(columnDefinition="MEDIUMBLOB")
	private String image;
	
	private String username;
	
	private String email;
	
	private String address;
	
	private String phono;
	
	private String deliverystatus;
	
	private String paymentstatus;
	
	private int quantity;
	
	private Integer productid;
	private LocalDate odate;
	private LocalDate ddate;
	
	

	public LocalDate getOdate() {
		return odate;
	}

	public void setOdate(LocalDate odate) {
		this.odate = odate;
	}

	public LocalDate getDdate() {
		return ddate;
	}

	public void setDdate(LocalDate ddate) {
		this.ddate = ddate;
	}

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public int getPrice() {
		return price;
	}

	public void setPrice(int price) {
		this.price = price;
	}

	public String getImage() {
		return image;
	}

	public void setImage(String image) {
		this.image = image;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getPhono() {
		return phono;
	}

	public void setPhono(String phono) {
		this.phono = phono;
	}

	public String getDeliverystatus() {
		return deliverystatus;
	}

	public void setDeliverystatus(String deliverystatus) {
		this.deliverystatus = deliverystatus;
	}

	public String getPaymentstatus() {
		return paymentstatus;
	}

	public void setPaymentstatus(String paymentstatus) {
		this.paymentstatus = paymentstatus;
	}

	public int getQuantity() {
		return quantity;
	}

	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}
	

	public Integer getProductid() {
		return productid;
	}

	public void setProductid(Integer productid) {
		this.productid = productid;
	}

	@Override
	public String toString() {
		return "ProductBuy [id=" + id + ", name=" + name + ", description=" + description + ", price=" + price
				+ ", image=" + image + ", username=" + username + ", email=" + email + ", address=" + address
				+ ", phono=" + phono + ", deliverystatus=" + deliverystatus + ", paymentstatus=" + paymentstatus
				+ ", quantity=" + quantity + ", productid=" + productid + "]";
	}

	
	
	
	
	
	

}
