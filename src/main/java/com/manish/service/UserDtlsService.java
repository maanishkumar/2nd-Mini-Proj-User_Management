package com.manish.service;

import java.util.Map;

import org.springframework.stereotype.Service;

import com.manish.model.UserDtls;

@Service
public interface UserDtlsService {

	boolean saveUserDtls(UserDtls u);

	public String getByUserEmail(String userEmail);

	public Map<Integer, String> getAllCountries();

	public Map<Integer, String> getStatesByCountryId(Integer countryId);

	public Map<Integer, String> getCitiesByStateId(Integer stateId);

	public UserDtls getUserDtlsByUserEmailAndUserPassword(String userEmail,String userPassword);
	
	boolean  updateUserDtls(UserDtls user);
	
	public UserDtls checkValidUserEmail(String userEmail);
}
