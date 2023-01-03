package com.lithan.abccars.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class LoginController {
	
    @RequestMapping(value="login",  method= RequestMethod.GET)
    public String onLogin() {
        return "login";
    }

    @RequestMapping(value="login_error")
    public String onLoginError(Model model) {
        String error_msg = "Login Failed: Your user ID or password is incorrect";
        model.addAttribute("error_msg", error_msg);
        return "login";
    }

}
