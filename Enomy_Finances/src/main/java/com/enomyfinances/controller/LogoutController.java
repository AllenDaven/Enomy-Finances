package com.enomyfinances.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.SessionAttribute;
import org.springframework.web.bind.annotation.SessionAttributes;

@Controller
@SessionAttributes("loggedInUser")
public class LogoutController {

    @GetMapping("/logout")
    public String logout(@SessionAttribute("loggedInUser") Object loggedInUser) {
        // Clear the session attribute to logout the user
        // Optionally, you can perform additional logout logic here, such as invalidating the session
        
        return "redirect:/login"; // Redirect to the login page after logout
    }
}
