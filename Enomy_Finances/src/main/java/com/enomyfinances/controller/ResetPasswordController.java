package com.enomyfinances.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class ResetPasswordController {

    @GetMapping("/reset-password")
    public String showResetPasswordForm() {
        return "reset_password_form"; // assuming you have a JSP file named reset_password_form.jsp
    }

    // Add additional methods for handling password reset requests, processing form submissions, etc.
}
