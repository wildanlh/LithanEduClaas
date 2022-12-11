package com.lithan.assignmentfive.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.lithan.assignmentfive.entity.Users;

@Controller
public class SecurityController {

  @GetMapping("/login")
  public String loginPage(Model model) {
    Users user = new Users();

    model.addAttribute("user", user);

    return "login";
  }
}