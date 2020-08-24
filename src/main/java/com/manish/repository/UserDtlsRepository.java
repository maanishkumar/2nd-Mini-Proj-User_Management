package com.manish.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.manish.entity.UserDtlsEntity;
import com.manish.model.UserDtls;

public interface UserDtlsRepository extends JpaRepository<UserDtlsEntity,Integer> {

	public UserDtlsEntity findByUserEmail(String userEmail);

	public UserDtlsEntity findByUserEmailAndUserPassword(String userEmail,String userPassword);
}   
