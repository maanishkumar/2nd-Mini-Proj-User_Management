package com.manish.entity;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

import org.hibernate.annotations.CreationTimestamp;

import lombok.Data;

@Data
@Entity
//@Table(name = "User_DTLS")
public class UserDtlsEntity {

	@Id
	@GeneratedValue
	//@Column(name = "USER_ID")
	private Integer userId;

	//@Column(name = "USER_FIRSTNAME")
	private String userFirstName;

	//@Column(name = "USER_LASTNAME")
	private String userLastName;

	//@Column(name = "USER_EMAIL")
	private String userEmail;

	//@Column(name = "USER_PHNO")
	private Long userPhno;

	//@Column(name = "USER_DOB")
	private String userDob;

	//@Column(name = "GENDER")
	private String userGender;

	//@Column(name = "COUNTRY")
	private Integer userCountry;

	//@Column(name = "STATE")
	private Integer userState;

	//@Column(name = "CITY")
	private Integer userCity;

	// column need to maintain
	//@Column(name = "USER_PWD")
	private String userPassword;

	//@Column(name = "USER_A/C_STATUS")
	private String userAccStatus;

	@CreationTimestamp
	@Temporal(TemporalType.DATE)
	//@Column(name = "CREATE_DATE", updatable = false)
	private Date createDate;

	@CreationTimestamp
	@Temporal(TemporalType.DATE)
	//@Column(name = "UPDATE_DATE", insertable = false)
	private Date updateDate;

}
