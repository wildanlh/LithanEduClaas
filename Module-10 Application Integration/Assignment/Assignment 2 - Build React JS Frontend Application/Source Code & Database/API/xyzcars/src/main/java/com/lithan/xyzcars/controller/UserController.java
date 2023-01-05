package com.lithan.xyzcars.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.lithan.xyzcars.entity.UserAccount;
import com.lithan.xyzcars.model.LoginDto;
import com.lithan.xyzcars.repository.UserAccountRepository;
import com.lithan.xyzcars.service.UserService;

@RestController
@RequestMapping("/api/users")
public class UserController {
    @Autowired
    private UserService userService;

    @Autowired
    private UserAccountRepository userRepo;

    @GetMapping("/")
    public List<UserAccount> listUser() throws Exception {
        List<UserAccount> listUser = userService.listUser();
        return listUser;
    }

    @GetMapping("/{idUser}")
    public UserAccount getUser(@PathVariable("idUser") int idUser) throws Exception {
        UserAccount user = userService.getUserById(idUser);
        return user;
    }

    @GetMapping("/me")
    public LoginDto getLoginUser(Authentication authentication) {
        UserAccount user = userRepo.findByUsername(authentication.getName());

        return new LoginDto(user);
    }
}
