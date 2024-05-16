package com.enomyfinances.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.CollectionUtils;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.enomyfinances.model.User;
import com.enomyfinances.service.UserService;

@Controller
public class LoginController {
	
	@Autowired
	private UserService userService;
	
	@RequestMapping(value="/login")
    public String onLogin() {
        return "login";
    }
	
	@RequestMapping(value="/login_error")
    public ModelAndView onLoginError(Model model) {
      
        ModelAndView mav = new ModelAndView("login");
        String error_msg = "Incorrect username or password. Try Again.";
        model.addAttribute("error_string", error_msg);
		return mav;
		
    }
	
	@RequestMapping(value="/users",  method= RequestMethod.GET)
    public String viewUsers(Model model) {
        List<User> users = userService.listAll();
        if(!CollectionUtils.isEmpty(users)) {
            model.addAttribute("userlists", users);
        }
        return "all_user";
    }
}

