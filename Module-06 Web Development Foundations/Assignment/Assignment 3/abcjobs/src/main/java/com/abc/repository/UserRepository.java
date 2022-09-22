package com.abc.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.abc.bean.UserBean;

@Repository
public interface UserRepository extends JpaRepository<UserBean, Integer>{

}
