package com.abc.service;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.abc.bean.ProfileBean;
import com.abc.bean.LoginBean;
import com.abc.repository.ProfileRepository;
import com.abc.repository.LoginRepository;

@Service
@Transactional
public class LoginService {
	
	@Autowired
	LoginRepository userRepo;
	
	@Autowired
	ProfileRepository profileRepo;

	public LoginBean loadUserByEmail(String email) {
		LoginBean user = userRepo.findByEmail(email);
		return user;
	}
	
	public ProfileBean loadProfile(LoginBean user) {
		ProfileBean profile = user.getProfile();
		return profile;
	}
	
	public ProfileBean getCurrentUser(HttpSession session) {
		ProfileBean profile = (ProfileBean) session.getAttribute("profile");
		if(profile != null) {
			System.out.println("User " + profile.getFirst_name());
		}
		return profile;
	}

}
