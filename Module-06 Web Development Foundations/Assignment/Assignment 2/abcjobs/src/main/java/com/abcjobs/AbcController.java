package com.abcjobs;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class AbcController {
	@GetMapping("/register")
	public ModelAndView register() {
		ModelAndView mav = new ModelAndView("register");
		return mav;
	}
	
	@GetMapping("/register-thankyou")
	public ModelAndView registerThankYou() {
		ModelAndView mav = new ModelAndView("register-thankyou");
		return mav;
	}
	
	@GetMapping("/register-confirm")
	public ModelAndView registerConfirm() {
		ModelAndView mav = new ModelAndView("register-confirm");
		return mav;
	}
	
	@GetMapping("/login")
	public ModelAndView login() {
		ModelAndView mav = new ModelAndView("login");
		return mav;
	}
	
	@GetMapping("/forgot-password")
	public ModelAndView forgotPassword() {
		ModelAndView mav = new ModelAndView("forgot-password");
		return mav;
	}
	
	@GetMapping("/profile")
	public ModelAndView profile() {
		ModelAndView mav = new ModelAndView("profile");
		return mav;
	}
	
	@GetMapping("/search")
	public ModelAndView search() {
		ModelAndView mav = new ModelAndView("search");
		return mav;
	}
	
	@GetMapping("/profile-user")
	public ModelAndView profileUser() {
		ModelAndView mav = new ModelAndView("profile-user");
		return mav;
	}
}
