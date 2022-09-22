package com.abc.service;

import java.util.List;

import com.abc.model.User;
import com.abc.model.UserDto;

public interface UserService {
	
	public User register(User user);
	
	public List<User> showAllUsers();
	
	public User findUserById(int id);
	
	public void updateUser(User user);
	
	public Integer deleteUser(Integer id);
	
	public List<User> searchUser(String inp);
	
	public User loginUser(UserDto loginDto);

	public void updateProfile(User user);
	
	public void resetPassword(UserDto userDto);
	
	public UserDto findByEmailId (String email);
	
	public User findByEmail (String email);

	public void updateResetTokenPassword(UserDto userDto);
	
	public UserDto getByResetTokenPassword(String token);
	
	
}
