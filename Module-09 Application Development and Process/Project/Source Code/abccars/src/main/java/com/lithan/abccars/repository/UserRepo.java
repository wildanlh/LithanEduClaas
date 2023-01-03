package com.lithan.abccars.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.lithan.abccars.entity.Users;

@Repository
public interface UserRepo extends JpaRepository<Users, Long>{
	
	public Users findByUserName(String userName);
}
