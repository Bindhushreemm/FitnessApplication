package com.test.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.transaction.annotation.Transactional;

import com.test.model.UserSub;

@Transactional
public interface UserSubRepo extends JpaRepository<UserSub,	Integer> {
	
	
	void delete(UserSub usr);

}
