package com.hcl.controllers;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.view.RedirectView;

import com.hcl.entities.User;
import com.hcl.services.UserService;

@Controller
public class SignUpController {
	
	private Logger logger = LoggerFactory.getLogger(SignUpController.class);
	
	@Autowired
	UserService service;

	@GetMapping("/signup")
	public String signUpPage(ModelMap model) {
		return "signup";
	}
	
	@PostMapping("/signup")
	public ModelAndView postSignUpPage(ModelMap model, User user) {
		logger.info(user.toString());
		if(user != null && user.getUsername() != "" && user.getPassword() != "" && user.getEmail() != "") {
			
			service.addUser(user);
			return new ModelAndView("redirect:/display-tasks", model);
		}else {
			model.put("error", "Fill in all details");
			return new ModelAndView("signup", model);
		}
	}
	
}
