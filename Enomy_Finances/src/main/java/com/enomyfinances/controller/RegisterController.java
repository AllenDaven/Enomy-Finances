package com.enomyfinances.controller;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.enomyfinances.model.User;
import com.enomyfinances.service.UserService;

@Controller
public class RegisterController {
	@Autowired
	private UserService userService;
	
	@RequestMapping(value="/register_form")
	public String registerUserForm(Map<String, Object> model) {
		
    	System.out.println("///This is Register Controller//");
    	
    	//User Object Created
		User user = new User();
		
		//model.put(key,object)
		model.put("user", user);

		return "new_user";
	}
    
	//After form submission
	@RequestMapping(value = "/register_process", method = RequestMethod.POST)
	
	public String saveUser(@ModelAttribute("user") User user, Model model) {
		
		System.out.println("/Saved User Information");
		
		//user.setPassword(passwordEncoder.encode(user.getPassword()));

		userService.save(user);
		
		String register_success = "<h5> Registeration Successful! </h5>";
		
		
		model.addAttribute("register_success", register_success);
		
		return "new_user";
	}
}

