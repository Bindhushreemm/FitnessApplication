package com.test.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.test.dao.UserSubDao;
import com.test.model.UserSub;

@Service
@Transactional
public class UserSubService {

		@Autowired
		private UserSubDao usersub;
		
		public UserSubService() {
			
		}
		public void add(UserSub usr) {
			if(usr==null) {
				throw new IllegalArgumentException("The passed object cannot be null.");
			}
			System.out.print("jhjhb,m");
			usersub.add(usr);
		}
		
		public List<UserSub> getall(){
			List<UserSub> result=usersub.displayAll();
			return result;
		}
		public void remove(Integer id) {
			// TODO Auto-generated method stubsout
			System.out.println("the usersub id id:"+id);
			usersub.remove(id);
			
		}
		
		
}
