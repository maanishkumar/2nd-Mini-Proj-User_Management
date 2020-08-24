package com.manish.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import com.manish.entity.CityMasterEntity;

public interface CityMasterRepository extends JpaRepository<CityMasterEntity, Integer> {

	List<CityMasterEntity> findAllByStateId(Integer stateId);

	

	
	
}
