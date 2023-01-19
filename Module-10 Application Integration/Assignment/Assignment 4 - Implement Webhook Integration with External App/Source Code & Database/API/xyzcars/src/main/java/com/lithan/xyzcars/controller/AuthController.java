package com.lithan.xyzcars.controller;

import java.net.URI;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.security.authentication.AuthenticationManager;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.support.ServletUriComponentsBuilder;

import com.lithan.xyzcars.entity.AuthProvider;
import com.lithan.xyzcars.entity.UserAccount;
import com.lithan.xyzcars.models.ApiResponse;
import com.lithan.xyzcars.models.AuthResponse;
import com.lithan.xyzcars.models.LoginDto;
import com.lithan.xyzcars.models.RegisterDto;
import com.lithan.xyzcars.repository.UserAccountRepository;
import com.lithan.xyzcars.security.JWTGenerator;

@RestController
@RequestMapping("/api/auth")
public class AuthController {

  @Autowired
  private PasswordEncoder passwordEncoder;

  @Autowired
  private UserAccountRepository userRepo;

  @Autowired
  private JWTGenerator jwtGenerator;

  @Autowired
  private AuthenticationManager authenticationManager;

  // Login
  @PostMapping("login")
  public ResponseEntity<AuthResponse> login(@Valid @RequestBody LoginDto loginDto) {
    Authentication authentication = authenticationManager.authenticate(
        new UsernamePasswordAuthenticationToken(
            loginDto.getEmail(),
            loginDto.getPassword()));

    SecurityContextHolder.getContext().setAuthentication(authentication);
    String token = jwtGenerator.generateToken(authentication);
    return new ResponseEntity<>(new AuthResponse(token), HttpStatus.OK);
  }

  // Register
  @PostMapping("register")
  public ResponseEntity<?> addUser(@Valid @RequestBody RegisterDto registerDto) throws Exception {

    if (userRepo.existsByEmail(registerDto.getEmail())) {
      return new ResponseEntity<>("Email is taken!", HttpStatus.BAD_REQUEST);
    }

    UserAccount user = new UserAccount();
    user.setName(registerDto.getName());
    user.setEmail(registerDto.getEmail());
    user.setPassword(passwordEncoder.encode(registerDto.getPassword()));
    user.setProvider(AuthProvider.local);

    UserAccount newUser = userRepo.save(user);

    URI location = ServletUriComponentsBuilder
        .fromCurrentContextPath().path("api/users/me")
        .buildAndExpand(newUser.getIdUser()).toUri();

    return ResponseEntity.created(location)
        .body(new ApiResponse(true, "User registered successfully@"));

  }
}
