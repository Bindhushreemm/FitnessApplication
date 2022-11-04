package com.test.dao;

import java.util.List;
import java.util.Map;

import com.test.model.UserSub;

public interface UserSubDao {
	
	public UserSub findById(String phono);
	public void remove(String phono);
	public void add(UserSub usr);
	public void update(String phono,UserSub usr);
	public List<Map<String,Object>> findAll();
	public List<UserSub> displayAll();
	public void delete(Integer id, UserSub usr);
	public void remove(Integer id);
	

}
