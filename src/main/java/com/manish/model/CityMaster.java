package com.manish.model;

import javax.persistence.Id;

import lombok.Data;

@Data

public class CityMaster {
	@Id
	private Integer cityId;

	private String cityName;
	
	private Integer stateId;

}
