package com.manish.service;

import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.manish.entity.CityMasterEntity;
import com.manish.entity.CountryMasterEntity;
import com.manish.entity.StateMasterEntity;
import com.manish.entity.UserDtlsEntity;
import com.manish.model.UserDtls;
import com.manish.repository.CityMasterRepository;
import com.manish.repository.CountryMasterRepository;
import com.manish.repository.StateMasterRepository;
import com.manish.repository.UserDtlsRepository;
import com.manish.utils.EmailUtils;
import com.manish.utils.PwdUtils;

@Service
public class UserDtlsServiceImpl implements UserDtlsService {

	@Autowired
	private UserDtlsRepository repository;

	@Autowired
	private CountryMasterRepository countryRepo;

	@Autowired
	private StateMasterRepository stateRepo;

	@Autowired
	private CityMasterRepository cityRepo;

	@Autowired
	private EmailUtils utils;

	@Override
	public boolean saveUserDtls(UserDtls u) {
		String pwd = PwdUtils.randomAlphaNumeric(6);
		u.setUserPassword(pwd);
		u.setUserAccStatus("LOCKED");

		UserDtlsEntity entity = new UserDtlsEntity();
		BeanUtils.copyProperties(u, entity);

		UserDtlsEntity savedEntity = repository.save(entity);

		// email
		if (savedEntity.getUserId() != null) {
			utils.sendUserUnlockAccEmail(u);
			return true;
		}
		return false;
	}

	@Override
	public String getByUserEmail(String userEmail) {
		UserDtlsEntity entity = repository.findByUserEmail(userEmail);
		if (entity != null) {
			return "duplicate";
		}
		return "unique";
	}

	@Override
	public Map<Integer, String> getAllCountries() {
		Map<Integer, String> countriesMap = new LinkedHashMap<Integer, String>();
		List<CountryMasterEntity> countriesList = countryRepo.findAll();

		countriesList.forEach(countryEntity -> {
			countriesMap.put(countryEntity.getCountryId(), countryEntity.getCountryName());
		});
		return countriesMap;
	}

	@Override
	public Map<Integer, String> getStatesByCountryId(Integer countryId) {

		Map<Integer, String> statesMap = new LinkedHashMap<Integer, String>();
		List<StateMasterEntity> statesList = stateRepo.findAllByCountryId(countryId);

		statesList.forEach(state -> {
			statesMap.put(state.getStateId(), state.getStateName());
		});

		return statesMap;
	}

	@Override
	public Map<Integer, String> getCitiesByStateId(Integer stateId) {

		Map<Integer, String> citiesMap = new LinkedHashMap<Integer, String>();
		List<CityMasterEntity> citiesList = cityRepo.findAllByStateId(stateId);

		citiesList.forEach(city -> {
			citiesMap.put(city.getCityId(), city.getCityName());
		});

		return citiesMap;

	}

	@Override
	public UserDtls getUserDtlsByUserEmailAndUserPassword(String userEmail, String userPassword) {
		UserDtlsEntity entity = repository.findByUserEmailAndUserPassword(userEmail, userPassword);
		UserDtls user = null;
		if (entity != null) {
			user = new UserDtls();
			BeanUtils.copyProperties(entity, user);
		}
		return user;
	}

	@Override
	public boolean updateUserDtls(UserDtls u) {
		UserDtlsEntity entity = new UserDtlsEntity();
		BeanUtils.copyProperties(u, entity);
		UserDtlsEntity savedEntity = repository.save(entity);
		return savedEntity!=null;
	}

	@Override
	public UserDtls checkValidUserEmail(String userEmail) {
		UserDtlsEntity entity = repository.findByUserEmail(userEmail);
		UserDtls user = null;
		if (entity != null) {
			user = new UserDtls();
			BeanUtils.copyProperties(entity, user);
		}
		return user;
	}

}
