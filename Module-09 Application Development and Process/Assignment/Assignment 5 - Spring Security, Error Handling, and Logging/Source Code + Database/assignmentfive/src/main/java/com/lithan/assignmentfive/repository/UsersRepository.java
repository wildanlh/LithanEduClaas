package com.lithan.assignmentfive.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.lithan.assignmentfive.entity.Users;

@Repository
public interface UsersRepository extends JpaRepository<Users, Integer> {

  public Users findByUsername(String username);
}
