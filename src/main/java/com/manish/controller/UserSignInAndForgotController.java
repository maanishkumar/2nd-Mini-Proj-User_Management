package com.manish.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.manish.model.UserDtls;
import com.manish.model.UserForgotPwd;
import com.manish.model.UserSignIn;
import com.manish.service.UserDtlsService;
import com.manish.utils.SmsUtils;

@Controller
public class UserSignInAndForgotController {

	@Autowired
	private SmsUtils smsUtils;

	@Autowired
	private UserDtlsService service;

	@GetMapping(value = { "/loadSignInForm" })
	public String loadUserSignInForm(Model model) {

		UserSignIn userSign = new UserSignIn();
		model.addAttribute("userSignIn", userSign);
		return "userSignIn1";

	}

	@PostMapping("/userSigIn")
	public String handleSignInBtn(@ModelAttribute("userSignIn") UserSignIn userSign, RedirectAttributes attributes) {
		UserDtls userInfo = service.getUserDtlsByUserEmailAndUserPassword(userSign.getEmail(), userSign.getPazzword());

		if (userInfo != null) {
			String accStatus = userInfo.getUserAccStatus();

			if (accStatus == "UN-LOCKED") {
				return "DashboardPage";
			} else if (accStatus == "LOCKED") {
				attributes.addFlashAttribute("errMsg", " Your account is locked ,Please unlock it first.. ");
				return "redirect:/loadSignInForm";
			}
		}
		attributes.addFlashAttribute("msg", " Invalid Credentials...");
		return "redirect:/loadSignInForm";
	}
	
	
/*******************************************************************************/
	
	@GetMapping("/loadforgotPwdForm")
	public String loadForgotPwdForm(Model model) {

		UserForgotPwd forgotPwd = new UserForgotPwd();
		model.addAttribute("UserForgotPwd", forgotPwd);
		return "forgotPwd";

	}


	@PostMapping("/userforgotPwd")
	public String handleForgotSubmitBtn(@ModelAttribute("UserForgotPwd") UserForgotPwd forgotPwd, Model model) {
		UserDtls validUserEmail = service.checkValidUserEmail(forgotPwd.getEmail());

		if (validUserEmail != null) {
			String accStatus = validUserEmail.getUserAccStatus();

			if (accStatus == "UN-LOCKED") {
				String userPassword = validUserEmail.getUserPassword();
				//smsUtils.sendUserSmsOtp(userPassword);

				model.addAttribute("pwd", "password sent to ****210 mobile no");
				return "forgotPwd";
			}

			else if (accStatus == "LOCKED") {
				model.addAttribute("errMessage", "Your Account Is Locked, Please Unlock or contact admin");
				return "forgotPwd";
			}
		}

		model.addAttribute("errMsg", "Incorrect Email-id");
		return "forgotPwd";
	}

}
