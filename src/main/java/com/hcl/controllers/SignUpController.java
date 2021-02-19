package com.hcl.controllers;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.view.RedirectView;

import com.hcl.entities.User;
import com.hcl.services.UserService;

@Controller
public class SignUpController {
	
	private Logger logger = LoggerFactory.getLogger(SignUpController.class);
	
	@Autowired
	UserService service;

	@GetMapping("/signup")
	public String signUpPage() {
		return "signup";
	}
	
	@PostMapping("/signup")
	public RedirectView postSignUpPage(User user) {
		logger.info(user.toString());
		service.addUser(user);
		return new RedirectView("display-tasks");
	}
	
}
