package com.abc.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.abc.bean.LoginBean;

@Repository
public interface LoginRepository extends JpaRepository<LoginBean, Integer>{

	LoginBean findByEmail(String email);
}
