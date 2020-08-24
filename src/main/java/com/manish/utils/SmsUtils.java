package com.manish.utils;

import org.springframework.stereotype.Component;

import com.twilio.Twilio;
import com.twilio.rest.api.v2010.account.Message;
import com.twilio.type.PhoneNumber;

@Component
public class SmsUtils {
	private final static String ACCOUNT_SID = "...";
	private final static String AUTH_ID = "......";
	static {
		Twilio.init(ACCOUNT_SID, AUTH_ID);
	}

	public void sendUserSmsOtp(String password) {
		 Message.creator(new PhoneNumber("+919931765210"),
					             new PhoneNumber("+1504608"),
					             "Your user app login pwd sent by manish="+password)
				                 .create();
		
	}

}
