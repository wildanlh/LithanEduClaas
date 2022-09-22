package com.abc.dao;

import java.util.List;

import com.abc.model.User;
import com.abc.model.UserDto;

public interface UserDao {

	public int register(User user);

	public List<User> showAllUsers();
	
	public List<User> findUserById(int id);
	
	public int updateUser(User user);
	
	public int deleteUser(int id);
	
	public List<User> searchUser(String inp);
	
	public User login(UserDto loginDto);
	
	public int updateProfile(User user);
	
	public int resetPassword(UserDto userDto);
	
	public UserDto findByEmail (String email);
	
	public int resetTokenPassword(UserDto userDto);
	
	public UserDto findByResetTokenPassword(String token);

}
