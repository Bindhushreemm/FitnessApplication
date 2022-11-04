package com.test.dao;

import java.util.List;
import java.util.Map;

import com.test.model.User;
import com.test.model.UserSub;

public interface UserDao {
	public User findById(int id);
    public void remove(int id);
    public void add(User usr);
    public void update(int id,User usr);
    public List<Map<String,Object>> findAll();
    public List<User> findallobjs();
    public void update(String phono,User usr);
	//public void add(UserSub usr);
    public void update(User usr);
}
