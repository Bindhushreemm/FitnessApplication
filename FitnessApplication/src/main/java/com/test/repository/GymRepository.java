package com.test.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import org.springframework.transaction.annotation.Transactional;


import com.test.model.Gym;


@Transactional
public interface GymRepository extends JpaRepository<Gym,Integer>{
	@Transactional(timeout = 10)
	List<Gym> findAll() ;
}
