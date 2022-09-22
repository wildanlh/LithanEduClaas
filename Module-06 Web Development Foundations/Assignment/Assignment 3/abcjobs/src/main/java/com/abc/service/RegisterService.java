package com.abc.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.abc.bean.RegisterBean;
import com.abc.bean.UserBean;
import com.abc.repository.RegisterRepository;

@Service
@Transactional
public class RegisterService {
	
	@Autowired
	RegisterRepository profileRepo;
	
	public void saveRegister(UserBean regUser) {
		UserBean user = new UserBean();
		RegisterBean profile = new RegisterBean();
		
		UserBean userRegister = new UserBean(regUser.getEmail(), regUser.getPassword(), profile);
		RegisterBean userProfile = new RegisterBean(user, 
				regUser.getProfile().getFirst_name(), 
				regUser.getProfile().getLast_name(),
				regUser.getProfile().getCity(),
				regUser.getProfile().getCountry());
				
		
		userRegister.setProfile(userProfile);
		userProfile.setUser(userRegister);
		
		profileRepo.save(userProfile);
	}
	
}
