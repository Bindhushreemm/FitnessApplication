package com.test.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.SequenceGenerator;
import javax.persistence.Table;
import javax.validation.constraints.Size;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;

import lombok.Getter;
import lombok.Setter;

@Entity
@Table(name="admin")
@JsonIgnoreProperties(ignoreUnknown=true)
@Getter
@Setter
public class Admin {
	
	private static final long serialVersionUID=1L;
	public static final Logger logger=LoggerFactory.getLogger(Admin.class);
	
	@Id
	@GeneratedValue(generator = "Gym1_SEQ", strategy = GenerationType.SEQUENCE)
	@SequenceGenerator(name = "Gym1_SEQ", sequenceName = "Gym1_SEQ", allocationSize=1)
	@Column(name="adminid", unique=true, nullable=false, precision=10, scale=0)
	private Integer adminid;
	
	@Size(min=4,max=30)
	private String username;
	@Size(min=4,max=40)
	private String password;
	
	public Admin() {
		
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public static long getSerialversionuid() {
		return serialVersionUID;
	}

	public static Logger getLogger() {
		return logger;
	}

	public Integer getAdminid() {
		return adminid;
	}

	public void setAdminid(Integer adminid) {
		this.adminid = adminid;
	}

	public Admin(Integer adminid, @Size(min = 4, max = 30) String username, @Size(min = 4, max = 40) String password) {
		super();
		this.adminid = adminid;
		this.username = username;
		this.password = password;
	}
	
	
}
