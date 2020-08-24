package com.manish.model;

import java.util.Date;

import lombok.Data;

@Data
public class UserDtls {

	private Integer userId;
	
	private String userFirstName;
	private String userLastName;
	private String userEmail;
	private Long userPhno;
	private String userDob;
	private String userGender;
	private Integer userCountry;
	private Integer userState;
	private Integer userCity;
	
	//column need to maintain
	private String userPassword;
	private String userAccStatus;
	private Date createDate;
	private Date updateDate;
	
	
	

}
