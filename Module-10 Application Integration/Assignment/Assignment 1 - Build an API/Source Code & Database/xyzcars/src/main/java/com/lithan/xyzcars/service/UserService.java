package com.lithan.xyzcars.service;

import java.util.List;

import com.lithan.xyzcars.entity.UserAccount;

public interface UserService {
	List<UserAccount> listUser() throws Exception;

	UserAccount getUserById(int idUser) throws Exception;

	UserAccount addUser(UserAccount user) throws Exception;
}
