package com.hcl.services;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;

import com.hcl.entities.User;
import com.hcl.entities.UserPrincipal;
import com.hcl.repositories.UserRepository;

@Service
public class UserService implements UserDetailsService{
	
	private Logger logger = LoggerFactory.getLogger(UserService.class);
	
	@Autowired
	PasswordEncoder passwordEncoder;
	
	@Autowired
	UserRepository userRepo;
	
	public User addUser(User user) {
		user.setPassword(passwordEncoder.encode(user.getPassword()));
		logger.info(user.toString());
		return userRepo.save(user);
	}
	
	public User getUserByName(String name) {
		return userRepo.findUserByUsername(name);
	}

	@Override
	public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
		logger.info("inside loadUserByUsername");
		User user = userRepo.findUserByUsername(username);
		logger.info(user.toString());
		return new UserPrincipal(user);
	}
	
}
