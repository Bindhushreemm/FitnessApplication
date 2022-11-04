package com.test.dao;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;

import com.test.model.Gym;



public interface GymDao {
	
	
	public Gym findById(int id);
	public void remove(int id);
	public void add(Gym gym);
	public void update(int id,Gym gym);
	public List<Map<String,Object>> findAll();
	public List<Gym> findallobjects();
	

}
