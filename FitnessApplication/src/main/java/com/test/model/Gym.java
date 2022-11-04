package com.test.model;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.SequenceGenerator;
import javax.persistence.Table;
import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.Size;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;

import lombok.Getter;
import lombok.Setter;

@Entity
@Table(name="gymregister")
@JsonIgnoreProperties(ignoreUnknown=true)
public class Gym implements Serializable{
	private static final long serialVersionUID=1L;
	public static final Logger logger=LoggerFactory.getLogger(Gym.class);
	
	@Id
	@GeneratedValue(generator = "Gym_SEQ", strategy = GenerationType.SEQUENCE)
	@SequenceGenerator(name = "Gym_SEQ", sequenceName = "Gym_SEQ", allocationSize=1)
	@Column(name="gymid", unique=true, nullable=false, precision=10, scale=0)
	@Getter @Setter
	private Integer gymid;
	
	@Size(min=4,max=30)
	@Getter @Setter
	private String fullname;
	
	@Size(min=4,max=30)
	@Getter @Setter
	private String username;
	
	@Size(min=4,max=30)
	@Getter @Setter
	private String password;
	
	
	
	public Gym() {
		
	}
	
	
	public Gym(@Size(min = 4, max = 30) @NotEmpty(message = "enter valid full name") String fullname,
			@Size(min = 4, max = 30) @NotEmpty(message = "enter valid full name") String username,
			@Size(min = 4, max = 30) @NotEmpty(message = "enter valid full name") String password) {
		super();
		this.fullname = fullname;
		this.username = username;
		this.password = password;
	}



	public Integer getGymid() {
		return gymid;
	}

	public void setGymid(Integer gymid) {
		this.gymid = gymid;
	}

	public String getFullname() {
		return fullname;
	}

	public void setFullname(String fullname) {
		this.fullname = fullname;
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
	

}
