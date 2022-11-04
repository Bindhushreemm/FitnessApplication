package com.test.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.test.dao.UserDao;

import com.test.model.User;
import com.test.model.UserSub;



@Service
@Transactional
public class UserServices {
	@Autowired
	private UserDao userdao;
	
	public UserServices() {
		
	}
	
	 public void add(User usr) {
	        if (usr == null) {
	            throw new IllegalArgumentException("The passed object cannot be null.");
	        }
	        userdao.add(usr);
	    }
	 
	 public User getone(String phonenumber) {
			List<User> res = userdao.findallobjs();
			for(User obj : res) {
				if(obj.getPhono().equals(phonenumber)) {
					return obj;
				}
			}
			
			return null;
			
		}
	 
	 public void update(Integer id, User usr) {
	        if (usr == null) {
	            throw new IllegalArgumentException("The passed object cannot be null.");
	        }
	        System.out.println("the user updaTION ?:"+id);
	        userdao.update(id, usr);
	    }
	public void updateusr(User usr) {
		if (usr == null) {
            throw new IllegalArgumentException("The passed object cannot be null.");
        }
        userdao.update(usr);
		
	}

	public void remove(Integer id) {
		// TODO Auto-generated method stub
		System.out.println("the user id id:"+id);
		userdao.remove(id);
	}

	public User getallinfo(Integer id1) {
		// TODO Auto-generated method stub
		List<User> res = userdao.findallobjs();
		for(User obj : res) {
			
			if(obj.getUserid()==id1) {
				System.out.println("the id is after comparison in user services:"+id1+""+obj.getUserid());
				return obj;
			}
		}
		
		return null;
		
	}

}
