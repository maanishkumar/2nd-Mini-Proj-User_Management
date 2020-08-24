package com.manish.controller;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.manish.model.UserDtls;
import com.manish.service.UserDtlsService;

@Controller
public class UserDtlsController {
	@Autowired
	private UserDtlsService service;
	
	@GetMapping(value= {"/","/home"})
	public String fitIndiaHomePage() {
		return "home";
	}
	
	@GetMapping(value = { "/loadSignUpForm" })
	public String loadUserForm(Model model) {
		UserDtls u = new UserDtls();
		model.addAttribute("user", u);
		Map<Integer, String> countryMap = service.getAllCountries();
		model.addAttribute("countryMap", countryMap);
		return "userInfo1";
	}

	@PostMapping("/register")
	public String handleRegisterBtn(@ModelAttribute("user") UserDtls u, RedirectAttributes attributes) {
		boolean isSaved = service.saveUserDtls(u);
		if (isSaved) {
			attributes.addFlashAttribute("msg",
					"Your registration is almost complete ,please check ur mail to unlock it...");
		} else {
			attributes.addFlashAttribute("errMsg", "Failed to create account..!");
		}
		return "redirect:/loadSignUpForm";
	}

	/**********************************************************************************/

	@GetMapping("/validateEmail")
	@ResponseBody
	public String validateEmail(@RequestParam("email") String userEmail) {
		String emailStatus = service.getByUserEmail(userEmail);
		return emailStatus;
	}

	@GetMapping("/getStates")
	@ResponseBody
	public Map<Integer, String> getStatesByCountryId(@RequestParam("cid") Integer countryId) {

		return service.getStatesByCountryId(countryId);
	}

	@GetMapping("/getCities")
	@ResponseBody
	public Map<Integer, String> getCitiesByStateId(@RequestParam("sid") Integer stateId) {

		return service.getCitiesByStateId(stateId);
	}

}
