package com.lithan.assignmentfive.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.lithan.assignmentfive.entity.Roles;

@Repository
public interface RolesRepository extends JpaRepository<Roles, Integer> {

  public Roles findByRole(String role);
}