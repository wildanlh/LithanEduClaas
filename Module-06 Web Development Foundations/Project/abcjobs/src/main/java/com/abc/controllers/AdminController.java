package com.abc.controllers;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.abc.model.User;
import com.abc.service.UserService;

@Controller
@RequestMapping("/admin")
public class AdminController {

	@Autowired
	private UserService userService;

	@RequestMapping(value = "/adprofile", method = RequestMethod.GET)
	public ModelAndView seeProfile(HttpServletRequest request) throws Exception{
		ModelAndView model = new ModelAndView();
        HttpSession session = request.getSession(true);
        Integer userId = (int)session.getAttribute("userId");
  
       User user = userService.findUserById(userId);

		if (user == null) {
			model.addObject("msg", "User Profile Can't be found.");
			model.setViewName("filenotfound");
		} else {
			model.addObject("user", user);
			model.setViewName("admin-profile");
		}
		
		return model;
	}
	
	@RequestMapping(value = "/dashboard")
	public ModelAndView showAllUsers(ModelAndView model) {
		List<User> listuser = userService.showAllUsers();
		model.addObject("listuser", listuser);
		model.setViewName("admin-dashboard");
		
		return model;
	}

	@RequestMapping(value = "/adduser", method = RequestMethod.GET)
	public ModelAndView addUser() {
		ModelAndView mav = new ModelAndView("admin-add");
		mav.addObject("user", new User());
		
		return mav;
	}

	@RequestMapping(value = "/edituser/{id}", method = RequestMethod.GET)
	public ModelAndView editUser(@PathVariable int id, ModelAndView model) {
		
		User user = userService.findUserById(id);

		if (user == null) {
			model.addObject("msg", "Edit User data Can't be found.");
			model.setViewName("filenotfound");
		} else {
			model.addObject("user", user);
			model.setViewName("admin-edit");
		}
		
		return model;
	}
	
	@RequestMapping(value = "/edit", method = RequestMethod.POST)
	public ModelAndView updateUser(
			@RequestParam("firstName") String firstName, @RequestParam("lastName") String lastName,
			@RequestParam("email") String email, @RequestParam("pass") String pass,
			@RequestParam("country") String country, @RequestParam("city") String city,
			@RequestParam("phone") String phone, @RequestParam("company") String company, 
			@RequestParam("userID") Integer userID) {

		User user = new User();
		user.setFirstName(firstName);
		user.setLastName(lastName); 
		user.setEmail(email);
		user.setPass(pass);
		user.setCountry(country);
		user.setCity(city);
		user.setPhone(phone);
		user.setCompany(company);
		user.setUserID(userID);
	
		userService.updateUser(user);

		return new ModelAndView("redirect:/admin/dashboard");
			
	}

	@RequestMapping(value = "/save", method = RequestMethod.POST)
	public ModelAndView saveChange(HttpServletRequest request, HttpServletResponse response, 
			@ModelAttribute("user") User user) {

		userService.register(user);

		return new ModelAndView("redirect:/admin/dashboard");
	}
	
	@RequestMapping(value = "/deleteuser/{id}", method = RequestMethod.GET)
	@Transactional
	public ModelAndView deleteUser(@PathVariable("id") int id) {
		userService.deleteUser(id);
		
		return new ModelAndView("redirect:/admin/dashboard");
	}

}
