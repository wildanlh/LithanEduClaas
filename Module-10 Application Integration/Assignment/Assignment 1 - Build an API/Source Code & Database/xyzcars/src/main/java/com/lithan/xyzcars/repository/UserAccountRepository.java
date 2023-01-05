package com.lithan.xyzcars.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.lithan.xyzcars.entity.UserAccount;

public interface UserAccountRepository extends JpaRepository<UserAccount, Integer> {

  public UserAccount findByUsername(String username);
}

