package com.test.services;

import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.test.dao.GymDao;

import com.test.model.Gym;

@Service
@Transactional
public class GymServices {
 
	@Autowired
	private GymDao gymdao;
	
	public GymServices() {
		
	}
	
	 public void add(Gym gym) {
	        if (gym == null) {
	            throw new IllegalArgumentException("The passed object cannot be null.");
	        }
	        gymdao.add(gym);
	    }
	 
	public List<Map<String, Object>> findall() {
		
		List<Map<String, Object>> result = gymdao.findAll();
		if(result.size() > 0) {
			return result;
		}
		return null;
	}
	
	public boolean logintest(Gym gym) {
		
		List<Gym> result1 = gymdao.findallobjects();
		
		for (Gym gym1 : result1) {
        	if(gym1.getUsername().equals(gym.getUsername())) {
        		if(gym1.getPassword().equals(gym.getPassword())) {
        			return true;
        		}
        		return false;
        	}
        }
		
		return false;
	}

	public List<Gym> findobj() {
		// TODO Auto-generated method stub
		List<Gym> result=gymdao.findallobjects();
		return result;
		
	}
}
