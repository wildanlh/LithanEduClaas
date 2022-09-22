package com.abc.controllers;


import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.abc.model.User;
import com.abc.service.UserService;

@Controller
public class ProfileController {
	
	@Autowired
	public UserService userService;

	@RequestMapping(value = "/profile", method = RequestMethod.GET)
	public ModelAndView seeProfile(HttpServletRequest request) throws Exception{
		ModelAndView model = new ModelAndView();
        HttpSession session = request.getSession(true);
        Integer userId = (int)session.getAttribute("userId");

        User user = userService.findUserById(userId);
		
		if (user == null ) {
			model.addObject("msg", "User Profile Can't be found, Please contact us if this message still showing.");
			model.setViewName("filenotfound");
		} else {
			model.addObject("user", user);
			model.setViewName("profile");
		}
		
		return model;
	}

	@RequestMapping(value = "/updateprofile/{id}", method = RequestMethod.GET)
	public ModelAndView editUser(@PathVariable int id, ModelAndView model, HttpServletRequest request) {
		request.getSession(true);

        User listuser = userService.findUserById(id);
		
		if (listuser == null) {
			model.addObject("msg", "Update Profile Can't be found, Please contact us if this message still showing.");
			model.setViewName("filenotfound");
		} else {
			model.addObject("user", listuser);
			model.setViewName("editprofile");
		}
		
		
		return model;
	}
	
	@RequestMapping(value = "/update", method = RequestMethod.POST)
	public ModelAndView updateUser(
			@RequestParam("firstName") String firstName, @RequestParam("lastName") String lastName,
			@RequestParam("country") String country, @RequestParam("city") String city,
			@RequestParam("phone") String phone, @RequestParam("company") String company, 
			@RequestParam("userID") Integer userID) {

		User user = new User();
		user.setFirstName(firstName);
		user.setLastName(lastName); 
		user.setCountry(country);
		user.setCity(city);
		user.setPhone(phone);
		user.setCompany(company);
		user.setUserID(userID);
	
		userService.updateProfile(user);

		return new ModelAndView("redirect:/profile");
	}

}
