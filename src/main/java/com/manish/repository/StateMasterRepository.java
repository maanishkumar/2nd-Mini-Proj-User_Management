package com.manish.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import com.manish.entity.StateMasterEntity;

public interface StateMasterRepository extends JpaRepository<StateMasterEntity, Integer> {

	List<StateMasterEntity> findAllByCountryId(Integer countryId);
	

}