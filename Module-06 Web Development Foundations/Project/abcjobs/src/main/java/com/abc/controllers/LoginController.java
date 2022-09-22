package com.abc.controllers;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.abc.model.Constants;
import com.abc.model.User;
import com.abc.model.UserDto;
import com.abc.service.UserService;

@Controller
public class LoginController {

	@Autowired
	public UserService userService;

	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public ModelAndView showLogin(HttpServletRequest request, HttpServletResponse response) {
		ModelAndView mav = new ModelAndView("login");
		mav.addObject("loginDto", new UserDto());

		return mav;
	}

	@RequestMapping(value = "/check", method = RequestMethod.POST)
    public ModelAndView loginUser(@ModelAttribute ("loginDto") UserDto loginDto, HttpServletRequest request) throws Exception {
        HttpSession session = request.getSession();
        User userResponse = userService.loginUser(loginDto);
        if (null == userResponse) {
            ModelAndView model = new ModelAndView();
            UserDto user = new UserDto();
            model.addObject("user", user);
            model.addObject("response", Constants.USER_LOGIN_FAILED);
            model.setViewName("login");
            return model;
        }
        if (userResponse.getRole().equals(Constants.USER_ROLE)) {
            session.setAttribute("userId", userResponse.getUserID());
            session.setAttribute("role", userResponse.getRole());
            session.setAttribute("email", userResponse.getEmail());
            return new ModelAndView("redirect:homepage");
        }  

        else {
            session.setAttribute("userId", userResponse.getUserID());
            session.setAttribute("role", userResponse.getRole());
            session.setAttribute("email", userResponse.getEmail());
            return new ModelAndView("redirect:admin/dashboard");
        }
    }

	@RequestMapping(value = "/logout", method = RequestMethod.GET)
	public ModelAndView logout(HttpServletRequest request) {
        HttpSession session = request.getSession();
		session.invalidate();
		return new ModelAndView("redirect:/");
	}

}
