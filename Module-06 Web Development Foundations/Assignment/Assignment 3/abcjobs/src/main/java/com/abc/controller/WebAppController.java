package com.abc.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.abc.service.LoginService;

@Controller
public class WebAppController {
	
	@Autowired
	LoginService loginService;
	
	@RequestMapping("/")
	public ModelAndView home() {
		ModelAndView mv = new ModelAndView("home");
		return mv;
	}
	
	@RequestMapping("/view-profile")
	public ModelAndView viewProfile() {
		ModelAndView mv = new ModelAndView("view-profile");
		return mv;
	}
	
	@RequestMapping("/search-user")
	public ModelAndView searchUser() {
		ModelAndView mv = new ModelAndView("search-user");
		return mv;
	}
		
	@RequestMapping("/forgot-password")
	public ModelAndView forgotPassword() {
		ModelAndView mv = new ModelAndView("forgot-password");
		return mv;
	}
	
	@RequestMapping("/forgot-password-confirmation")
	public ModelAndView forgotPasswordConfirmation() {
		ModelAndView mv = new ModelAndView("forgot-password-confirmation");
		return mv;
	}
	
}
