package com.abc.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.abc.bean.ProfileBean;
import com.abc.service.LoginService;
import com.abc.service.ProfileService;

@Controller
public class ProfileController {

	@Autowired
	ProfileService updateService;
	
	@Autowired
	LoginService loginService;
	
	@RequestMapping("/edit-profile")
	public ModelAndView editProfile(HttpSession session) {
		ModelAndView mv = new ModelAndView("edit-profile");
		ProfileBean profile = loginService.getCurrentUser(session);
		mv.addObject("profile", profile);
		return mv;
	}
	
	@RequestMapping(value = "/save-edit", method = RequestMethod.POST)
	public String saveEditProfile(@ModelAttribute("profile") ProfileBean profile,HttpSession session) {
		ProfileBean editedProfile = updateService.saveEdit(profile);

		session.setAttribute("profile", editedProfile);
		return "redirect:/profile";
	}
}
