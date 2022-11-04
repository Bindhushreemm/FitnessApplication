package com.test.implementation;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.test.dao.GymDao;

import com.test.model.Gym;
import com.test.repository.GymRepository;
@Repository
public class GymDaoImpl implements GymDao {

	
	@Autowired
	private GymRepository gymrepo;
	
	public GymDaoImpl() {
		
	}
	private static final Logger logger = LoggerFactory.getLogger(GymDaoImpl.class);
	@Override
	public Gym findById(int id) {
		
		try {
			gymrepo.findById(id);
		}
		catch(Exception e){
			logger.error(e.getMessage(), e);
		}
		
		return null;
	}

	@Override
	public void remove(int id) {
		try {
			Gym ob=new Gym();
			ob.setGymid(id);
			gymrepo.deleteById(id);
		}
		catch(Exception e) {
			logger.error(e.getMessage(),e);
		}
		
	}

	@Override
	public void add(Gym gym) {
		try {
			gymrepo.save(gym);
			
			
		}
		catch(Exception e) {
			logger.error(e.getMessage(),e);
		}
		
	}

	@Override
	public void update(int id, Gym gym) {
		try {
			Gym ob=new Gym();
			ob.setGymid(id);
			gymrepo.save(gym);
			
		}
		catch(Exception e) {
			logger.error(e.getMessage(),e);
		}
		
	}

	@Override
	public List<Map<String, Object>> findAll() {
		
		try {
			List<Map<String, Object>> list = new ArrayList<>();
	    	Map<String, Object> map = new HashMap<>();
	    	List<Gym> result = gymrepo.findAll();
	        for (Gym gym : result) {
	        	map = new HashMap<>();
	        	map.put(gym.getGymid().toString(), gym);
	        	list.add(map);
	        }
	        return list;
		} catch (Exception e) {
			logger.error(e.getMessage(), e);
		}
		return null;
	}

	public List<Gym> findallobjects(){
		List<Gym> result = gymrepo.findAll();
		return result;
	}

	
	


}
