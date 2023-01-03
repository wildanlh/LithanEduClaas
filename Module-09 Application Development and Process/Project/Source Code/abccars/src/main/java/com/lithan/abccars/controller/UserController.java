package com.lithan.abccars.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
/*import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;*/
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.lithan.abccars.entity.Cars;
import com.lithan.abccars.entity.Users;
import com.lithan.abccars.service.CarService;
import com.lithan.abccars.service.UserService;

@Controller
public class UserController {
	
	@Autowired
	private UserService userService;
	
	@Autowired
	private CarService carService;
	
	@RequestMapping(value = "view_user", method = RequestMethod.GET)
	public ModelAndView viewProfile(@RequestParam long id, ModelAndView mav) {
		
		Users user = userService.getUserById(id);
		List<Cars> cars = carService.listCarsUser(user);
		mav.addObject("userinfo", user);
		mav.addObject("cars", cars);
		mav.setViewName("detail-user");
		
		return mav;
	}
	
	@RequestMapping(value = "users", method = RequestMethod.GET)
	public ModelAndView listAllUser(ModelAndView mav) {
		List<Users> listusers = userService.listAllUsers();
		mav.addObject("listusers", listusers);
		mav.setViewName("list-users");
		return mav;
	}
	
	@RequestMapping(value = "edit_user", method = RequestMethod.GET)
	public ModelAndView editUserForm(@RequestParam long id, ModelAndView mav) {
		Users user = userService.getUserById(id);
		mav.addObject("user", user);
		mav.setViewName("edit-user");
		return mav;
	}
	
	@RequestMapping(value = "edit_user", method = RequestMethod.POST)
	public ModelAndView saveEditUser(@ModelAttribute("user") Users user, ModelAndView mav) {
		userService.editUser(user);
		mav.setViewName("redirect:users");
		return mav;
	}
	
	@RequestMapping(value = "delete_user")
	public ModelAndView deleteUser(@RequestParam long id, ModelAndView mav) {
		userService.deleteUser(id);
		mav.setViewName("redirect:users");
		return mav;
	}
	
	@RequestMapping(value = "promote_user")
	public ModelAndView promoteUser(@RequestParam long id, ModelAndView mav) {
		userService.becomeAdmin(id);
		mav.setViewName("redirect:users");
		return mav;
	}

}
