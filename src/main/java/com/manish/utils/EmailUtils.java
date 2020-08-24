package com.manish.utils;

import java.io.BufferedReader;
import java.io.FileReader;
import java.io.IOException;

import javax.mail.internet.MimeMessage;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.stereotype.Component;
import com.manish.model.UserDtls;

@Component
public class EmailUtils {

	@Autowired
	private JavaMailSender javaMailSender;

	public boolean sendUserUnlockAccEmail(UserDtls u) {
		try {
			
			MimeMessage mimeMsg = javaMailSender.createMimeMessage();
			MimeMessageHelper helper = new MimeMessageHelper(mimeMsg);

			helper.setTo(u.getUserEmail());
			helper.setSubject("Unlock your account");
			helper.setText(getUnlockAccEmailBody(u) , true);

			javaMailSender.send(mimeMsg);

			return true;
		} catch (Exception e) {

		}
		return false;
	}

	private String getUnlockAccEmailBody(UserDtls u) throws IOException {
		StringBuffer sb = new StringBuffer("");

		FileReader fr = new FileReader("UNLOCK-ACC-EMAIL-BODY-TEMPLATE.txt");
		BufferedReader br = new BufferedReader(fr);
		String line = br.readLine();

		while (line != null) {
			sb.append(line);
			line = br.readLine();
		}

		br.close();

		// format mail body
		String mailBody = sb.toString();
		mailBody = mailBody.replace("{FNAME}", u.getUserFirstName());
		mailBody = mailBody.replace("{LNAME}", u.getUserLastName());
		mailBody = mailBody.replace("{TEMP-PWD}", u.getUserPassword());
		mailBody = mailBody.replace("{EMAIL}", u.getUserEmail());

		return mailBody;
	}

}
