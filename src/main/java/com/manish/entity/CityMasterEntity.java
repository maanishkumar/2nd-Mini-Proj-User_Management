package com.manish.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

import lombok.Data;

@Data
@Entity
@Table(name = "CITY_MASTER")
public class CityMasterEntity {

	@Id
	@GeneratedValue
	@Column(name = "CITY_ID")
	private Integer cityId;
	

	@Column(name = "CITY_NAME")
	private String cityName;


	@Column(name = "STATE_ID")
	private Integer stateId;

}
