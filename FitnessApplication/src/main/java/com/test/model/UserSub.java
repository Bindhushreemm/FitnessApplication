package com.test.model;

import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.SequenceGenerator;
import javax.persistence.Table;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;

import lombok.Getter;
import lombok.Setter;

@Entity
@Table(name="usersub")
@JsonIgnoreProperties(ignoreUnknown=true)
@Getter
@Setter
public class UserSub {
	private static final long serialVersionUID=1L;
	public static final Logger logger=LoggerFactory.getLogger(UserSub.class);
	
	@Id
	@GeneratedValue(generator = "Gym_SEQ", strategy = GenerationType.SEQUENCE)
	@SequenceGenerator(name = "Gym_SEQ", sequenceName = "Gym_SEQ", allocationSize=1)
	private Integer id;
	
	private String phono;
	
	private String firstname;
	
	private String lastname;
	
	private String email;
	
	private String address;
	
	private Date startdate;
	
	private Date enddate;
	
	private int amount;
	
	private String statusamount;

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getPhono() {
		return phono;
	}

	public void setPhono(String phono) {
		this.phono = phono;
	}

	public String getFirstname() {
		return firstname;
	}

	public void setFirstname(String firstname) {
		this.firstname = firstname;
	}

	public String getLastname() {
		return lastname;
	}

	public void setLastname(String lastname) {
		this.lastname = lastname;
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

	public Date getStartdate() {
		return startdate;
	}

	public void setStartdate(Date startdate) {
		this.startdate = startdate;
	}

	public Date getEnddate() {
		return enddate;
	}

	public void setEnddate(Date enddate) {
		this.enddate = enddate;
	}

	public int getAmount() {
		return amount;
	}

	public void setAmount(int amount) {
		this.amount = amount;
	}

	public String getStatusamount() {
		return statusamount;
	}

	public void setStatusamount(String statusamount) {
		this.statusamount = statusamount;
	}

	public static long getSerialversionuid() {
		return serialVersionUID;
	}

	public static Logger getLogger() {
		return logger;
	}
	
	public UserSub() {
		
	}

	public UserSub(String phono, String firstname, String lastname, String email, String address, Date startdate,
			Date enddate, int amount, String statusamount) {
	
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		this.phono = phono;
		this.firstname = firstname;
		this.lastname = lastname;
		this.email = email;
		this.address = address;
		this.startdate = startdate;
		this.enddate = enddate;
		this.amount = amount;
		this.statusamount = statusamount;
	}
	
	
	
	

}
