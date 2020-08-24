package com.manish.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.manish.model.UnlockUserAccount;
import com.manish.model.UserDtls;
import com.manish.service.UserDtlsService;

@Controller
public class UnlockAccController {
	@Autowired
	private UserDtlsService service;

	@GetMapping("/unlockAcc")
	public String loadUserUnlockForm(@RequestParam("email") String email, Model model) {

		UnlockUserAccount unlockUser = new UnlockUserAccount();
		unlockUser.setEmail(email);

		model.addAttribute("unlockUser", unlockUser);
		return "userUnlockAcc1";
	}

	@PostMapping("/unlockUserAcc")
	public String handleUnlockBtn(@ModelAttribute("unlockUser") UnlockUserAccount acc, Model model) {

		UserDtls user = service.getUserDtlsByUserEmailAndUserPassword(acc.getEmail(), acc.getTempPwd());

		if (user != null) {
			// update password and account status and display success message
			user.setUserAccStatus("UN-LOCKED");
			user.setUserPassword(acc.getNewPwd());
			boolean isUpdated = service.updateUserDtls(user);
			if (isUpdated) {
				return "unlockAccSuccess";
			}
		}
		// display error message
		model.addAttribute("errMsg", "Please enter correct temporary password..");
		return "userUnlockAcc1";
	}

}
