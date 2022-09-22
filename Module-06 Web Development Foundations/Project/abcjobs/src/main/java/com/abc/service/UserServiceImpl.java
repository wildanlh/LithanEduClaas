package com.abc.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.abc.model.User;
import com.abc.model.UserDto;
import com.abc.repository.UserDtoRepository;
import com.abc.repository.UserRepository;

@Service
public class UserServiceImpl implements UserService {

	@Autowired
	private UserRepository userRepo;
	
	@Autowired
	private UserDtoRepository userDtoRepo;

	public User register(User user) {
		return userRepo.save(user);
	}

	public List<User> showAllUsers() {
		return userRepo.findAll();
	}

	
	public User findUserById(int id) {
		return userRepo.findByUserID(id);
	}

	public void updateUser(User user) {
		User newUser = userRepo.findByUserID(user.getUserID());
		newUser.setFirstName(user.getFirstName());
		newUser.setLastName(user.getLastName());
		newUser.setEmail(user.getEmail());
		newUser.setPass(user.getPass());
		newUser.setCountry(user.getCountry());
		newUser.setCity(user.getCity());
		newUser.setPhone(user.getPhone());
		newUser.setCompany(user.getCompany());
		userRepo.save(newUser);
	}

	
	public Integer deleteUser(Integer id) {
		return userRepo.deleteByUserID(id);
	}

	
	public List<User> searchUser(String inp) {
		List<User> users = userRepo.SearchUserByInput(inp);
		return users;
	}

	public User loginUser(UserDto loginDto) {
		User user = userRepo.findByEmailAndPass(loginDto.getEmailId(), loginDto.getPassword());
		System.out.println(user);
		if (user == null) {
			return null;
		}
		return user;
	}

	public void updateProfile(User user) {
		User newUser = userRepo.findByUserID(user.getUserID());
		newUser.setFirstName(user.getFirstName());
		newUser.setLastName(user.getLastName());
		newUser.setCountry(user.getCountry());
		newUser.setCity(user.getCity());
		newUser.setPhone(user.getPhone());
		newUser.setCompany(user.getCompany());
		userRepo.save(newUser);
	}

	public void resetPassword(UserDto userDto) {
		User user = userRepo.findByEmail(userDto.getEmailId());
		user.setPass(userDto.getPassword());
		userRepo.save(user);
	}

	public UserDto findByEmailId(String email) {
		return userDtoRepo.findByEmailId(email);
	}
	
	public User findByEmail (String email) {
		User user = userRepo.findByEmail(email);
		if (user == null) {
			return null;
		}
		
		return user;
	}

	public void updateResetTokenPassword(UserDto userDto) {
		User user = userRepo.findByEmail(userDto.getEmailId());
		user.setResetPasswordToken(userDto.getResetPasswordToken());
		userRepo.save(user);
	}

	public UserDto getByResetTokenPassword(String token) {
		return userDtoRepo.findByResetPasswordToken(token);
	}

}
