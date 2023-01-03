package com.lithan.abccars.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.lithan.abccars.entity.Users;
import com.lithan.abccars.service.UserService;

@Controller
public class RegisterController {
	
	@Autowired
	private UserService userService;
	
    @RequestMapping(value="register",  method= RequestMethod.GET)
    public ModelAndView regisPage(@ModelAttribute("user") Users user, ModelAndView mav) {
    	mav.setViewName("register");
    	return mav;
    }
    
    @RequestMapping(value = "register", method = RequestMethod.POST)
    public ModelAndView	newUser(@ModelAttribute("user") Users user, ModelAndView mav) {
    	
    	Users checkdupe = userService.getByUserName(user.getUserName());
    	
    	if (checkdupe != null) {
    		mav.addObject("msg_dupe", "Username already used. Please use another username");
    		mav.setViewName("register");
    		return mav;
    	} else {
    		userService.addUser(user);
    		String name = user.getName();
    		mav.addObject("name", name);
    		mav.setViewName("thank-you");
    		return mav;    		
    	}    	
    }

}
