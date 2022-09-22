package com.abc.controllers;

import java.io.UnsupportedEncodingException;

import javax.mail.MessagingException;
import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.abc.model.UserDto;
import com.abc.service.AppendURL;
import com.abc.service.EmailService;
import com.abc.service.RandomString;
import com.abc.service.UserService;


@Controller
public class ForgotPasswordController {
	
	@Autowired
	public UserService userService;
	
	@Autowired
	private EmailService emailService;
	
	@RequestMapping(value = "/forgotPassword", method = RequestMethod.GET)
	public String showForgotPassword() {
		
		return "forgot-password";
	}

	@RequestMapping(value = "/sendEmail", method = RequestMethod.POST)
	public String forgotPassword( Model model, HttpServletRequest request) {
		
	    String email = request.getParameter("email");
	    String token = RandomString.getAlphaNumericString(10);
	    
	    System.out.println(email);
	    System.out.println(token);
	    
	    try {
	    	
	    	UserDto userDto = userService.findByEmailId(email);
	    	
	    	if (userDto != null) {
	    		userDto.setResetPasswordToken(token);
	    		userDto.setEmailId(email);
	    		userService.updateResetTokenPassword(userDto);
	    		String resetPasswordLink = AppendURL.getSiteURL(request) + "/resetPassword?token=" + token;

	    		emailService.sendEmailLinkResetPassword(email, resetPasswordLink);
	    		
	    		System.out.println(resetPasswordLink);
	    		
	    		return "forgot-password-confirmation";
	    	} else {
	    		model.addAttribute("error", "Could not find any User with the email " + email);
	    	}
		} catch (UnsupportedEncodingException | MessagingException e) {
	        model.addAttribute("error", "Error while sending email");
	    }
		
		return "forgot-password";
	}
	
	@RequestMapping(value = "/resetPassword", method = RequestMethod.GET)
	public String showResetPassword(@RequestParam(value = "token") String token, Model model) {
		System.out.println(token);
		
		UserDto userDto = (UserDto) userService.getByResetTokenPassword(token);
		model.addAttribute("token", token);
		
		if (userDto == null) {
			model.addAttribute("title", "Request for Reset Password Not Found");
			model.addAttribute("error", "Invalid Token. Please try to send email again.");
			return "reset-password-message";
		}
		
		return "reset-password-form";
	}
	
	@RequestMapping(value = "/savePassword", method = RequestMethod.POST)
	public String savePassword(HttpServletRequest request, Model model) {
		
	    String token = request.getParameter("token");
	    String password = request.getParameter("pass1");
	    
		UserDto userDto = (UserDto) userService.getByResetTokenPassword(token);
		
		if (userDto == null) {
			model.addAttribute("title", "Request for Reset Password Not Found");
			model.addAttribute("error", "Invalid Token. Please try to send email again.");
			return "reset-password-message";
		} else {
			userDto.setPassword(password);
			userDto.getEmailId();
			userService.resetPassword(userDto);
			model.addAttribute("title", "Reset Password Complete");
			model.addAttribute("msg", "You have succesfully change your password.");
		}
		
		return "reset-password-message";
	}
	
}
