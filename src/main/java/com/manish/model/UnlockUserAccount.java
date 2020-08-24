package com.manish.model;

import lombok.Data;

@Data
public class UnlockUserAccount {

	private String email;
	private String tempPwd;
	private String newPwd;
	private String confirmPwd;

}

