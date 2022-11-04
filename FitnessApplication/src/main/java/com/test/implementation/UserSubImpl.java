package com.test.implementation;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.web.context.request.RequestContextHolder;
import org.springframework.web.context.request.ServletRequestAttributes;

import com.test.dao.UserSubDao;
//import com.test.model.Gym;
import com.test.model.UserSub;
import com.test.repository.UserSubRepo;

@Repository
public class UserSubImpl implements UserSubDao{
	@Autowired
	private UserSubRepo userrepo;
	
	public UserSubImpl() {
		
	}
	private static final Logger logger = LoggerFactory.getLogger(GymDaoImpl.class);


	@Override
	public UserSub findById(String phono) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void remove(String phono) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void add(UserSub usr) {
		userrepo.save(usr);
		
	}

	@Override
	public void update(String phono, UserSub usr) {
		// TODO Auto-generated method stub
		
	}



	@Override
	public List<Map<String, Object>> findAll() {
		//HttpServletRequest request = null;
         HttpServletRequest request=((ServletRequestAttributes)RequestContextHolder.getRequestAttributes()).getRequest();;
		try {
			List<Map<String, Object>> list = new ArrayList<>();
	    	Map<String, Object> map = new HashMap<>();
	    	List<UserSub> result = userrepo.findAll();
	    	
	    	//System.out.println();
	        for (UserSub usr : result) {
	        	map = new HashMap<>();
	        	map.put(usr.getPhono(),usr);
	        	list.add(map);
	        }
	        return list;
		} catch (Exception e) {
			logger.error(e.getMessage(), e);
		}
		return null;
	}

	@Override
	public List<UserSub> displayAll() {
		// TODO Auto-generated method stub
		
		List<UserSub> result = userrepo.findAll();
		for(UserSub sr:result) {
			System.out.println(sr.getFirstname());
		}
		
		return result;
	}

	@Override
	public void delete(Integer id, UserSub usr) {
		// TODO Auto-generated method stub
		userrepo.delete(usr);
		
	}

	@Override
	public void remove(Integer id) {
		 
		    	try {
		    		UserSub usr = new UserSub();
		    		usr.setId(id);
		    		System.out.println("the usersubimpl id"+id);
		    		
		    		
		    		userrepo.delete(usr);
				} catch (Exception e) {
					logger.error(e.getMessage(), e);
				}
		    
		
	}

}
