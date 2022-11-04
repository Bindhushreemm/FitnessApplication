package com.test.model;

import java.io.Serializable;
import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;
import javax.persistence.SequenceGenerator;
import javax.persistence.Table;
import javax.validation.constraints.Size;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.format.annotation.DateTimeFormat;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;

import lombok.Getter;
import lombok.Setter;

@Entity
@Table(name="gymuser")
@JsonIgnoreProperties(ignoreUnknown=true)
@Getter
@Setter
public class User implements Serializable{
	private static final long serialVersionUID=1L;
    public static final Logger logger=LoggerFactory.getLogger(User.class);
   @Id
   @GeneratedValue(generator = "Gym_SEQ", strategy = GenerationType.SEQUENCE)
	@SequenceGenerator(name = "Gym_SEQ", sequenceName = "Gym_SEQ", allocationSize=1)
	@Column(name="userid", unique=true, nullable=false, precision=10, scale=0)
    private Integer userid;
    
    @Size(min=4,max=30)
    private String firstname;
    
    @Size(min=1,max=30)
    private String lastname;
    
    
    @Size(max=10)
    private String phono;
    
    @Size(min=4,max=30)
    private String email;
    
    @Size(min=4,max=200)
    private String address;
    
    @Size(min=4,max=30)
    private String gender;
    
    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private Date startdate;

	
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

	public String getPhono() {
		return phono;
	}

	public void setPhono(String phono) {
		this.phono = phono;
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

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public Date getStartdate() {
		return startdate;
	}

	public void setStartdate(Date startdate) {
		this.startdate = startdate;
	}

	public static long getSerialversionuid() {
		return serialVersionUID;
	}

	public static Logger getLogger() {
		return logger;
	}
    
	public User() {
		
	}

	public Integer getUserid() {
		return userid;
	}

	public void setUserid(Integer userid) {
		this.userid = userid;
	}

	public User( @Size(min = 4, max = 30) String firstname, @Size(min = 1, max = 30) String lastname,
			@Size(max = 10) String phono, @Size(min = 4, max = 30) String email,
			@Size(min = 4, max = 200) String address, @Size(min = 4, max = 30) String gender, Date startdate) {
		
		
		this.firstname = firstname;
		this.lastname = lastname;
		this.phono = phono;
		this.email = email;
		this.address = address;
		this.gender = gender;
		this.startdate = startdate;
	}
	
	
}
