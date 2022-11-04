package com.test.services;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.test.dao.AdminDao;
import com.test.dao.UserSubDao;
import com.test.model.Admin;
import com.test.model.UserSub;

@Service
@Transactional
public class AdminService {
	@Autowired
	private AdminDao admindao;
	@Autowired
	private UserSubDao usd;
	
	public AdminService() {
		
	}
	
	public void add(Admin admin) {
		if(admin==null) {
			throw new IllegalArgumentException("null object passed");
			
		}
		admindao.add(admin);
	}

	public void delete(Integer id, UserSub usr) {
		// TODO Auto-generated method stub
		usd.delete(id,usr);
		
		
	}

	public void remove(Integer id) {
		// TODO Auto-generated method stub
		usd.remove(id);
		
	}
	
}
