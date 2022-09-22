package com.abc.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.abc.bean.ProfileBean;
import com.abc.repository.ProfileRepository;

@Service
@Transactional
public class ProfileService {

	@Autowired
	ProfileRepository profileRepo;
	
	public ProfileBean getProfileById(int id) {
		return profileRepo.findById(id).get();
	}
	
	public ProfileBean saveEdit(ProfileBean logProfile) {
		ProfileBean profile = getProfileById(logProfile.getProfile_id());
		
		profile.setFirst_name(logProfile.getFirst_name());
		profile.setLast_name(logProfile.getLast_name());
		profile.setCity(logProfile.getCity());
		profile.setCountry(logProfile.getCountry());
		
		profileRepo.save(profile);
		
		return profile;
	}
}
