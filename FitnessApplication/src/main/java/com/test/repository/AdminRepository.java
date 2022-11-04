package com.test.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.transaction.annotation.Transactional;

import com.test.model.Admin;

@Transactional
public interface AdminRepository extends JpaRepository<Admin,Integer> {

}
