package com.lithan.xyzcars.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.lithan.xyzcars.entity.UserAccount;
import com.lithan.xyzcars.repository.UserAccountRepository;

@Service
public class UserServiceImpl implements UserService {

  @Autowired
  private UserAccountRepository userRepo;

  @Override
  public UserAccount getUserById(int idUser) {
    UserAccount user = userRepo.findById(idUser).get();
    return user;
  }

  @Override
  public List<UserAccount> listUser() {
    List<UserAccount> listUser = userRepo.findAll();
    return listUser;
  }

}
