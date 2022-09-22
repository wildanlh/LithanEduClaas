package com.abc.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class WebAppController {

	/*
	 * for mapping he homepage url
	 * */
	@RequestMapping("/homepage")
	public String toHome(){
		return "homepage";
	}
	
	@RequestMapping("/thankyou")
	public String toThanks(){
		return "thankyou";
	}
	
	@RequestMapping("/")
	public String toLanding(){
		return "home";
	}
	
	@RequestMapping("/search-user")
	public String toSearch(){
		return "search-user";
	}
	
}
