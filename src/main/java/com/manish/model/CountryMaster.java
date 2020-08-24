package com.manish.model;

import javax.persistence.Id;

import lombok.Data;

@Data

public class CountryMaster {
	@Id
	private Integer countryId;

	private Integer countryCode;

	private String countryName;
}
