package com.test.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.transaction.annotation.Transactional;

import com.test.model.User;
import com.test.model.UserSub;

@Transactional
public interface UserRepository extends JpaRepository<User,Integer> {
	void delete(User usr);
	
	@Transactional
	<S extends User> S save(User usr);
}
