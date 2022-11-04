package com.test.implementation;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.test.dao.AdminDao;
import com.test.model.Admin;
import com.test.repository.AdminRepository;

@Repository
public class AdminDaoImpl implements AdminDao{

	@Autowired 
	private AdminRepository adminrepo;
	
	public AdminDaoImpl() {
		
	}
	private static final Logger logger = LoggerFactory.getLogger(AdminDaoImpl.class);
	
	@Override
	public void add(Admin admin) {
		try {
			adminrepo.save(admin);
			
		}
		catch(Exception e) {
			logger.error(e.getMessage(),e);
		}
		
	}
	
	
}
