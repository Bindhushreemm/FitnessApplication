package com.test.implementation;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.test.dao.UserDao;
import com.test.model.Gym;
import com.test.model.User;
import com.test.model.UserSub;
import com.test.repository.UserRepository;

@Repository
public class UserDaoImpl implements UserDao{

	
	@Autowired
	private UserRepository userrepo;
	
	public UserDaoImpl() {
		
	}
	private static final Logger logger = LoggerFactory.getLogger(UserDaoImpl.class);
	@Override
	public User findById(int id) {
		try{
			return userrepo.findById(id).get();
		}
		catch(Exception e) {
			logger.error(e.getMessage(),e);
		}
		return null;
	}

	@Override
	public void remove(int id) {
		try {
			User usr = new User();
    		usr.setUserid(id);
    		System.out.println("the userimpl id"+id);
    		
    		
    		userrepo.delete(usr);
		}
		catch(Exception e) {
			logger.error(e.getMessage(),e);
		}
		
	}

	@Override
	public void add(User usr) {
		try {
			userrepo.save(usr);
		}
		catch(Exception e) {
			logger.error(e.getMessage(),e);
		}
	}

	@Override
	public void update(int id, User usr) {
		try {
			usr.setUserid(id);
			System.out.println("the userdaoimpl:"+id);
    		
			userrepo.save(usr);
		}
		catch(Exception e) {
			logger.error(e.getMessage(),e);
		}
		
	}
	
	@Override
	public List<User> findallobjs() {
		List<User> objs = userrepo.findAll();
		return objs;
	}
	
	@Override
	public List<Map<String, Object>> findAll() {
		try {
			List<Map<String, Object>> list = new ArrayList<>();
	    	Map<String, Object> map = new HashMap<>();
	    	List<User> result = userrepo.findAll();
	        for (User usr : result) {
	        	map = new HashMap<>();
	        	map.put(usr.getUserid().toString(), usr);
	        	list.add(map);
	        }
	        return list;
		} catch (Exception e) {
			logger.error(e.getMessage(), e);
		}
		return null;
	}

	@Override
	public void update(String phono, User usr) {
		// TODO Auto-generated method stub
		try {
			usr.setPhono(phono);
			userrepo.save(usr);
		}
		catch(Exception e) {
			logger.error(e.getMessage(),e);
		}
		
		
	}

	@Override
	public void update(User usr) {
		// TODO Auto-generated method stub
		try {
			
			userrepo.save(usr);
		}
		catch(Exception e) {
			logger.error(e.getMessage(),e);
		}
		
		
	}

}
