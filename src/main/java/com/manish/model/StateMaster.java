package com.manish.model;

import javax.persistence.Id;

import lombok.Data;

@Data
public class StateMaster {
	@Id
	private Integer stateId;

	private Integer countryId;

	private String stateName;

}
